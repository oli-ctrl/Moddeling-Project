﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using System.IO;
using Qosmetics.Core;
[CustomEditor(typeof(Qosmetics.Walls.Box))]
public class BoxEditor : Editor
{
    public static string Extension { get => "box"; }
    bool packageSettingsOpened = true;
    bool objectSettingsOpened = true;
    bool thumbnailSettingsOpened = true;
    QosmeticsProjectSettings _projectSettings = null;
    public override void OnInspectorGUI()
    {
        if (!_projectSettings)
        {
            _projectSettings = QosmeticsProjectSettings.GetOrCreateSettings();
        }

        serializedObject.Update();
        Qosmetics.Walls.Box box = target as Qosmetics.Walls.Box;

        GUILayout.BeginVertical();
        EditorGUILayout.LabelField("", GUI.skin.horizontalSlider);
        packageSettingsOpened = EditorGUILayout.Foldout(packageSettingsOpened, "Package Settings");
        if (packageSettingsOpened)
        {
            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.BeginVertical();
            
            ExporterUtils.ObservedStringField(box.ObjectName, "Name", newString => {
                UnityEditor.Undo.RecordObject(box, "Changed box name");
                box.ObjectName = newString;
                EditorSceneManager.MarkSceneDirty(box.gameObject.scene);
            });

            ExporterUtils.ObservedStringField(box.Author, "Author", newString => {
                UnityEditor.Undo.RecordObject(box, "Changed box author");
                box.Author = newString;
                EditorSceneManager.MarkSceneDirty(box.gameObject.scene);
            });

            ExporterUtils.ObservedStringField(box.Description, "Description", newString => {
                UnityEditor.Undo.RecordObject(box, "Changed box description");
                box.Description = newString;
                EditorSceneManager.MarkSceneDirty(box.gameObject.scene);
            });

            EditorGUILayout.EndVertical();
            EditorGUILayout.EndHorizontal();
        }
        EditorGUILayout.LabelField("", GUI.skin.horizontalSlider);

        // There are no object settings for whackers atm
        objectSettingsOpened = EditorGUILayout.Foldout(objectSettingsOpened, "Object Settings");
        if (objectSettingsOpened)
        {
            box.replaceCoreMaterial = EditorGUILayout.ToggleLeft("Replace Core Material", box.replaceCoreMaterial);
            box.replaceFrameMaterial = EditorGUILayout.ToggleLeft("Replace Frame Material", box.replaceFrameMaterial);
            box.replaceCoreMesh = EditorGUILayout.ToggleLeft("Replace Core Mesh", box.replaceCoreMesh);
            box.replaceFrameMesh = EditorGUILayout.ToggleLeft("Replace Frame Mesh", box.replaceFrameMesh);
            box.disableCore = EditorGUILayout.ToggleLeft("Disable Core", box.disableCore);
            box.disableFrame = EditorGUILayout.ToggleLeft("Disable Frame", box.disableFrame);
            box.disableFakeGlow = EditorGUILayout.ToggleLeft("Disable Fake Glow", box.disableFakeGlow);
        }
        EditorGUILayout.LabelField("", GUI.skin.horizontalSlider);
        thumbnailSettingsOpened = EditorGUILayout.Foldout(thumbnailSettingsOpened, "Thumbnail Selection");
        if (thumbnailSettingsOpened)
        {
            EditorGUILayout.BeginVertical("box");
            if (GUILayout.Button("Generate Thumbnail"))
            {
                var path = ExporterUtils.GenerateThumbnail();
                if (string.IsNullOrEmpty(path))
                {
                    EditorUtility.DisplayDialog("Thumbnail Generation failed", "Failed to properly generate thumbnail", "OK");
                }
                else
                    box.Thumbnail = AssetDatabase.LoadMainAssetAtPath(path) as Texture2D;
            }

            ExporterUtils.ObservedObjectField<Texture2D>(box.Thumbnail, "Thumbnail", false, newTexture => { 
                UnityEditor.Undo.RecordObject(box, "Changed box thumbnail");
                box.Thumbnail = newTexture;
                EditorSceneManager.MarkSceneDirty(box.gameObject.scene);
            });

            EditorGUILayout.EndVertical();
        }

        EditorGUILayout.LabelField("", GUI.skin.horizontalSlider);
        string validationString = box.ValidateObject();
        if (string.IsNullOrEmpty(validationString))
        {

            if (GUILayout.Button($"Export {box.GetType().Name}"))
            {
                Export(box);
            }

            if (_projectSettings.AllowPushToQuest && _projectSettings.IsAdbValid() && GUILayout.Button($"Push {box.GetType().Name} To Quest"))
            {
                string path = Export(box);
                if (!string.IsNullOrEmpty(path))
                    Qosmetics.Core.AdbUtils.Push(path, $"/sdcard/ModData/com.beatgames.beatsaber/Mods/Qosmetics/Boxes/{Path.GetFileName(path)}");
            }
        }
        else
        {
            EditorGUILayout.LabelField("Your box is improperly made!", GUI.skin.button);
            EditorGUILayout.LabelField(validationString, GUI.skin.button);
        }

        EditorGUILayout.LabelField("", GUI.skin.horizontalSlider);
        GUILayout.EndVertical();
    }

    string Export(Qosmetics.Walls.Box box)
    {
        string exportName = _projectSettings.ExportFileName;
        exportName = exportName.Replace("{ObjectName}", box.ObjectName);
        exportName = exportName.Replace("{ObjectAuthor}", box.Author);
        exportName = exportName.Replace("{Extension}", Extension);

        string path = EditorUtility.SaveFilePanel($"Save {Extension} file", "", exportName, Extension);
        if (!string.IsNullOrEmpty(path)) Qosmetics.Core.ExporterUtils.ExportAsPrefabPackage(box.gameObject, $"_{box.GetType().Name}", path, box.Thumbnail);
        return path;
    }

}

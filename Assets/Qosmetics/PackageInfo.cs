﻿using UnityEngine;
using Newtonsoft.Json;

namespace Qosmetics.Core
{
    public interface IExportable
    {
        PackageInfo PackageJson { get; }
        void OnExport();
    }

    [System.Serializable]
    public class PackageInfo
    {
        public string androidFileName = "_android";
        public string pcFileName = "_pc";
        public Descriptor descriptor = new Descriptor();
        public Config config;

        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }
    }

    [System.Serializable]
    public class Descriptor
    {
        public string objectName = "";
        public string author = "";
        public string description = "";
        public string coverImage = "thumbnail.png";
    }

    [System.Serializable]
    public class Config
    {

    }
}

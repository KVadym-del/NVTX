workspace "NVTX"
    architecture "x86_64"
    configurations { "Debug", "Release" }
    startproject "nvtx3-cpp"

    filter "configurations:Debug"
        symbols "On"
    filter "configurations:Release"
        optimize "On"
    filter {}

project "nvtx3-c"
    kind "StaticLib"
    language "C"
    staticruntime "On"
    targetdir    "lib/%{cfg.buildcfg}"
    objdir       "obj/%{cfg.buildcfg}/%{prj.name}"

    files { "c/*.h" }
    includedirs { "c" }

    filter "system:linux"
        links { "dl" }
    filter {}


project "nvtx3-cpp"
    kind "StaticLib"
    language "C++"
    staticruntime "On"
    targetdir    "lib/%{cfg.buildcfg}"
    objdir       "obj/%{cfg.buildcfg}/%{prj.name}"

    files { "c/nvtx3/**.h" }
    includedirs { "c" }

    links { "nvtx3-c" }

    filter "system:linux"
        links { "dl" }
    filter {}
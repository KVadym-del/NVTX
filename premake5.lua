project "NVTX"
    kind "None"
    language "C++"

    includedirs { "%{prj.location}/c/include" }

    files { 
        "%{prj.location}/c/include/nvtx3/**.hpp",
        "%{prj.location}/c/include/nvtx3/**.h",
    }
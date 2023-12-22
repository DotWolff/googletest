project "GoogleTest"

    kind "StaticLib"

    language "C"

    files {
        "src/gtest-all.cc"
    }

    includedirs {
        "include",
        "."
    }

    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
        defines "DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "RELEASE"
        runtime "Release"
        optimize "on"

    filter "configurations:Testing"
        defines "TESTING"
        runtime "Debug"
        symbols "on"
        
    filter "configurations:Dist"
        defines "DIST"
        runtime "Release"
        optimize "on"

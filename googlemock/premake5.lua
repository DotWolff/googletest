project "GoogleMock"

    kind "StaticLib"

    language "C"

    files {
        "src/gmock-all.cc"
    }

    includedirs {
        "include",
        ".",
        "../googletest/include",
        "../googletest/"
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

    filter "configurations:TestingDebug"
        defines "DUSK_TESTING"
        runtime "Debug"
        symbols "on"

    filter "configurations:TestingRelease"
        defines "DUSK_TESTING"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        defines "DIST"
        runtime "Release"
        optimize "on"

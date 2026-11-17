project "ImGui"
    kind "StaticLib"
    language "C++"
    staticruntime "On"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

    files
    {
        "*.h",
        "*.cpp",

        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp",

        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp"
    }

    includedirs
    {
        ".",
        "backends",
        "../GLFW/include"
    }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
        pic "On"

    filter {}
cmake_minimum_required(VERSION 3.5)
project(hello_c_nappgui)
find_package(nappgui REQUIRED)
include("${NAPPGUI_ROOT_PATH}/prj/NAppProject.cmake")
include("${NAPPGUI_ROOT_PATH}/prj/NAppCompilers.cmake")

message (STATUS "---------------------------------------------")
message (STATUS "cello c nappgui")
message (STATUS "info@myridia.com")
message (STATUS "GNU GENERAL PUBLIC License")
message(STATUS ${CMAKE_CXX_COMPILER_ID})
message (STATUS "---------------------------------------------")

#nap_check_webview_support()
#nap_build_opt_init()
nap_config_compiler()
nap_project_desktop_app(hello_c_nappgui src)



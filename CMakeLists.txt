cmake_minimum_required(VERSION 3.5)
project(hello_c_nappgui)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set(INSTALL_PERM "OWNER_READ;OWNER_WRITE;OWNER_EXECUTE;GROUP_READ;GROUP_EXECUTE;WORLD_READ;WORLD_EXECUTE")

set(CMAKE_CONFIGURATION_TYPES "Debug;Release;ReleaseWithAssert" CACHE INTERNAL "Configuration Types" FORCE)
set(CMAKE_CXX_FLAGS_RELEASEWITHASSERT ${CMAKE_CXX_FLAGS_RELEASE})
set(CMAKE_C_FLAGS_RELEASEWITHASSERT ${CMAKE_C_FLAGS_RELEASE})
set(CMAKE_EXE_LINKER_FLAGS_RELEASEWITHASSERT ${CMAKE_EXE_LINKER_FLAGS_RELEASE})
set(CMAKE_SHARED_LINKER_FLAGS_RELEASEWITHASSERT ${CMAKE_SHARED_LINKER_FLAGS_RELEASE})

find_package(nappgui REQUIRED)
include("${NAPPGUI_ROOT_PATH}/prj/NAppProject.cmake")
include("${NAPPGUI_ROOT_PATH}/prj/NAppCompilers.cmake")
include("${NAPPGUI_ROOT_PATH}/prj/NAppUtils.cmake")
include("${NAPPGUI_ROOT_PATH}/prj/NAppTarget.cmake")
message (STATUS "---------------------------------------------")
message (STATUS "cello c nappgui")
message (STATUS "info@myridia.com")
message (STATUS "GNU GENERAL PUBLIC License")
message(STATUS ${CMAKE_CXX_COMPILER_ID})
message (STATUS "---------------------------------------------")

#nap_check_webview_support()
#nap_build_opt_init()
nap_config_compiler()
nap_project_desktop_app(hello_c_nappgui dist/)



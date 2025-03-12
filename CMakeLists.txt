#nap_desktop_app(HelloWorld "osapp" NRC_NONE)
#set_target_properties(HelloWorld PROPERTIES FOLDER "demo")

cmake_minimum_required(VERSION 3.25.1)
project(hello_c_nappgui LANGUAGES C)
add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE main.c)
target_compile_features(${PROJECT_NAME} PRIVATE c_std_17)




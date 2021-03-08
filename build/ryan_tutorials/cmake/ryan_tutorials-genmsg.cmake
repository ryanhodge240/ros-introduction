# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ryan_tutorials: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iryan_tutorials:/home/ubuntu/ros_ws/src/ryan_tutorials/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ryan_tutorials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg" NAME_WE)
add_custom_target(_ryan_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ryan_tutorials" "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg" ""
)

get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg" NAME_WE)
add_custom_target(_ryan_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ryan_tutorials" "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ryan_tutorials
)
_generate_msg_cpp(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ryan_tutorials
)

### Generating Services

### Generating Module File
_generate_module_cpp(ryan_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ryan_tutorials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ryan_tutorials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ryan_tutorials_generate_messages ryan_tutorials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_cpp _ryan_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_cpp _ryan_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ryan_tutorials_gencpp)
add_dependencies(ryan_tutorials_gencpp ryan_tutorials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ryan_tutorials_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ryan_tutorials
)
_generate_msg_eus(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ryan_tutorials
)

### Generating Services

### Generating Module File
_generate_module_eus(ryan_tutorials
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ryan_tutorials
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ryan_tutorials_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ryan_tutorials_generate_messages ryan_tutorials_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_eus _ryan_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_eus _ryan_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ryan_tutorials_geneus)
add_dependencies(ryan_tutorials_geneus ryan_tutorials_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ryan_tutorials_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ryan_tutorials
)
_generate_msg_lisp(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ryan_tutorials
)

### Generating Services

### Generating Module File
_generate_module_lisp(ryan_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ryan_tutorials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ryan_tutorials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ryan_tutorials_generate_messages ryan_tutorials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_lisp _ryan_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_lisp _ryan_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ryan_tutorials_genlisp)
add_dependencies(ryan_tutorials_genlisp ryan_tutorials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ryan_tutorials_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ryan_tutorials
)
_generate_msg_nodejs(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ryan_tutorials
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ryan_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ryan_tutorials
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ryan_tutorials_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ryan_tutorials_generate_messages ryan_tutorials_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_nodejs _ryan_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_nodejs _ryan_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ryan_tutorials_gennodejs)
add_dependencies(ryan_tutorials_gennodejs ryan_tutorials_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ryan_tutorials_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ryan_tutorials
)
_generate_msg_py(ryan_tutorials
  "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ryan_tutorials
)

### Generating Services

### Generating Module File
_generate_module_py(ryan_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ryan_tutorials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ryan_tutorials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ryan_tutorials_generate_messages ryan_tutorials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_py _ryan_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_ws/src/ryan_tutorials/msg/Person.msg" NAME_WE)
add_dependencies(ryan_tutorials_generate_messages_py _ryan_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ryan_tutorials_genpy)
add_dependencies(ryan_tutorials_genpy ryan_tutorials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ryan_tutorials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ryan_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ryan_tutorials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ryan_tutorials_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ryan_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ryan_tutorials
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ryan_tutorials_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ryan_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ryan_tutorials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ryan_tutorials_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ryan_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ryan_tutorials
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ryan_tutorials_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ryan_tutorials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ryan_tutorials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ryan_tutorials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ryan_tutorials_generate_messages_py std_msgs_generate_messages_py)
endif()

# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tianbot/tianbot_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tianbot/tianbot_ws/build

# Include any dependencies generated for this target.
include ros_astra_camera/CMakeFiles/camera_node.dir/depend.make

# Include the progress variables for this target.
include ros_astra_camera/CMakeFiles/camera_node.dir/progress.make

# Include the compile flags for this target's objects.
include ros_astra_camera/CMakeFiles/camera_node.dir/flags.make

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o: ros_astra_camera/CMakeFiles/camera_node.dir/flags.make
ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o: /home/tianbot/tianbot_ws/src/ros_astra_camera/src/libuvc_camera/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tianbot/tianbot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o"
	cd /home/tianbot/tianbot_ws/build/ros_astra_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o -c /home/tianbot/tianbot_ws/src/ros_astra_camera/src/libuvc_camera/main.cpp

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.i"
	cd /home/tianbot/tianbot_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tianbot/tianbot_ws/src/ros_astra_camera/src/libuvc_camera/main.cpp > CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.i

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.s"
	cd /home/tianbot/tianbot_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tianbot/tianbot_ws/src/ros_astra_camera/src/libuvc_camera/main.cpp -o CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.s

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o.requires:

.PHONY : ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o.requires

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o.provides: ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o.requires
	$(MAKE) -f ros_astra_camera/CMakeFiles/camera_node.dir/build.make ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o.provides.build
.PHONY : ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o.provides

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o.provides.build: ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o


ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o: ros_astra_camera/CMakeFiles/camera_node.dir/flags.make
ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o: /home/tianbot/tianbot_ws/src/ros_astra_camera/src/libuvc_camera/camera_driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tianbot/tianbot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o"
	cd /home/tianbot/tianbot_ws/build/ros_astra_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o -c /home/tianbot/tianbot_ws/src/ros_astra_camera/src/libuvc_camera/camera_driver.cpp

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.i"
	cd /home/tianbot/tianbot_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tianbot/tianbot_ws/src/ros_astra_camera/src/libuvc_camera/camera_driver.cpp > CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.i

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.s"
	cd /home/tianbot/tianbot_ws/build/ros_astra_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tianbot/tianbot_ws/src/ros_astra_camera/src/libuvc_camera/camera_driver.cpp -o CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.s

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o.requires:

.PHONY : ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o.requires

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o.provides: ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o.requires
	$(MAKE) -f ros_astra_camera/CMakeFiles/camera_node.dir/build.make ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o.provides.build
.PHONY : ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o.provides

ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o.provides.build: ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o


# Object files for target camera_node
camera_node_OBJECTS = \
"CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o" \
"CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o"

# External object files for target camera_node
camera_node_EXTERNAL_OBJECTS =

/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: ros_astra_camera/CMakeFiles/camera_node.dir/build.make
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/aarch64-linux-gnu/libuvc.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libcamera_info_manager.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libcamera_calibration_parsers.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libimage_transport.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libnodeletlib.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libbondcpp.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libclass_loader.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/libPocoFoundation.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libdl.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libroslib.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librospack.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libroscpp.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librosconsole.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librostime.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libcpp_common.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libcamera_info_manager.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libcamera_calibration_parsers.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libimage_transport.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libnodeletlib.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libbondcpp.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libclass_loader.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/libPocoFoundation.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libdl.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libroslib.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librospack.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libroscpp.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librosconsole.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/librostime.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /opt/ros/melodic/lib/libcpp_common.so
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node: ros_astra_camera/CMakeFiles/camera_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tianbot/tianbot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node"
	cd /home/tianbot/tianbot_ws/build/ros_astra_camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camera_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_astra_camera/CMakeFiles/camera_node.dir/build: /home/tianbot/tianbot_ws/devel/lib/astra_camera/camera_node

.PHONY : ros_astra_camera/CMakeFiles/camera_node.dir/build

ros_astra_camera/CMakeFiles/camera_node.dir/requires: ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/main.cpp.o.requires
ros_astra_camera/CMakeFiles/camera_node.dir/requires: ros_astra_camera/CMakeFiles/camera_node.dir/src/libuvc_camera/camera_driver.cpp.o.requires

.PHONY : ros_astra_camera/CMakeFiles/camera_node.dir/requires

ros_astra_camera/CMakeFiles/camera_node.dir/clean:
	cd /home/tianbot/tianbot_ws/build/ros_astra_camera && $(CMAKE_COMMAND) -P CMakeFiles/camera_node.dir/cmake_clean.cmake
.PHONY : ros_astra_camera/CMakeFiles/camera_node.dir/clean

ros_astra_camera/CMakeFiles/camera_node.dir/depend:
	cd /home/tianbot/tianbot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tianbot/tianbot_ws/src /home/tianbot/tianbot_ws/src/ros_astra_camera /home/tianbot/tianbot_ws/build /home/tianbot/tianbot_ws/build/ros_astra_camera /home/tianbot/tianbot_ws/build/ros_astra_camera/CMakeFiles/camera_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_astra_camera/CMakeFiles/camera_node.dir/depend


execute_process(COMMAND "/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/build/tianbot_racecar/racecar_gps/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/build/tianbot_racecar/racecar_gps/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

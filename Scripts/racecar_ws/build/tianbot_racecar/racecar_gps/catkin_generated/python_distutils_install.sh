#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/src/tianbot_racecar/racecar_gps"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/install/lib/python2.7/dist-packages:/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/build" \
    "/usr/bin/python" \
    "/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/src/tianbot_racecar/racecar_gps/setup.py" \
    build --build-base "/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/build/tianbot_racecar/racecar_gps" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/install" --install-scripts="/home/haoyejia/Give-the-Blind-an-Elephant-in-the-Room/Scripts/racecar_ws/install/bin"

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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/navaphat/WorkSpace/catkin_test/src/Sensor-Stick/sensor_stick"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/navaphat/WorkSpace/catkin_test/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/navaphat/WorkSpace/catkin_test/install/lib/python3/dist-packages:/home/navaphat/WorkSpace/catkin_test/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/navaphat/WorkSpace/catkin_test/build" \
    "/usr/bin/python3" \
    "/home/navaphat/WorkSpace/catkin_test/src/Sensor-Stick/sensor_stick/setup.py" \
     \
    build --build-base "/home/navaphat/WorkSpace/catkin_test/build/Sensor-Stick/sensor_stick" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/navaphat/WorkSpace/catkin_test/install" --install-scripts="/home/navaphat/WorkSpace/catkin_test/install/bin"

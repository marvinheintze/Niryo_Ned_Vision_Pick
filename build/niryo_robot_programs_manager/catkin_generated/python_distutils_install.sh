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

echo_and_run cd "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_programs_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ned/catkin_ws_niryo_ned/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ned/catkin_ws_niryo_ned/install/lib/python2.7/dist-packages:/home/ned/catkin_ws_niryo_ned/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ned/catkin_ws_niryo_ned/build" \
    "/usr/bin/python2" \
    "/home/ned/catkin_ws_niryo_ned/src/niryo_robot_programs_manager/setup.py" \
     \
    build --build-base "/home/ned/catkin_ws_niryo_ned/build/niryo_robot_programs_manager" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ned/catkin_ws_niryo_ned/install" --install-scripts="/home/ned/catkin_ws_niryo_ned/install/bin"

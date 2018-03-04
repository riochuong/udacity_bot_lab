killall python
ps -A | grep gz | awk '{print $1}' | xargs kill -9
ps -A | grep ros | awk '{print $1}' | xargs kill -9
ps -A | grep rviz | awk '{print $1}' | xargs kill -9
killall rviz
roslaunch udacity_bot udacity_world.launch &
rosrun rviz rviz -d /home/robond/catkin_ws/src/udacity_bot/launch/Rvizconfig.rviz &
sleep 5
roslaunch udacity_bot amcl.launch &




roslaunch nao_bringup nao_full.launch nao_ip:=10.18.12.56 network_interface:=wlan0


simulation
roslaunch gazebo_naoqi_control nao_gazebo.launch

roslaunch naoqi_driver naoqi_driver.launch network_interface:=wlan0



behaviors
python behaviors.py 10.18.12.56
rostopic pub -1 /nao_behavior/run_behavior std_msgs/String -- 'System/animations/Stand/Emotions/Neutral/Hello_1'






RVIZ
http://wiki.ros.org/nao/Tutorials/Getting-Started
rosrun nao.launch
rosrun rviz rviz -d ~/catkin_ws/src/nao_robot/nao_description/config/urdf.rviz


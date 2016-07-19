LAUNCH GAZEBO SIMULATION
roslaunch gazebo_naoqi_control nao_gazebo.launch



Everything launched from the code folder

Behaviors
python behaviors.py 10.18.12.56 (Robot IP)
rostopic pub -1 /nao_behavior/run_behavior std_msgs/String -- 'System/animations/Stand/Emotions/Neutral/Hello_1'



RVIZ Display
http://wiki.ros.org/nao/Tutorials/Getting-Started
rosrun nao.launch nao_ip:= 10.18.12.56

rosrun rviz rviz -d ~/catkin_ws/src/nao_robot/nao_description/config/urdf.rviz




Notes
roslaunch nao_bringup nao_full.launch nao_ip:=10.18.12.56 network_interface:=wlan0

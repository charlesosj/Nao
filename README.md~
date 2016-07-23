



Everything launched from the code folder

Behaviors.py
when run robot will stand up and  enable all joints.. on exit will sit down and disable joints
python behaviors.py 10.18.12.56 (Robot IP)
rostopic pub -1 /nao_behavior/run_behavior std_msgs/String -- 'System/animations/Stand/Emotions/Neutral/Hello_1'



RVIZ Display
http://wiki.ros.org/nao/Tutorials/Getting-Started
1.rosrun nao.launch nao_ip:= 10.18.12.56
2.rosrun rviz rviz -d ~/catkin_ws/src/nao_robot/nao_description/config/urdf.rviz


Notes
can use choreograph to wake up and make the Nao sit down but you can also call the following after nao.launch is called to enable and disable stiffness (behaviors.py does this for you too'

rosservice call /body_stiffness/disable "{}"
rosservice call /body_stiffness/enable "{}"



MY notes
roslaunch nao_bringup nao_full.launch nao_ip:=10.18.12.56 network_interface:=wlan0

LAUNCH GAZEBO SIMULATION
roslaunch gazebo_naoqi_control nao_gazebo.launch

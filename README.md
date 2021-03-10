# Intro to ROS
The purpose of this repository is to create increasingly complicated ROS packages as to understand how to use it. The order of packages is as follows:  
  
  1. servo_control
  2. keyboard_servo_control
  3. toy_car

Within each package, the directories are laid out in the following way:  
```
package_name
│   README.md
│   CMakeLists.txt
│   package.xml
│
└───config
│   │   physical_parameters.yaml
│
└───launch
│   │   ros_launch_file.launch
│
└───msg
│   │   ros_msgs.msg
│
└───src
    │   python_source_files.py
```

The `CMakeLists.txt` & `package.xml` files are used to tell ROS which packages it should include in the project.<br><br>
In the `config` directory lies the parameters of certain parts. For example, it will contain which pin of the Raspberry Pi a sensor should be connected to (using BOARD mode normally).<br><br>
The `launch` directory contains the launch file(s) of which can be used to run the package. Thesse launch files start off very simply.<br><br>
The `msg` directory includes the user-defined message definitions used in the `src` directory python files.<br><br>
Finally, the `src` directory conatins the brains of the package. These python files are what uses the ros messages and initializes all the nodes. <br><br>

## Instructions
Clone this repository, cd into ros_ws, and build the workspace.
```Shell
git clone https://github.com/ryanhodge240/ros_ws.git
cd ros_ws
catkin_make
```
Then, source the setup.sh file
```Shell
source devel/setup.sh
```
Finally, install a package that will be used for some of the packages in this repository where `<distro>` should be replaced with your ros distribution (i.e. noetic). 
```Shell
sudo apt-get install ros-<distro>-teleop-twist-keyboard
```

## Servo Control
This package is designed to rotate a servo to a certain position when a button is pushed, and then rotate back once to button is released. To run it, all you need to do is run the launch file after sourcing the setup.sh file. 
```Shell
source devel/setup.sh
roslaunch servo_control servo.launch
```

## Keyboard Servo Control
This package uses the teleop_twist_keyboard package to communicate with the standard geometry_msgs/Twist message. It publishes reading from the keyboard into the Twist message, of which the python file is subscribed to. To run this, you will need two separate terminals running. First, open a terminal and locate ros_ws. Source the setup.sh file and run the launch file. 
```Shell
source devel/setup.sh
roslaunch keyboard_servo_control servo.launch
```

Next, open up a new terminal and resource the workspace. Then run the teleop_twist_keyboard.
```Shell
rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```
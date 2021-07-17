#include "ros/ros.h"
#include "std_msgs/String.h"

void myCallback(const std_msgs::String::ConstPtr& msg)
{
    ROS_INFO("msg is : %s", msg->data.c_str());
}


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "listener");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("talker", 1000, myCallback);
    ros::spin();
    return 0;
}

#include "ros/ros.h"
#include "learning_communication/Person.h"


void myCallback(const learning_communication::Person::ConstPtr &msg)
{
    ROS_INFO("get custom msg: %s, %d", msg->name.c_str(), msg->age);
}
int main(int argc, char *argv[])
{
    ros::init(argc, argv, "c_listener");
    ros::NodeHandle n;
    ros::Subscriber suber = n.subscribe("c_puber", 1000, myCallback);
    ros::spin();
    return 0;
}

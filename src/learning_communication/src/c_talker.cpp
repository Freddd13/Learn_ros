#include "ros/ros.h"
#include <sstream>
#include "learning_communication/Person.h"


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "c_talker");
    ros::NodeHandle n;
    ros::Publisher puber = n.advertise<learning_communication::Person>("c_puber", 1000);
    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        learning_communication::Person msg;
        msg.name = "Fred!";
        msg.age = 23;
        puber.publish(msg);
        ROS_INFO("publish msg: %s %d", msg.name.c_str(), msg.age);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}

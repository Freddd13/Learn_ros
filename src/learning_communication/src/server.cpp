#include "ros/ros.h"
#include "learning_communication/Addnums.h"

bool myCallback(learning_communication::Addnums::Request &req,
        learning_communication::Addnums::Response &res)
{
    res.c = req.a + req.b;
    ROS_INFO("client request a = %ld, b = %ld", (long int)req.a, (long int)req.b);
    ROS_INFO("return c = %ld", (long int)res.c);
    return true;
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "service");
    ros::NodeHandle n;
    ros::ServiceServer server = n.advertiseService("server", myCallback);
    ROS_INFO("Ready to response");
    ros::spin();
    return 0;
}

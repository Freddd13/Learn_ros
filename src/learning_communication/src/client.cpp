#include "ros/ros.h"
#include "learning_communication/Addnums.h"
#include <cstdlib>


int main(int argc, char *argv[])
{
    if (argc != 3)
    {
        ROS_INFO("need two params a and b!");
        return -1;
    }

    ros::init(argc, argv, "client");
    ros::NodeHandle n;
    ros::service::waitForService("server");
    ros::ServiceClient client = n.serviceClient<learning_communication::Addnums>("server");
    learning_communication::Addnums srv;
    srv.request.a = atoll(argv[1]);
    srv.request.b = atoll(argv[2]);
    ROS_INFO("%ld, %ld", srv.request.a, srv.request.b);
    if(client.call(srv))
    {
        ROS_INFO("get result from server: c = %ld", srv.response.c);
    }
    else
    {
        ROS_ERROR("Failed to call service!!!");
        return -1;
    }
    return 0;
}

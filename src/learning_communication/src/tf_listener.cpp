#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>


int main(int argc, char *argv[])
{
    ros::init(argc, argv, "tf_listener");
    ros::NodeHandle n;
    // spawn turtle
    ros::service::waitForService("/spawn");
    ros::ServiceClient client = n.serviceClient<turtlesim::Spawn>("/spawn");
        // construct srv
    turtlesim::Spawn srv;
    if (client.call(srv))
    {
        ROS_INFO("call turtle success");
    }
    // tf listener
    tf::TransformListener listener;
    // turtle2 cmd publisher
    ros::Publisher turtle_vel_pub = n.advertise<geometry_msgs::Twist>("/turtle2/cmd_vel", 10);
    ros::Rate rate(10);

    while( ros::ok() )
    {
        tf::StampedTransform transform; // necessary
        try
        {
            listener.waitForTransform("/turtle2", "/turtle1", ros::Time(0), ros::Duration(3.));
            listener.lookupTransform("/turtle2", "/turtle1", ros::Time(0), transform);
        }
        catch(tf::TransformException &ex)
        {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }

        geometry_msgs::Twist vel_msg;
        vel_msg.angular.z = 4.0 * atan2(transform.getOrigin().y(), transform.getOrigin().x());
        vel_msg.linear.x = 0.5 * sqrt(pow(transform.getOrigin().x(), 2) + pow(transform.getOrigin().y(), 2));
        turtle_vel_pub.publish(vel_msg);

        rate.sleep();
    }
    return 0;
}

/*
    tf 监听程序 
    0、创建transform tf::StampedTransform transform，
       创建TF listener  ： tf::TransformListener listener;
    1、等待TF（阻塞） listener.waitForTransform("/turtle2", "/turtle1", ros::Time(0), ros::Duration(3.));
    2、查询TF   listener.lookupTransform("/turtle2", "/turtle1", ros::Time(0), transform);
                这里transform是用来写入的，所以在前面0创建了即可。（这个形参是一个引用，可以间接赋值）
            
    注意 lookuptransfrom 的try-catch是必要的：
    > https://blog.csdn.net/start_from_scratch/article/details/50762293
      由于tf的会把监听的内容存放到一个缓存中，然后再读取相关的内容，
      而这个过程可能会有几毫秒的延迟，也就是，tf的监听器并不能监听到“现在”的变换，所以如果不使用try,catch函数会导致报错：
      “world” passed to lookupTransform argument target_frame does not exist. ”
      并且会导致程序挂掉，使用try,catch之后就OK了。
*/


#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <turtlesim/Pose.h>

std::string turtle_name;

void myCallback(const turtlesim::PoseConstPtr &msg)
{
    static tf::TransformBroadcaster br;
    tf::Transform transform;
    transform.setOrigin( tf::Vector3(msg->x, msg->y, 0.) );
    tf::Quaternion q;
    q.setRPY(0, 0, msg->theta);
    transform.setRotation(q);
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name));
    //  StampedTransform(const tf::Transform& input, const ros::Time& timestamp, const std::string & frame_id, const std::string & child_frame_id):
    //                                                                                                          与py相反，child frame在后

}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "tf_broadcaster");
    if ( argc != 2)
    {
        ROS_INFO("need 2 parameters!");
        return -1;
    }
    turtle_name = argv[1];
    
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe(turtle_name + "/pose", 10, myCallback);

    ros::spin();

    return 0;
}

/*
tf 发布程序 
1、可选。 程序传入参数（tf的目标）。 注意是否需要设置全局变量供回调函数使用。
2、创建 订阅者，订阅目标的位置 ， 用来发布tf
3、tf的细节：
    类型：tf::Transform transform;
    平移：transform.setOrigin( tf::Vector3(msg->x, msg->y, 0) );
    旋转：transform.setRotation(q);
        其中q：
         tf::Quaternion q; （四元数）， 设置其RPY： q.setRPY(0, 0, msg->theta);
    发布：br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name));
        参数分别为， transform, 指定时间下（一般为当前 ）， 源和目标坐标系
    
** 有subscriber的记得加spin！！！！**
    
*/

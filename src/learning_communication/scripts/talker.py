#! /usr/bin/python
import rospy
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher("talker", String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10)
    a = 0

    while not rospy.is_shutdown():
        msg = String(data = "hello world" + str(a))
        pub.publish(msg)
        rospy.loginfo(msg.data)
        a += 1
        rate.sleep()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
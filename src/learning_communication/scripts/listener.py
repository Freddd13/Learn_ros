#! /usr/bin/python
import rospy
from std_msgs.msg import String


def myCallback(msg):
    rospy.loginfo("receive " + msg.data)

def listener():
    lsner = rospy.Subscriber("talker", String, queue_size=100, callback=myCallback)
    rospy.init_node("listener", anonymous=True)
    rospy.spin()

if __name__ == "__main__":
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
#! /usr/bin/python
import rospy
from learning_communication.msg import Person

def myCallback(msg):
    rospy.loginfo('receive: {0}, {1}'.format(msg.name, msg.age))

def c_listener():
    rospy.init_node("c_listener", anonymous=True)
    rospy.Subscriber("c_talker", Person, queue_size=100, callback=myCallback)
    rospy.spin()

if __name__ == "__main__":
    try:
        c_listener()
    except rospy.ROSInterruptException:
        pass
#! /usr/bin/python
import rospy
from learning_communication.msg import Person

def c_talker():
    rospy.init_node("c_talker", anonymous=True)
    puber = rospy.Publisher("c_talker", Person, queue_size=100)
    loop_rate = rospy.Rate(10)
    age = 0
    while not rospy.is_shutdown():
        msg = Person(name='Fred', age=23)
        rospy.loginfo('publish: name:{0}, age:{1}'.format(msg.name, msg.age))
        puber.publish(msg)
        age += 1
        loop_rate.sleep()


if __name__ == "__main__":
    try:
        c_talker()
    except rospy.ROSInterruptException:
        pass
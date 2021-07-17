#! /usr/bin/python
import rospy
from learning_communication.srv import Addnums, AddnumsResponse # attention here

def myCallback(req):
    rospy.loginfo("receive a = %d, b = %d,\nreturn c = %d" % (req.a, req.b, (req.a + req.b)))
    return AddnumsResponse(req.a + req.b)

def myserver():
    rospy.init_node('myserver', anonymous=True)
    rospy.Service('server', Addnums, myCallback)
    rospy.loginfo("ready to deal with srv")
    rospy.spin()

if __name__ == '__main__':
    myserver()
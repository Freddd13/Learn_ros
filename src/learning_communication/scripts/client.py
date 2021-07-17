#! /usr/bin/python
import sys
import rospy
from learning_communication.srv import Addnums, AddnumsRequest  # xxxRequest -> default value


def myclient(a, b):
    rospy.init_node("client")
    rospy.wait_for_service("server")
    try:
        client = rospy.ServiceProxy('server', Addnums)
        res = client(a, b)
        rospy.loginfo("receive c = " + str(res.c))
    except rospy.ServiceException as e:
        print('error:', e)

if __name__ == '__main__':
    if len(sys.argv) == 3:
        a = int(sys.argv[1])
        b = int(sys.argv[2])
        myclient(a, b)
    else:
        pass

#!/usr/bin/python
# -*- coding: utf-8 -*-

import rospy
import tf
import turtlesim.msg


def myCallback(msg, turtle_name):
    br = tf.TransformBroadcaster()
    br.sendTransform((msg.x, msg.y, 0),
                     tf.transformations.quaternion_from_euler(0, 0, msg.theta),
                     rospy.Time.now(),
                     turtle_name,
                     "world")
    #     def sendTransform(self, translation, rotation, time, child, parent):
    #                                                  与cpp相反，child frame在前
    

    
if __name__ == "__main__":
    rospy.init_node("tf_broadcaster", anonymous=True)
    turtle_name = rospy.get_param("~turtle")
    rospy.Subscriber("/%s/pose" % turtle_name, turtlesim.msg.Pose, myCallback, turtle_name)
    # callback 函数可以有参数 
    rospy.spin()

#!/usr/bin/env python3
# license removed for brevity
import rospy, random
from test_custom_msg.msg import Student

id = ['001', '002', '003', '004', '005']
name = ['Alpha', 'Beta', 'Gamma', 'Delta', 'Epsilon']
age = [18, 20, 19, 17, 22]
gpa = [4.00, 3.20, 4.50, 1.00, 3.00]

def talker():
    pub = rospy.Publisher('data', Student, queue_size=10)
    rospy.init_node('publisher', anonymous=False)
    rate = rospy.Rate(1) # 10hz
    std = Student()
    while not rospy.is_shutdown():
        i = random.randint(0, 4)
        std.id = id[i]
        std.name = name[i]
        std.age = age[i]
        std.gpa = gpa[i]
        pub.publish(std)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
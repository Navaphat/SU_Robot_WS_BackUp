#!/usr/bin/env python3

import rospy, random
from basic_test.msg import Student
from std_msgs.msg import Int16

code = ['001', '002', '003', '004', '005']
name = ['Alpha', 'Beta', 'Gamma', 'Delta', 'Epsilon']
gpa = [4.00, 3.20, 4.50, 1.00, 3.00]


def gen_std():
    pub = rospy.Publisher('student_data', Student, queue_size=10)
    pub_i = rospy.Publisher('increment_number', Int16, queue_size=10)

    rospy.init_node('gen_student', anonymous=False)
    rate = rospy.Rate(1)

    std = Student()
    n = 0
    while not rospy.is_shutdown():
        _int = n
        n = n+1

        i = random.randint(0, 4)
        std.code = code[i]
        std.name = name[i]
        std.gpa = gpa[i]

        pub_i.publish(_int)
        pub.publish(std)

        rate.sleep()

if __name__ == '__main__':
    try:
        gen_std()
    except rospy.ROSInterruptException:
        pass  
// Generated by gencpp from file basic_test/Student.msg
// DO NOT EDIT!


#ifndef BASIC_TEST_MESSAGE_STUDENT_H
#define BASIC_TEST_MESSAGE_STUDENT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace basic_test
{
template <class ContainerAllocator>
struct Student_
{
  typedef Student_<ContainerAllocator> Type;

  Student_()
    : code()
    , name()
    , gpa(0.0)  {
    }
  Student_(const ContainerAllocator& _alloc)
    : code(_alloc)
    , name(_alloc)
    , gpa(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _code_type;
  _code_type code;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef float _gpa_type;
  _gpa_type gpa;





  typedef boost::shared_ptr< ::basic_test::Student_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::basic_test::Student_<ContainerAllocator> const> ConstPtr;

}; // struct Student_

typedef ::basic_test::Student_<std::allocator<void> > Student;

typedef boost::shared_ptr< ::basic_test::Student > StudentPtr;
typedef boost::shared_ptr< ::basic_test::Student const> StudentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::basic_test::Student_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::basic_test::Student_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::basic_test::Student_<ContainerAllocator1> & lhs, const ::basic_test::Student_<ContainerAllocator2> & rhs)
{
  return lhs.code == rhs.code &&
    lhs.name == rhs.name &&
    lhs.gpa == rhs.gpa;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::basic_test::Student_<ContainerAllocator1> & lhs, const ::basic_test::Student_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace basic_test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::basic_test::Student_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::basic_test::Student_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::basic_test::Student_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::basic_test::Student_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::basic_test::Student_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::basic_test::Student_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::basic_test::Student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5831ce0f3a2c75671382e04fc46dcd8e";
  }

  static const char* value(const ::basic_test::Student_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5831ce0f3a2c7567ULL;
  static const uint64_t static_value2 = 0x1382e04fc46dcd8eULL;
};

template<class ContainerAllocator>
struct DataType< ::basic_test::Student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "basic_test/Student";
  }

  static const char* value(const ::basic_test::Student_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::basic_test::Student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string code\n"
"string name\n"
"float32 gpa\n"
;
  }

  static const char* value(const ::basic_test::Student_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::basic_test::Student_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.code);
      stream.next(m.name);
      stream.next(m.gpa);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Student_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::basic_test::Student_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::basic_test::Student_<ContainerAllocator>& v)
  {
    s << indent << "code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.code);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "gpa: ";
    Printer<float>::stream(s, indent + "  ", v.gpa);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASIC_TEST_MESSAGE_STUDENT_H

// Generated by gencpp from file basic_test/MultiplyResponse.msg
// DO NOT EDIT!


#ifndef BASIC_TEST_MESSAGE_MULTIPLYRESPONSE_H
#define BASIC_TEST_MESSAGE_MULTIPLYRESPONSE_H


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
struct MultiplyResponse_
{
  typedef MultiplyResponse_<ContainerAllocator> Type;

  MultiplyResponse_()
    : result()  {
    }
  MultiplyResponse_(const ContainerAllocator& _alloc)
    : result(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::basic_test::MultiplyResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::basic_test::MultiplyResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MultiplyResponse_

typedef ::basic_test::MultiplyResponse_<std::allocator<void> > MultiplyResponse;

typedef boost::shared_ptr< ::basic_test::MultiplyResponse > MultiplyResponsePtr;
typedef boost::shared_ptr< ::basic_test::MultiplyResponse const> MultiplyResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::basic_test::MultiplyResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::basic_test::MultiplyResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::basic_test::MultiplyResponse_<ContainerAllocator1> & lhs, const ::basic_test::MultiplyResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::basic_test::MultiplyResponse_<ContainerAllocator1> & lhs, const ::basic_test::MultiplyResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace basic_test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::basic_test::MultiplyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::basic_test::MultiplyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::basic_test::MultiplyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::basic_test::MultiplyResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::basic_test::MultiplyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::basic_test::MultiplyResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::basic_test::MultiplyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c22f2a1ed8654a0b365f1bb3f7ff2c0f";
  }

  static const char* value(const ::basic_test::MultiplyResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc22f2a1ed8654a0bULL;
  static const uint64_t static_value2 = 0x365f1bb3f7ff2c0fULL;
};

template<class ContainerAllocator>
struct DataType< ::basic_test::MultiplyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "basic_test/MultiplyResponse";
  }

  static const char* value(const ::basic_test::MultiplyResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::basic_test::MultiplyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string result\n"
;
  }

  static const char* value(const ::basic_test::MultiplyResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::basic_test::MultiplyResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MultiplyResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::basic_test::MultiplyResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::basic_test::MultiplyResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASIC_TEST_MESSAGE_MULTIPLYRESPONSE_H

// Generated by gencpp from file nao_interaction_msgs/AudioRecorder.msg
// DO NOT EDIT!


#ifndef NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDER_H
#define NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDER_H

#include <ros/service_traits.h>


#include <nao_interaction_msgs/AudioRecorderRequest.h>
#include <nao_interaction_msgs/AudioRecorderResponse.h>


namespace nao_interaction_msgs
{

struct AudioRecorder
{

typedef AudioRecorderRequest Request;
typedef AudioRecorderResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AudioRecorder
} // namespace nao_interaction_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::nao_interaction_msgs::AudioRecorder > {
  static const char* value()
  {
    return "b211df69b24b5ed7b95654b151a08b5c";
  }

  static const char* value(const ::nao_interaction_msgs::AudioRecorder&) { return value(); }
};

template<>
struct DataType< ::nao_interaction_msgs::AudioRecorder > {
  static const char* value()
  {
    return "nao_interaction_msgs/AudioRecorder";
  }

  static const char* value(const ::nao_interaction_msgs::AudioRecorder&) { return value(); }
};


// service_traits::MD5Sum< ::nao_interaction_msgs::AudioRecorderRequest> should match 
// service_traits::MD5Sum< ::nao_interaction_msgs::AudioRecorder > 
template<>
struct MD5Sum< ::nao_interaction_msgs::AudioRecorderRequest>
{
  static const char* value()
  {
    return MD5Sum< ::nao_interaction_msgs::AudioRecorder >::value();
  }
  static const char* value(const ::nao_interaction_msgs::AudioRecorderRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_interaction_msgs::AudioRecorderRequest> should match 
// service_traits::DataType< ::nao_interaction_msgs::AudioRecorder > 
template<>
struct DataType< ::nao_interaction_msgs::AudioRecorderRequest>
{
  static const char* value()
  {
    return DataType< ::nao_interaction_msgs::AudioRecorder >::value();
  }
  static const char* value(const ::nao_interaction_msgs::AudioRecorderRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::nao_interaction_msgs::AudioRecorderResponse> should match 
// service_traits::MD5Sum< ::nao_interaction_msgs::AudioRecorder > 
template<>
struct MD5Sum< ::nao_interaction_msgs::AudioRecorderResponse>
{
  static const char* value()
  {
    return MD5Sum< ::nao_interaction_msgs::AudioRecorder >::value();
  }
  static const char* value(const ::nao_interaction_msgs::AudioRecorderResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_interaction_msgs::AudioRecorderResponse> should match 
// service_traits::DataType< ::nao_interaction_msgs::AudioRecorder > 
template<>
struct DataType< ::nao_interaction_msgs::AudioRecorderResponse>
{
  static const char* value()
  {
    return DataType< ::nao_interaction_msgs::AudioRecorder >::value();
  }
  static const char* value(const ::nao_interaction_msgs::AudioRecorderResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDER_H

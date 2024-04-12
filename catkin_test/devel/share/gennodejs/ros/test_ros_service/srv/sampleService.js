// Auto-generated. Do not edit!

// (in-package test_ros_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class sampleServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.one_or_zero = null;
    }
    else {
      if (initObj.hasOwnProperty('one_or_zero')) {
        this.one_or_zero = initObj.one_or_zero
      }
      else {
        this.one_or_zero = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sampleServiceRequest
    // Serialize message field [one_or_zero]
    bufferOffset = _serializer.int32(obj.one_or_zero, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sampleServiceRequest
    let len;
    let data = new sampleServiceRequest(null);
    // Deserialize message field [one_or_zero]
    data.one_or_zero = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_ros_service/sampleServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9caceb3fd8f6897b7495d54cd55dee3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 one_or_zero
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sampleServiceRequest(null);
    if (msg.one_or_zero !== undefined) {
      resolved.one_or_zero = msg.one_or_zero;
    }
    else {
      resolved.one_or_zero = 0
    }

    return resolved;
    }
};

class sampleServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.turn = null;
    }
    else {
      if (initObj.hasOwnProperty('turn')) {
        this.turn = initObj.turn
      }
      else {
        this.turn = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sampleServiceResponse
    // Serialize message field [turn]
    bufferOffset = _serializer.string(obj.turn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sampleServiceResponse
    let len;
    let data = new sampleServiceResponse(null);
    // Deserialize message field [turn]
    data.turn = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.turn);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_ros_service/sampleServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '318653ac5e682e6ac5a91ab3fcbcfd51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string turn
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sampleServiceResponse(null);
    if (msg.turn !== undefined) {
      resolved.turn = msg.turn;
    }
    else {
      resolved.turn = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: sampleServiceRequest,
  Response: sampleServiceResponse,
  md5sum() { return 'b59753b55c16f36d035056bfb3b80cf0'; },
  datatype() { return 'test_ros_service/sampleService'; }
};

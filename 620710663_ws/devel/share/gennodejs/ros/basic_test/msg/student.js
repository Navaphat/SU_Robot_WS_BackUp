// Auto-generated. Do not edit!

// (in-package basic_test.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class student {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
      this.name = null;
      this.gpa = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('gpa')) {
        this.gpa = initObj.gpa
      }
      else {
        this.gpa = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type student
    // Serialize message field [code]
    bufferOffset = _serializer.string(obj.code, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [gpa]
    bufferOffset = _serializer.float32(obj.gpa, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type student
    let len;
    let data = new student(null);
    // Deserialize message field [code]
    data.code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gpa]
    data.gpa = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.code);
    length += _getByteLength(object.name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'basic_test/student';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5831ce0f3a2c75671382e04fc46dcd8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string code
    string name
    float32 gpa
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new student(null);
    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.gpa !== undefined) {
      resolved.gpa = msg.gpa;
    }
    else {
      resolved.gpa = 0.0
    }

    return resolved;
    }
};

module.exports = student;

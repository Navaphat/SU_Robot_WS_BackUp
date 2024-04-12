// Auto-generated. Do not edit!

// (in-package test_custom_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Student {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.age = null;
      this.gpa = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
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
    // Serializes a message object of type Student
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint8(obj.age, buffer, bufferOffset);
    // Serialize message field [gpa]
    bufferOffset = _serializer.float32(obj.gpa, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Student
    let len;
    let data = new Student(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gpa]
    data.gpa = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    length += _getByteLength(object.name);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_custom_msg/Student';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24ce0792e01568f324298fd20a78d848';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    string name
    uint8 age
    float32 gpa
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Student(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
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

module.exports = Student;

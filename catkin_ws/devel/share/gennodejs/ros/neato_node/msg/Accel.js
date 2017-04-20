// Auto-generated. Do not edit!

// (in-package neato_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Accel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.accelXInG = null;
      this.accelYInG = null;
      this.accelZInG = null;
    }
    else {
      if (initObj.hasOwnProperty('accelXInG')) {
        this.accelXInG = initObj.accelXInG
      }
      else {
        this.accelXInG = 0.0;
      }
      if (initObj.hasOwnProperty('accelYInG')) {
        this.accelYInG = initObj.accelYInG
      }
      else {
        this.accelYInG = 0.0;
      }
      if (initObj.hasOwnProperty('accelZInG')) {
        this.accelZInG = initObj.accelZInG
      }
      else {
        this.accelZInG = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Accel
    // Serialize message field [accelXInG]
    bufferOffset = _serializer.float64(obj.accelXInG, buffer, bufferOffset);
    // Serialize message field [accelYInG]
    bufferOffset = _serializer.float64(obj.accelYInG, buffer, bufferOffset);
    // Serialize message field [accelZInG]
    bufferOffset = _serializer.float64(obj.accelZInG, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Accel
    let len;
    let data = new Accel(null);
    // Deserialize message field [accelXInG]
    data.accelXInG = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accelYInG]
    data.accelYInG = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accelZInG]
    data.accelZInG = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neato_node/Accel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '207a3851a50869ae8ce637885057d51b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 accelXInG
    float64 accelYInG
    float64 accelZInG
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Accel(null);
    if (msg.accelXInG !== undefined) {
      resolved.accelXInG = msg.accelXInG;
    }
    else {
      resolved.accelXInG = 0.0
    }

    if (msg.accelYInG !== undefined) {
      resolved.accelYInG = msg.accelYInG;
    }
    else {
      resolved.accelYInG = 0.0
    }

    if (msg.accelZInG !== undefined) {
      resolved.accelZInG = msg.accelZInG;
    }
    else {
      resolved.accelZInG = 0.0
    }

    return resolved;
    }
};

module.exports = Accel;

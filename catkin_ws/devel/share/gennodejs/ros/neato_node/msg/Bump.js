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

class Bump {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftFront = null;
      this.leftSide = null;
      this.rightFront = null;
      this.rightSide = null;
    }
    else {
      if (initObj.hasOwnProperty('leftFront')) {
        this.leftFront = initObj.leftFront
      }
      else {
        this.leftFront = 0;
      }
      if (initObj.hasOwnProperty('leftSide')) {
        this.leftSide = initObj.leftSide
      }
      else {
        this.leftSide = 0;
      }
      if (initObj.hasOwnProperty('rightFront')) {
        this.rightFront = initObj.rightFront
      }
      else {
        this.rightFront = 0;
      }
      if (initObj.hasOwnProperty('rightSide')) {
        this.rightSide = initObj.rightSide
      }
      else {
        this.rightSide = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bump
    // Serialize message field [leftFront]
    bufferOffset = _serializer.uint8(obj.leftFront, buffer, bufferOffset);
    // Serialize message field [leftSide]
    bufferOffset = _serializer.uint8(obj.leftSide, buffer, bufferOffset);
    // Serialize message field [rightFront]
    bufferOffset = _serializer.uint8(obj.rightFront, buffer, bufferOffset);
    // Serialize message field [rightSide]
    bufferOffset = _serializer.uint8(obj.rightSide, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bump
    let len;
    let data = new Bump(null);
    // Deserialize message field [leftFront]
    data.leftFront = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [leftSide]
    data.leftSide = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rightFront]
    data.rightFront = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rightSide]
    data.rightSide = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neato_node/Bump';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '459d87767ce0f2ebdc162046e9ad2c13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents the bump sensor data from the Neato 
    
    uint8 leftFront
    uint8 leftSide
    uint8 rightFront
    uint8 rightSide 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bump(null);
    if (msg.leftFront !== undefined) {
      resolved.leftFront = msg.leftFront;
    }
    else {
      resolved.leftFront = 0
    }

    if (msg.leftSide !== undefined) {
      resolved.leftSide = msg.leftSide;
    }
    else {
      resolved.leftSide = 0
    }

    if (msg.rightFront !== undefined) {
      resolved.rightFront = msg.rightFront;
    }
    else {
      resolved.rightFront = 0
    }

    if (msg.rightSide !== undefined) {
      resolved.rightSide = msg.rightSide;
    }
    else {
      resolved.rightSide = 0
    }

    return resolved;
    }
};

module.exports = Bump;

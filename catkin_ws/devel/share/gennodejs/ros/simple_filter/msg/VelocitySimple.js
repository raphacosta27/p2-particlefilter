// Auto-generated. Do not edit!

// (in-package simple_filter.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VelocitySimple {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.west_to_east_velocity = null;
      this.south_to_north_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('west_to_east_velocity')) {
        this.west_to_east_velocity = initObj.west_to_east_velocity
      }
      else {
        this.west_to_east_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('south_to_north_velocity')) {
        this.south_to_north_velocity = initObj.south_to_north_velocity
      }
      else {
        this.south_to_north_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelocitySimple
    // Serialize message field [west_to_east_velocity]
    bufferOffset = _serializer.float64(obj.west_to_east_velocity, buffer, bufferOffset);
    // Serialize message field [south_to_north_velocity]
    bufferOffset = _serializer.float64(obj.south_to_north_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocitySimple
    let len;
    let data = new VelocitySimple(null);
    // Deserialize message field [west_to_east_velocity]
    data.west_to_east_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [south_to_north_velocity]
    data.south_to_north_velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simple_filter/VelocitySimple';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2d1fc69ecbb9c4cf4162781c2abe97c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 west_to_east_velocity
    float64 south_to_north_velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelocitySimple(null);
    if (msg.west_to_east_velocity !== undefined) {
      resolved.west_to_east_velocity = msg.west_to_east_velocity;
    }
    else {
      resolved.west_to_east_velocity = 0.0
    }

    if (msg.south_to_north_velocity !== undefined) {
      resolved.south_to_north_velocity = msg.south_to_north_velocity;
    }
    else {
      resolved.south_to_north_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = VelocitySimple;

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

class LaserSimple {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.north_laser = null;
      this.south_laser = null;
      this.east_laser = null;
      this.west_laser = null;
    }
    else {
      if (initObj.hasOwnProperty('north_laser')) {
        this.north_laser = initObj.north_laser
      }
      else {
        this.north_laser = 0.0;
      }
      if (initObj.hasOwnProperty('south_laser')) {
        this.south_laser = initObj.south_laser
      }
      else {
        this.south_laser = 0.0;
      }
      if (initObj.hasOwnProperty('east_laser')) {
        this.east_laser = initObj.east_laser
      }
      else {
        this.east_laser = 0.0;
      }
      if (initObj.hasOwnProperty('west_laser')) {
        this.west_laser = initObj.west_laser
      }
      else {
        this.west_laser = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserSimple
    // Serialize message field [north_laser]
    bufferOffset = _serializer.float64(obj.north_laser, buffer, bufferOffset);
    // Serialize message field [south_laser]
    bufferOffset = _serializer.float64(obj.south_laser, buffer, bufferOffset);
    // Serialize message field [east_laser]
    bufferOffset = _serializer.float64(obj.east_laser, buffer, bufferOffset);
    // Serialize message field [west_laser]
    bufferOffset = _serializer.float64(obj.west_laser, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserSimple
    let len;
    let data = new LaserSimple(null);
    // Deserialize message field [north_laser]
    data.north_laser = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [south_laser]
    data.south_laser = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east_laser]
    data.east_laser = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [west_laser]
    data.west_laser = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simple_filter/LaserSimple';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b8187ec0e932eb25ced46dca14c4680';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 north_laser
    float64 south_laser
    float64 east_laser
    float64 west_laser
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaserSimple(null);
    if (msg.north_laser !== undefined) {
      resolved.north_laser = msg.north_laser;
    }
    else {
      resolved.north_laser = 0.0
    }

    if (msg.south_laser !== undefined) {
      resolved.south_laser = msg.south_laser;
    }
    else {
      resolved.south_laser = 0.0
    }

    if (msg.east_laser !== undefined) {
      resolved.east_laser = msg.east_laser;
    }
    else {
      resolved.east_laser = 0.0
    }

    if (msg.west_laser !== undefined) {
      resolved.west_laser = msg.west_laser;
    }
    else {
      resolved.west_laser = 0.0
    }

    return resolved;
    }
};

module.exports = LaserSimple;

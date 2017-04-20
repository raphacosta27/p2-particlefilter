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

class OdometrySimple {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.west_to_east_position = null;
      this.south_to_north_position = null;
    }
    else {
      if (initObj.hasOwnProperty('west_to_east_position')) {
        this.west_to_east_position = initObj.west_to_east_position
      }
      else {
        this.west_to_east_position = 0.0;
      }
      if (initObj.hasOwnProperty('south_to_north_position')) {
        this.south_to_north_position = initObj.south_to_north_position
      }
      else {
        this.south_to_north_position = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdometrySimple
    // Serialize message field [west_to_east_position]
    bufferOffset = _serializer.float64(obj.west_to_east_position, buffer, bufferOffset);
    // Serialize message field [south_to_north_position]
    bufferOffset = _serializer.float64(obj.south_to_north_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdometrySimple
    let len;
    let data = new OdometrySimple(null);
    // Deserialize message field [west_to_east_position]
    data.west_to_east_position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [south_to_north_position]
    data.south_to_north_position = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simple_filter/OdometrySimple';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44f4ba1870bd1a40b628235c08560d3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 west_to_east_position
    float64 south_to_north_position
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdometrySimple(null);
    if (msg.west_to_east_position !== undefined) {
      resolved.west_to_east_position = msg.west_to_east_position;
    }
    else {
      resolved.west_to_east_position = 0.0
    }

    if (msg.south_to_north_position !== undefined) {
      resolved.south_to_north_position = msg.south_to_north_position;
    }
    else {
      resolved.south_to_north_position = 0.0
    }

    return resolved;
    }
};

module.exports = OdometrySimple;

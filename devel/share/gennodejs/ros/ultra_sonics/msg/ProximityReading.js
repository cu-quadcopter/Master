// Auto-generated. Do not edit!

// (in-package ultra_sonics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProximityReading {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_rotation = null;
      this.y_rotation = null;
      this.distance = null;
      this.accuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('x_rotation')) {
        this.x_rotation = initObj.x_rotation
      }
      else {
        this.x_rotation = 0;
      }
      if (initObj.hasOwnProperty('y_rotation')) {
        this.y_rotation = initObj.y_rotation
      }
      else {
        this.y_rotation = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('accuracy')) {
        this.accuracy = initObj.accuracy
      }
      else {
        this.accuracy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProximityReading
    // Serialize message field [x_rotation]
    bufferOffset = _serializer.int16(obj.x_rotation, buffer, bufferOffset);
    // Serialize message field [y_rotation]
    bufferOffset = _serializer.int16(obj.y_rotation, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [accuracy]
    bufferOffset = _serializer.float32(obj.accuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProximityReading
    let len;
    let data = new ProximityReading(null);
    // Deserialize message field [x_rotation]
    data.x_rotation = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y_rotation]
    data.y_rotation = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accuracy]
    data.accuracy = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ultra_sonics/ProximityReading';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbb137e6f965ad94062061ffcffb2bb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 x_rotation
    int16 y_rotation
    float32 distance
    float32 accuracy
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProximityReading(null);
    if (msg.x_rotation !== undefined) {
      resolved.x_rotation = msg.x_rotation;
    }
    else {
      resolved.x_rotation = 0
    }

    if (msg.y_rotation !== undefined) {
      resolved.y_rotation = msg.y_rotation;
    }
    else {
      resolved.y_rotation = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.accuracy !== undefined) {
      resolved.accuracy = msg.accuracy;
    }
    else {
      resolved.accuracy = 0.0
    }

    return resolved;
    }
};

module.exports = ProximityReading;

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

class proximity_reading {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.distance = null;
      this.accuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0;
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
    // Serializes a message object of type proximity_reading
    // Serialize message field [x]
    bufferOffset = _serializer.int16(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int16(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.int16(obj.z, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [accuracy]
    bufferOffset = _serializer.float32(obj.accuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type proximity_reading
    let len;
    let data = new proximity_reading(null);
    // Deserialize message field [x]
    data.x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accuracy]
    data.accuracy = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ultra_sonics/proximity_reading';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9c7353d28dec7d7c97f9d50d19e40b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 x
    int16 y
    int16 z
    float32 distance
    float32 accuracy
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new proximity_reading(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0
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

module.exports = proximity_reading;

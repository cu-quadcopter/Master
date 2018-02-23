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
      this.x_ratation = null;
      this.y_ratation = null;
      this.distance = null;
      this.accuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('x_ratation')) {
        this.x_ratation = initObj.x_ratation
      }
      else {
        this.x_ratation = 0;
      }
      if (initObj.hasOwnProperty('y_ratation')) {
        this.y_ratation = initObj.y_ratation
      }
      else {
        this.y_ratation = 0;
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
    // Serialize message field [x_ratation]
    bufferOffset = _serializer.int16(obj.x_ratation, buffer, bufferOffset);
    // Serialize message field [y_ratation]
    bufferOffset = _serializer.int16(obj.y_ratation, buffer, bufferOffset);
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
    // Deserialize message field [x_ratation]
    data.x_ratation = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y_ratation]
    data.y_ratation = _deserializer.int16(buffer, bufferOffset);
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
    return 'e94f3fd8a5c15e9d20ef07fcc5fd7cf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 x_ratation
    int16 y_ratation
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
    if (msg.x_ratation !== undefined) {
      resolved.x_ratation = msg.x_ratation;
    }
    else {
      resolved.x_ratation = 0
    }

    if (msg.y_ratation !== undefined) {
      resolved.y_ratation = msg.y_ratation;
    }
    else {
      resolved.y_ratation = 0
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

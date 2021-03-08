// Auto-generated. Do not edit!

// (in-package ryans_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CommandDrive {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_front_vel = null;
      this.left_middle_vel = null;
      this.left_back_vel = null;
      this.right_front_vel = null;
      this.right_middle_vel = null;
      this.right_back_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('left_front_vel')) {
        this.left_front_vel = initObj.left_front_vel
      }
      else {
        this.left_front_vel = 0.0;
      }
      if (initObj.hasOwnProperty('left_middle_vel')) {
        this.left_middle_vel = initObj.left_middle_vel
      }
      else {
        this.left_middle_vel = 0.0;
      }
      if (initObj.hasOwnProperty('left_back_vel')) {
        this.left_back_vel = initObj.left_back_vel
      }
      else {
        this.left_back_vel = 0.0;
      }
      if (initObj.hasOwnProperty('right_front_vel')) {
        this.right_front_vel = initObj.right_front_vel
      }
      else {
        this.right_front_vel = 0.0;
      }
      if (initObj.hasOwnProperty('right_middle_vel')) {
        this.right_middle_vel = initObj.right_middle_vel
      }
      else {
        this.right_middle_vel = 0.0;
      }
      if (initObj.hasOwnProperty('right_back_vel')) {
        this.right_back_vel = initObj.right_back_vel
      }
      else {
        this.right_back_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandDrive
    // Serialize message field [left_front_vel]
    bufferOffset = _serializer.float64(obj.left_front_vel, buffer, bufferOffset);
    // Serialize message field [left_middle_vel]
    bufferOffset = _serializer.float64(obj.left_middle_vel, buffer, bufferOffset);
    // Serialize message field [left_back_vel]
    bufferOffset = _serializer.float64(obj.left_back_vel, buffer, bufferOffset);
    // Serialize message field [right_front_vel]
    bufferOffset = _serializer.float64(obj.right_front_vel, buffer, bufferOffset);
    // Serialize message field [right_middle_vel]
    bufferOffset = _serializer.float64(obj.right_middle_vel, buffer, bufferOffset);
    // Serialize message field [right_back_vel]
    bufferOffset = _serializer.float64(obj.right_back_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandDrive
    let len;
    let data = new CommandDrive(null);
    // Deserialize message field [left_front_vel]
    data.left_front_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_middle_vel]
    data.left_middle_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_back_vel]
    data.left_back_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_front_vel]
    data.right_front_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_middle_vel]
    data.right_middle_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_back_vel]
    data.right_back_vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ryans_package/CommandDrive';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93c68ee77a1987ff55cfdac06c04c042';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # drive motors, velocity in rad/s
    float64 left_front_vel
    float64 left_middle_vel
    float64 left_back_vel
    float64 right_front_vel
    float64 right_middle_vel
    float64 right_back_vel
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandDrive(null);
    if (msg.left_front_vel !== undefined) {
      resolved.left_front_vel = msg.left_front_vel;
    }
    else {
      resolved.left_front_vel = 0.0
    }

    if (msg.left_middle_vel !== undefined) {
      resolved.left_middle_vel = msg.left_middle_vel;
    }
    else {
      resolved.left_middle_vel = 0.0
    }

    if (msg.left_back_vel !== undefined) {
      resolved.left_back_vel = msg.left_back_vel;
    }
    else {
      resolved.left_back_vel = 0.0
    }

    if (msg.right_front_vel !== undefined) {
      resolved.right_front_vel = msg.right_front_vel;
    }
    else {
      resolved.right_front_vel = 0.0
    }

    if (msg.right_middle_vel !== undefined) {
      resolved.right_middle_vel = msg.right_middle_vel;
    }
    else {
      resolved.right_middle_vel = 0.0
    }

    if (msg.right_back_vel !== undefined) {
      resolved.right_back_vel = msg.right_back_vel;
    }
    else {
      resolved.right_back_vel = 0.0
    }

    return resolved;
    }
};

module.exports = CommandDrive;

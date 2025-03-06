// Auto-generated. Do not edit!

// (in-package dynamixel_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let niryo_robot_msgs = _finder('niryo_robot_msgs');

//-----------------------------------------------------------

class DxlMotorHardwareStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_identity = null;
      this.temperature = null;
      this.voltage = null;
      this.error = null;
      this.error_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_identity')) {
        this.motor_identity = initObj.motor_identity
      }
      else {
        this.motor_identity = new niryo_robot_msgs.msg.MotorHeader();
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DxlMotorHardwareStatus
    // Serialize message field [motor_identity]
    bufferOffset = niryo_robot_msgs.msg.MotorHeader.serialize(obj.motor_identity, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.uint32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float64(obj.voltage, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.uint32(obj.error, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DxlMotorHardwareStatus
    let len;
    let data = new DxlMotorHardwareStatus(null);
    // Deserialize message field [motor_identity]
    data.motor_identity = niryo_robot_msgs.msg.MotorHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_msg.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dynamixel_driver/DxlMotorHardwareStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa4311819f2846ae7b0f01fb11479f2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_robot_msgs/MotorHeader motor_identity
    
    uint32 temperature
    float64 voltage
    uint32 error
    string error_msg
    
    ================================================================================
    MSG: niryo_robot_msgs/MotorHeader
    uint8 motor_id
    
    uint8 motor_type
    uint8 MOTOR_TYPE_STEPPER=1
    uint8 MOTOR_TYPE_XL430=2
    uint8 MOTOR_TYPE_XL320=3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DxlMotorHardwareStatus(null);
    if (msg.motor_identity !== undefined) {
      resolved.motor_identity = niryo_robot_msgs.msg.MotorHeader.Resolve(msg.motor_identity)
    }
    else {
      resolved.motor_identity = new niryo_robot_msgs.msg.MotorHeader()
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    return resolved;
    }
};

module.exports = DxlMotorHardwareStatus;

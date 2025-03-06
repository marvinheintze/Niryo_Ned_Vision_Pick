// Auto-generated. Do not edit!

// (in-package niryo_robot_arm_commander.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ShiftPose = require('./ShiftPose.js');
let niryo_robot_msgs = _finder('niryo_robot_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ArmMoveCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.joints = null;
      this.position = null;
      this.rpy = null;
      this.orientation = null;
      this.shift = null;
      this.list_poses = null;
      this.dist_smoothing = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new niryo_robot_msgs.msg.RPY();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('shift')) {
        this.shift = initObj.shift
      }
      else {
        this.shift = new ShiftPose();
      }
      if (initObj.hasOwnProperty('list_poses')) {
        this.list_poses = initObj.list_poses
      }
      else {
        this.list_poses = [];
      }
      if (initObj.hasOwnProperty('dist_smoothing')) {
        this.dist_smoothing = initObj.dist_smoothing
      }
      else {
        this.dist_smoothing = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmMoveCommand
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.int32(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float64(obj.joints, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [rpy]
    bufferOffset = niryo_robot_msgs.msg.RPY.serialize(obj.rpy, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [shift]
    bufferOffset = ShiftPose.serialize(obj.shift, buffer, bufferOffset);
    // Serialize message field [list_poses]
    // Serialize the length for message field [list_poses]
    bufferOffset = _serializer.uint32(obj.list_poses.length, buffer, bufferOffset);
    obj.list_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dist_smoothing]
    bufferOffset = _serializer.float32(obj.dist_smoothing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmMoveCommand
    let len;
    let data = new ArmMoveCommand(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy]
    data.rpy = niryo_robot_msgs.msg.RPY.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [shift]
    data.shift = ShiftPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [list_poses]
    // Deserialize array length for message field [list_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.list_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.list_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dist_smoothing]
    data.dist_smoothing = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joints.length;
    length += 56 * object.list_poses.length;
    return length + 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_arm_commander/ArmMoveCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb4533fa1ec0414d1b50ff9449077984';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 JOINTS = 0            # uses joints 
    int32 POSE = 1              # uses position and rpy 
    int32 POSITION = 2          # uses position
    int32 RPY = 3               # uses rpy
    int32 POSE_QUAT = 4         # uses position and orientation
    int32 LINEAR_POSE = 5       # uses position and rpy
    int32 SHIFT_POSE = 6        # uses shift
    int32 SHIFT_LINEAR_POSE = 7 # uses shift
    int32 EXECUTE_TRAJ = 8      # uses dist_smoothing, list_poses
    int32 DRAW_SPIRAL = 9      
    
    int32 cmd_type
    
    float64[] joints
    geometry_msgs/Point position
    niryo_robot_msgs/RPY rpy
    geometry_msgs/Quaternion orientation
    niryo_robot_arm_commander/ShiftPose shift
    
    geometry_msgs/Pose[] list_poses
    float32 dist_smoothing
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: niryo_robot_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: niryo_robot_arm_commander/ShiftPose
    int32 axis_number
    float64 value
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmMoveCommand(null);
    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = niryo_robot_msgs.msg.RPY.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new niryo_robot_msgs.msg.RPY()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.shift !== undefined) {
      resolved.shift = ShiftPose.Resolve(msg.shift)
    }
    else {
      resolved.shift = new ShiftPose()
    }

    if (msg.list_poses !== undefined) {
      resolved.list_poses = new Array(msg.list_poses.length);
      for (let i = 0; i < resolved.list_poses.length; ++i) {
        resolved.list_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.list_poses[i]);
      }
    }
    else {
      resolved.list_poses = []
    }

    if (msg.dist_smoothing !== undefined) {
      resolved.dist_smoothing = msg.dist_smoothing;
    }
    else {
      resolved.dist_smoothing = 0.0
    }

    return resolved;
    }
};

// Constants for message
ArmMoveCommand.Constants = {
  JOINTS: 0,
  POSE: 1,
  POSITION: 2,
  RPY: 3,
  POSE_QUAT: 4,
  LINEAR_POSE: 5,
  SHIFT_POSE: 6,
  SHIFT_LINEAR_POSE: 7,
  EXECUTE_TRAJ: 8,
  DRAW_SPIRAL: 9,
}

module.exports = ArmMoveCommand;

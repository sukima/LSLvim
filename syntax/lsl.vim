" Vim syntax file
" Language:     Linden scripting language
" Maintainer:   Gabriel Spinnaker (gs@geekmafia.net)
" Last Change:  2004 Sep 11
" LSL keywords updated 19 Aug 2009 for LSL 1.23.4 by http://adammarker.org/shill

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Basic syntax
syn case match
syn keyword     lStatement      jump return default state
syn match       lLabel          "@.;"
syn keyword     lConditional    if else 
syn keyword     lRepeat         while for do
syn keyword     lTodo           contained TODO FIXME XXX
syn keyword     lType           integer float list vector rotation quaternion string key
syn match       lOperator       "[-=+%^&|*!~]"
syn match       lOperator       "[-+]="
syn match       lOperator       "&&"
syn match       lOperator       "||"
syn match       lOperator       "[!=<>]="
syn match       lOperator       "[<>]"
syn match       lOperator       "[<>][<>]"
syn cluster     lCommentGroup   contains=lTodo
syn match       lComment        "//.*$" contains=@lCommentGroup
syn region      lComment         start=+/\*+ end=+\*/+ contains=@lCommentGroup

syn region      lString         start=+"+  skip=+\\\|\"+  end=+"+
syn match       lNumber         "-\=\<\d\>"
syn match       lHexNumber      "0x\<\d\>"
syn match       lFloat          "-\=\<\d\.\d\>"
syn region      lBlock          matchgroup=lSpecial start=/{/ end=/}/ contains=ALL
syn cluster     lListGroup      contains=lNumber,lFloat,lString,lOperator
syn region      lList           matchgroup=lSpecial start=/\[/ end=/\]/ contains=@lListGroup
syn region      lParen          matchgroup=lSpecial start=/(/ end=/)/ contains=ALL
syn match       lVecQuatXYZS    ".\[xyzs\]"

syn keyword     lConstant ACTIVE
syn keyword     lConstant AGENT
syn keyword     lConstant AGENT_ALWAYS_RUN
syn keyword     lConstant AGENT_ATTACHMENTS
syn keyword     lConstant AGENT_AWAY
syn keyword     lConstant AGENT_BUSY
syn keyword     lConstant AGENT_CROUCHING
syn keyword     lConstant AGENT_FLYING
syn keyword     lConstant AGENT_IN_AIR
syn keyword     lConstant AGENT_MOUSELOOK
syn keyword     lConstant AGENT_ON_OBJECT
syn keyword     lConstant AGENT_SCRIPTED
syn keyword     lConstant AGENT_SITTING
syn keyword     lConstant AGENT_TYPING
syn keyword     lConstant AGENT_WALKING
syn keyword     lConstant ALL_SIDES
syn keyword     lConstant ANIM_ON
syn keyword     lConstant ATTACH_BACK
syn keyword     lConstant ATTACH_BELLY
syn keyword     lConstant ATTACH_CHEST
syn keyword     lConstant ATTACH_CHIN
syn keyword     lConstant ATTACH_HEAD
syn keyword     lConstant ATTACH_LEAR
syn keyword     lConstant ATTACH_LEYE
syn keyword     lConstant ATTACH_LFOOT
syn keyword     lConstant ATTACH_LHAND
syn keyword     lConstant ATTACH_LHIP
syn keyword     lConstant ATTACH_LLARM
syn keyword     lConstant ATTACH_LLLEG
syn keyword     lConstant ATTACH_LPEC
syn keyword     lConstant ATTACH_LSHOULDER
syn keyword     lConstant ATTACH_LUARM
syn keyword     lConstant ATTACH_LULEG
syn keyword     lConstant ATTACH_MOUTH
syn keyword     lConstant ATTACH_NOSE
syn keyword     lConstant ATTACH_PELVIS
syn keyword     lConstant ATTACH_REAR
syn keyword     lConstant ATTACH_REYE
syn keyword     lConstant ATTACH_RFOOT
syn keyword     lConstant ATTACH_RHAND
syn keyword     lConstant ATTACH_RHIP
syn keyword     lConstant ATTACH_RLARM
syn keyword     lConstant ATTACH_RLLEG
syn keyword     lConstant ATTACH_RPEC
syn keyword     lConstant ATTACH_RSHOULDER
syn keyword     lConstant ATTACH_RUARM
syn keyword     lConstant ATTACH_RULEG
syn keyword     lConstant CAMERA_ACTIVE
syn keyword     lConstant CAMERA_BEHINDNESS_ANGLE
syn keyword     lConstant CAMERA_BEHINDNESS_LAG
syn keyword     lConstant CAMERA_DISTANCE
syn keyword     lConstant CAMERA_FOCUS
syn keyword     lConstant CAMERA_FOCUS_LAG
syn keyword     lConstant CAMERA_FOCUS_LOCKED
syn keyword     lConstant CAMERA_FOCUS_OFFSET
syn keyword     lConstant CAMERA_FOCUS_THRESHOLD
syn keyword     lConstant CAMERA_PITCH
syn keyword     lConstant CAMERA_POSITION
syn keyword     lConstant CAMERA_POSITION_LAG
syn keyword     lConstant CAMERA_POSITION_LOCKED
syn keyword     lConstant CAMERA_POSITION_THRESHOLD
syn keyword     lConstant CHANGED_ALLOWED_DROP
syn keyword     lConstant CHANGED_COLOR
syn keyword     lConstant CHANGED_INVENTORY
syn keyword     lConstant CHANGED_LINK
syn keyword     lConstant CHANGED_OWNER
syn keyword     lConstant CHANGED_REGION
syn keyword     lConstant CHANGED_REGION_START
syn keyword     lConstant CHANGED_SCALE
syn keyword     lConstant CHANGED_SHAPE
syn keyword     lConstant CHANGED_TELEPORT
syn keyword     lConstant CHANGED_TEXTURE
syn keyword     lConstant CLICK_ACTION_BUY
syn keyword     lConstant CLICK_ACTION_NONE
syn keyword     lConstant CLICK_ACTION_OPEN
syn keyword     lConstant CLICK_ACTION_OPEN_MEDIA
syn keyword     lConstant CLICK_ACTION_PAY
syn keyword     lConstant CLICK_ACTION_PLAY
syn keyword     lConstant CLICK_ACTION_SIT
syn keyword     lConstant CLICK_ACTION_TOUCH
syn keyword     lConstant CONTROL_BACK
syn keyword     lConstant CONTROL_DOWN
syn keyword     lConstant CONTROL_FWD
syn keyword     lConstant CONTROL_LBUTTON
syn keyword     lConstant CONTROL_LEFT
syn keyword     lConstant CONTROL_ML_LBUTTON
syn keyword     lConstant CONTROL_RIGHT
syn keyword     lConstant CONTROL_ROT_LEFT
syn keyword     lConstant CONTROL_ROT_RIGHT
syn keyword     lConstant CONTROL_UP
syn keyword     lConstant DATA_BORN
syn keyword     lConstant DATA_NAME
syn keyword     lConstant DATA_ONLINE
syn keyword     lConstant DATA_PAYINFO
syn keyword     lConstant DATA_RATING
syn keyword     lConstant DATA_SIM_POS
syn keyword     lConstant DATA_SIM_RATING
syn keyword     lConstant DATA_SIM_STATUS
syn keyword     lConstant DEBUG_CHANNEL
syn keyword     lConstant DEG_TO_RAD
syn keyword     lConstant EOF
syn keyword     lConstant FALSE
syn keyword     lConstant HTTP_BODY_MAXLENGTH
syn keyword     lConstant HTTP_BODY_TRUNCATED
syn keyword     lConstant HTTP_METHOD
syn keyword     lConstant HTTP_MIMETYPE
syn keyword     lConstant HTTP_VERIFY_CERT
syn keyword     lConstant INVENTORY_ALL
syn keyword     lConstant INVENTORY_ANIMATION
syn keyword     lConstant INVENTORY_BODYPART
syn keyword     lConstant INVENTORY_CLOTHING
syn keyword     lConstant INVENTORY_GESTURE
syn keyword     lConstant INVENTORY_LANDMARK
syn keyword     lConstant INVENTORY_NONE
syn keyword     lConstant INVENTORY_NOTECARD
syn keyword     lConstant INVENTORY_OBJECT
syn keyword     lConstant INVENTORY_SCRIPT
syn keyword     lConstant INVENTORY_SOUND
syn keyword     lConstant INVENTORY_TEXTURE
syn keyword     lConstant LAND_LARGE_BRUSH
syn keyword     lConstant LAND_LEVEL
syn keyword     lConstant LAND_LOWER
syn keyword     lConstant LAND_MEDIUM_BRUSH
syn keyword     lConstant LAND_NOISE
syn keyword     lConstant LAND_RAISE
syn keyword     lConstant LAND_REVERT
syn keyword     lConstant LAND_SMALL_BRUSH
syn keyword     lConstant LAND_SMOOTH
syn keyword     lConstant LINK_ALL_CHILDREN
syn keyword     lConstant LINK_ALL_OTHERS
syn keyword     lConstant LINK_ROOT
syn keyword     lConstant LINK_SET
syn keyword     lConstant LINK_THIS
syn keyword     lConstant LIST_STAT_GEOMETRIC_MEAN
syn keyword     lConstant LIST_STAT_MAX
syn keyword     lConstant LIST_STAT_MEAN
syn keyword     lConstant LIST_STAT_MEDIAN
syn keyword     lConstant LIST_STAT_MIN
syn keyword     lConstant LIST_STAT_NUM_COUNT
syn keyword     lConstant LIST_STAT_RANGE
syn keyword     lConstant LIST_STAT_STD_DEV
syn keyword     lConstant LIST_STAT_SUM
syn keyword     lConstant LIST_STAT_SUM_SQUARES
syn keyword     lConstant LOOP
syn keyword     lConstant MASK_BASE
syn keyword     lConstant MASK_EVERYONE
syn keyword     lConstant MASK_GROUP
syn keyword     lConstant MASK_NEXT
syn keyword     lConstant MASK_OWNER
syn keyword     lConstant NULL_KEY
syn keyword     lConstant OBJECT_CREATOR
syn keyword     lConstant OBJECT_DESC
syn keyword     lConstant OBJECT_GROUP
syn keyword     lConstant OBJECT_NAME
syn keyword     lConstant OBJECT_OWNER
syn keyword     lConstant OBJECT_POS
syn keyword     lConstant OBJECT_ROT
syn keyword     lConstant OBJECT_UNKNOWN_DETAIL
syn keyword     lConstant OBJECT_VELOCITY
syn keyword     lConstant PARCEL_COUNT_GROUP
syn keyword     lConstant PARCEL_COUNT_OTHER
syn keyword     lConstant PARCEL_COUNT_OWNER
syn keyword     lConstant PARCEL_COUNT_SELECTED
syn keyword     lConstant PARCEL_COUNT_TEMP
syn keyword     lConstant PARCEL_COUNT_TOTAL
syn keyword     lConstant PARCEL_DETAILS_AREA
syn keyword     lConstant PARCEL_DETAILS_DESC
syn keyword     lConstant PARCEL_DETAILS_GROUP
syn keyword     lConstant PARCEL_DETAILS_NAME
syn keyword     lConstant PARCEL_DETAILS_OWNER
syn keyword     lConstant PARCEL_FLAG_ALLOW_ALL_OBJECT_ENTRY
syn keyword     lConstant PARCEL_FLAG_ALLOW_CREATE_OBJECTS
syn keyword     lConstant PARCEL_FLAG_ALLOW_DAMAGE
syn keyword     lConstant PARCEL_FLAG_ALLOW_FLY
syn keyword     lConstant PARCEL_FLAG_ALLOW_GROUP_OBJECT_ENTRY
syn keyword     lConstant PARCEL_FLAG_ALLOW_GROUP_SCRIPTS
syn keyword     lConstant PARCEL_FLAG_ALLOW_LANDMARK
syn keyword     lConstant PARCEL_FLAG_ALLOW_SCRIPTS
syn keyword     lConstant PARCEL_FLAG_ALLOW_TERRAFORM
syn keyword     lConstant PARCEL_FLAG_LOCAL_SOUND_ONLY
syn keyword     lConstant PARCEL_FLAG_RESTRICT_PUSHOBJECT
syn keyword     lConstant PARCEL_FLAG_USE_ACCESS_GROUP
syn keyword     lConstant PARCEL_FLAG_USE_ACCESS_LIST
syn keyword     lConstant PARCEL_FLAG_USE_BAN_LIST
syn keyword     lConstant PARCEL_FLAG_USE_LAND_PASS_LIST
syn keyword     lConstant PARCEL_MEDIA_COMMAND_AGENT
syn keyword     lConstant PARCEL_MEDIA_COMMAND_AUTO_ALIGN
syn keyword     lConstant PARCEL_MEDIA_COMMAND_DESC
syn keyword     lConstant PARCEL_MEDIA_COMMAND_LOOP
syn keyword     lConstant PARCEL_MEDIA_COMMAND_PAUSE
syn keyword     lConstant PARCEL_MEDIA_COMMAND_PLAY
syn keyword     lConstant PARCEL_MEDIA_COMMAND_SIZE
syn keyword     lConstant PARCEL_MEDIA_COMMAND_STOP
syn keyword     lConstant PARCEL_MEDIA_COMMAND_TEXTURE
syn keyword     lConstant PARCEL_MEDIA_COMMAND_TIME
syn keyword     lConstant PARCEL_MEDIA_COMMAND_TYPE
syn keyword     lConstant PARCEL_MEDIA_COMMAND_UNLOAD
syn keyword     lConstant PARCEL_MEDIA_COMMAND_URL
syn keyword     lConstant PASSIVE
syn keyword     lConstant PAY_DEFAULT
syn keyword     lConstant PAY_HIDE
syn keyword     lConstant PAYMENT_INFO_ON_FILE
syn keyword     lConstant PAYMENT_INFO_USED
syn keyword     lConstant PERM_ALL
syn keyword     lConstant PERM_COPY
syn keyword     lConstant PERM_MODIFY
syn keyword     lConstant PERM_MOVE
syn keyword     lConstant PERM_TRANSFER
syn keyword     lConstant PERMISSION_ATTACH
syn keyword     lConstant PERMISSION_CHANGE_LINKS
syn keyword     lConstant PERMISSION_CONTROL_CAMERA
syn keyword     lConstant PERMISSION_DEBIT
syn keyword     lConstant PERMISSION_TAKE_CONTROLS
syn keyword     lConstant PERMISSION_TRACK_CAMERA
syn keyword     lConstant PERMISSION_TRIGGER_ANIMATION
syn keyword     lConstant PI
syn keyword     lConstant PI_BY_TWO
syn keyword     lConstant PING_PONG
syn keyword     lConstant PRIM_BUMP_BARK
syn keyword     lConstant PRIM_BUMP_BLOBS
syn keyword     lConstant PRIM_BUMP_BRICKS
syn keyword     lConstant PRIM_BUMP_BRIGHT
syn keyword     lConstant PRIM_BUMP_CHECKER
syn keyword     lConstant PRIM_BUMP_CONCRETE
syn keyword     lConstant PRIM_BUMP_DARK
syn keyword     lConstant PRIM_BUMP_DISKS
syn keyword     lConstant PRIM_BUMP_GRAVEL
syn keyword     lConstant PRIM_BUMP_LARGETILE
syn keyword     lConstant PRIM_BUMP_NONE
syn keyword     lConstant PRIM_BUMP_SHINY
syn keyword     lConstant PRIM_BUMP_SIDING
syn keyword     lConstant PRIM_BUMP_STONE
syn keyword     lConstant PRIM_BUMP_STUCCO
syn keyword     lConstant PRIM_BUMP_SUCTION
syn keyword     lConstant PRIM_BUMP_TILE
syn keyword     lConstant PRIM_BUMP_WEAVE
syn keyword     lConstant PRIM_BUMP_WOOD
syn keyword     lConstant PRIM_CAST_SHADOWS
syn keyword     lConstant PRIM_COLOR
syn keyword     lConstant PRIM_FLEXIBLE
syn keyword     lConstant PRIM_FULLBRIGHT
syn keyword     lConstant PRIM_GLOW
syn keyword     lConstant PRIM_HOLE_CIRCLE
syn keyword     lConstant PRIM_HOLE_DEFAULT
syn keyword     lConstant PRIM_HOLE_SQUARE
syn keyword     lConstant PRIM_HOLE_TRIANGLE
syn keyword     lConstant PRIM_MATERIAL
syn keyword     lConstant PRIM_MATERIAL_FLESH
syn keyword     lConstant PRIM_MATERIAL_GLASS
syn keyword     lConstant PRIM_MATERIAL_LIGHT
syn keyword     lConstant PRIM_MATERIAL_METAL
syn keyword     lConstant PRIM_MATERIAL_PLASTIC
syn keyword     lConstant PRIM_MATERIAL_RUBBER
syn keyword     lConstant PRIM_MATERIAL_STONE
syn keyword     lConstant PRIM_MATERIAL_WOOD
syn keyword     lConstant PRIM_PHANTOM
syn keyword     lConstant PRIM_PHYSICS
syn keyword     lConstant PRIM_POINT_LIGHT
syn keyword     lConstant PRIM_POSITION
syn keyword     lConstant PRIM_ROTATION
syn keyword     lConstant PRIM_SCULPT_FLAG_INVERT
syn keyword     lConstant PRIM_SCULPT_FLAG_MIRROR
syn keyword     lConstant PRIM_SCULPT_TYPE_CYLINDER
syn keyword     lConstant PRIM_SCULPT_TYPE_MASK
syn keyword     lConstant PRIM_SCULPT_TYPE_PLANE
syn keyword     lConstant PRIM_SCULPT_TYPE_SPHERE
syn keyword     lConstant PRIM_SCULPT_TYPE_TORUS
syn keyword     lConstant PRIM_SHINY_HIGH
syn keyword     lConstant PRIM_SHINY_LOW
syn keyword     lConstant PRIM_SHINY_MEDIUM
syn keyword     lConstant PRIM_SHINY_NONE
syn keyword     lConstant PRIM_SIZE
syn keyword     lConstant PRIM_TEMP_ON_REZ
syn keyword     lConstant PRIM_TEXGEN
syn keyword     lConstant PRIM_TEXGEN_DEFAULT
syn keyword     lConstant PRIM_TEXGEN_PLANAR
syn keyword     lConstant PRIM_TEXTURE
syn keyword     lConstant PRIM_TYPE
syn keyword     lConstant PRIM_TYPE_BOX
syn keyword     lConstant PRIM_TYPE_CYLINDER
syn keyword     lConstant PRIM_TYPE_PRISM
syn keyword     lConstant PRIM_TYPE_RING
syn keyword     lConstant PRIM_TYPE_SCULPT
syn keyword     lConstant PRIM_TYPE_SPHERE
syn keyword     lConstant PRIM_TYPE_TORUS
syn keyword     lConstant PRIM_TYPE_TUBE
syn keyword     lConstant PSYS_PART_BOUNCE_MASK
syn keyword     lConstant PSYS_PART_EMISSIVE_MASK
syn keyword     lConstant PSYS_PART_END_ALPHA
syn keyword     lConstant PSYS_PART_END_COLOR
syn keyword     lConstant PSYS_PART_END_SCALE
syn keyword     lConstant PSYS_PART_FLAGS
syn keyword     lConstant PSYS_PART_FOLLOW_SRC_MASK
syn keyword     lConstant PSYS_PART_FOLLOW_VELOCITY_MASK
syn keyword     lConstant PSYS_PART_INTERP_COLOR_MASK
syn keyword     lConstant PSYS_PART_INTERP_SCALE_MASK
syn keyword     lConstant PSYS_PART_MAX_AGE
syn keyword     lConstant PSYS_PART_START_ALPHA
syn keyword     lConstant PSYS_PART_START_COLOR
syn keyword     lConstant PSYS_PART_START_SCALE
syn keyword     lConstant PSYS_PART_TARGET_LINEAR_MASK
syn keyword     lConstant PSYS_PART_TARGET_POS_MASK
syn keyword     lConstant PSYS_PART_WIND_MASK
syn keyword     lConstant PSYS_SRC_ACCEL
syn keyword     lConstant PSYS_SRC_ANGLE_BEGIN
syn keyword     lConstant PSYS_SRC_ANGLE_END
syn keyword     lConstant PSYS_SRC_BURST_PART_COUNT
syn keyword     lConstant PSYS_SRC_BURST_RADIUS
syn keyword     lConstant PSYS_SRC_BURST_RATE
syn keyword     lConstant PSYS_SRC_BURST_SPEED_MAX
syn keyword     lConstant PSYS_SRC_BURST_SPEED_MIN
syn keyword     lConstant PSYS_SRC_INNERANGLE
syn keyword     lConstant PSYS_SRC_MAX_AGE
syn keyword     lConstant PSYS_SRC_OMEGA
syn keyword     lConstant PSYS_SRC_OUTERANGLE
syn keyword     lConstant PSYS_SRC_PATTERN
syn keyword     lConstant PSYS_SRC_PATTERN_ANGLE
syn keyword     lConstant PSYS_SRC_PATTERN_ANGLE_CONE
syn keyword     lConstant PSYS_SRC_PATTERN_ANGLE_CONE_EMPTY
syn keyword     lConstant PSYS_SRC_PATTERN_DROP
syn keyword     lConstant PSYS_SRC_PATTERN_EXPLODE
syn keyword     lConstant PSYS_SRC_TARGET_KEY
syn keyword     lConstant PSYS_SRC_TEXTURE
syn keyword     lConstant PUBLIC_CHANNEL
syn keyword     lConstant RAD_TO_DEG
syn keyword     lConstant REGION_FLAG_ALLOW_DAMAGE
syn keyword     lConstant REGION_FLAG_ALLOW_DIRECT_TELEPORT
syn keyword     lConstant REGION_FLAG_BLOCK_FLY
syn keyword     lConstant REGION_FLAG_BLOCK_TERRAFORM
syn keyword     lConstant REGION_FLAG_DISABLE_COLLISIONS
syn keyword     lConstant REGION_FLAG_DISABLE_PHYSICS
syn keyword     lConstant REGION_FLAG_FIXED_SUN
syn keyword     lConstant REGION_FLAG_RESTRICT_PUSHOBJECT
syn keyword     lConstant REGION_FLAG_SANDBOX
syn keyword     lConstant REMOTE_DATA_CHANNEL
syn keyword     lConstant REMOTE_DATA_REPLY
syn keyword     lConstant REMOTE_DATA_REQUEST
syn keyword     lConstant REVERSE
syn keyword     lConstant ROTATE
syn keyword     lConstant SCALE
syn keyword     lConstant SCRIPTED
syn keyword     lConstant SMOOTH
syn keyword     lConstant SQRT2
syn keyword     lConstant STATUS_BLOCK_GRAB
syn keyword     lConstant STATUS_CAST_SHADOWS
syn keyword     lConstant STATUS_DIE_AT_EDGE
syn keyword     lConstant STATUS_PHANTOM
syn keyword     lConstant STATUS_PHYSICS
syn keyword     lConstant STATUS_RETURN_AT_EDGE
syn keyword     lConstant STATUS_ROTATE_X
syn keyword     lConstant STATUS_ROTATE_Y
syn keyword     lConstant STATUS_ROTATE_Z
syn keyword     lConstant STATUS_SANDBOX
syn keyword     lConstant STRING_TRIM
syn keyword     lConstant STRING_TRIM_HEAD
syn keyword     lConstant STRING_TRIM_TAIL
syn keyword     lConstant TEXTURE_BLANK
syn keyword     lConstant TEXTURE_DEFAULT
syn keyword     lConstant TEXTURE_PLYWOOD
syn keyword     lConstant TEXTURE_TRANSPARENT
syn keyword     lConstant TOUCH_INVALID_FACE
syn keyword     lConstant TOUCH_INVALID_TEXCOORD
syn keyword     lConstant TOUCH_INVALID_VECTOR
syn keyword     lConstant TRUE
syn keyword     lConstant TWO_PI
syn keyword     lConstant TYPE_FLOAT
syn keyword     lConstant TYPE_INTEGER
syn keyword     lConstant TYPE_INVALID
syn keyword     lConstant TYPE_KEY
syn keyword     lConstant TYPE_ROTATION
syn keyword     lConstant TYPE_STRING
syn keyword     lConstant TYPE_VECTOR
syn keyword     lConstant URL_REQUEST_DENIED
syn keyword     lConstant URL_REQUEST_GRANTED
syn keyword     lConstant VEHICLE_ANGULAR_DEFLECTION_EFFICIENCY
syn keyword     lConstant VEHICLE_ANGULAR_DEFLECTION_TIMESCALE
syn keyword     lConstant VEHICLE_ANGULAR_FRICTION_TIMESCALE
syn keyword     lConstant VEHICLE_ANGULAR_MOTOR_DECAY_TIMESCALE
syn keyword     lConstant VEHICLE_ANGULAR_MOTOR_DIRECTION
syn keyword     lConstant VEHICLE_ANGULAR_MOTOR_TIMESCALE
syn keyword     lConstant VEHICLE_BANKING_EFFICIENCY
syn keyword     lConstant VEHICLE_BANKING_MIX
syn keyword     lConstant VEHICLE_BANKING_TIMESCALE
syn keyword     lConstant VEHICLE_BUOYANCY
syn keyword     lConstant VEHICLE_FLAG_CAMERA_DECOUPLED
syn keyword     lConstant VEHICLE_FLAG_HOVER_GLOBAL_HEIGHT
syn keyword     lConstant VEHICLE_FLAG_HOVER_TERRAIN_ONLY
syn keyword     lConstant VEHICLE_FLAG_HOVER_UP_ONLY
syn keyword     lConstant VEHICLE_FLAG_HOVER_WATER_ONLY
syn keyword     lConstant VEHICLE_FLAG_LIMIT_MOTOR_UP
syn keyword     lConstant VEHICLE_FLAG_LIMIT_ROLL_ONLY
syn keyword     lConstant VEHICLE_FLAG_MOUSELOOK_BANK
syn keyword     lConstant VEHICLE_FLAG_MOUSELOOK_STEER
syn keyword     lConstant VEHICLE_FLAG_NO_DEFLECTION_UP
syn keyword     lConstant VEHICLE_HOVER_EFFICIENCY
syn keyword     lConstant VEHICLE_HOVER_HEIGHT
syn keyword     lConstant VEHICLE_HOVER_TIMESCALE
syn keyword     lConstant VEHICLE_LINEAR_DEFLECTION_EFFICIENCY
syn keyword     lConstant VEHICLE_LINEAR_DEFLECTION_TIMESCALE
syn keyword     lConstant VEHICLE_LINEAR_FRICTION_TIMESCALE
syn keyword     lConstant VEHICLE_LINEAR_MOTOR_DECAY_TIMESCALE
syn keyword     lConstant VEHICLE_LINEAR_MOTOR_DIRECTION
syn keyword     lConstant VEHICLE_LINEAR_MOTOR_OFFSET
syn keyword     lConstant VEHICLE_LINEAR_MOTOR_TIMESCALE
syn keyword     lConstant VEHICLE_REFERENCE_FRAME
syn keyword     lConstant VEHICLE_TYPE_AIRPLANE
syn keyword     lConstant VEHICLE_TYPE_BALLOON
syn keyword     lConstant VEHICLE_TYPE_BOAT
syn keyword     lConstant VEHICLE_TYPE_CAR
syn keyword     lConstant VEHICLE_TYPE_NONE
syn keyword     lConstant VEHICLE_TYPE_SLED
syn keyword     lConstant VEHICLE_VERTICAL_ATTRACTION_EFFICIENCY
syn keyword     lConstant VEHICLE_VERTICAL_ATTRACTION_TIMESCALE
syn keyword     lConstant ZERO_ROTATION
syn keyword     lConstant ZERO_VECTOR

" Events
syn keyword     lEvent at_rot_target
syn keyword     lEvent at_target
syn keyword     lEvent attach
syn keyword     lEvent changed
syn keyword     lEvent collision
syn keyword     lEvent collision_end
syn keyword     lEvent collision_start
syn keyword     lEvent control
syn keyword     lEvent dataserver
syn keyword     lEvent email
syn keyword     lEvent http_request
syn keyword     lEvent http_response
syn keyword     lEvent land_collision
syn keyword     lEvent land_collision_end
syn keyword     lEvent land_collision_start
syn keyword     lEvent link_message
syn keyword     lEvent listen
syn keyword     lEvent money
syn keyword     lEvent moving_end
syn keyword     lEvent moving_start
syn keyword     lEvent no_sensor
syn keyword     lEvent not_at_rot_target
syn keyword     lEvent not_at_target
syn keyword     lEvent object_rez
syn keyword     lEvent on_rez
syn keyword     lEvent remote_data
syn keyword     lEvent run_time_permissions
syn keyword     lEvent sensor
syn keyword     lEvent state_entry
syn keyword     lEvent state_exit
syn keyword     lEvent timer
syn keyword     lEvent touch
syn keyword     lEvent touch_end
syn keyword     lEvent touch_start

" Built-in functions
syn keyword lFunction llAbs
syn keyword lFunction llAcos
syn keyword lFunction llAddToLandBanList
syn keyword lFunction llAddToLandPassList
syn keyword lFunction llAdjustSoundVolume
syn keyword lFunction llAllowInventoryDrop
syn keyword lFunction llAngleBetween
syn keyword lFunction llApplyImpulse
syn keyword lFunction llApplyRotationalImpulse
syn keyword lFunction llAsin
syn keyword lFunction llAtan2
syn keyword lFunction llAttachToAvatar
syn keyword lFunction llAvatarOnSitTarget
syn keyword lFunction llAxes2Rot
syn keyword lFunction llAxisAngle2Rot
syn keyword lFunction llBase64ToInteger
syn keyword lFunction llBase64ToString
syn keyword lFunction llBreakAllLinks
syn keyword lFunction llBreakLink
syn keyword lFunction llCeil
syn keyword lFunction llClearCameraParams
syn keyword lFunction llCloseRemoteDataChannel
syn keyword lFunction llCloud
syn keyword lFunction llCollisionFilter
syn keyword lFunction llCollisionSound
syn keyword lFunction llCollisionSprite
syn keyword lFunction llCos
syn keyword lFunction llCreateLink
syn keyword lFunction llCSV2List
syn keyword lFunction llDeleteSubList
syn keyword lFunction llDeleteSubString
syn keyword lFunction llDetachFromAvatar
syn keyword lFunction llDetectedGrab
syn keyword lFunction llDetectedGroup
syn keyword lFunction llDetectedKey
syn keyword lFunction llDetectedLinkNumber
syn keyword lFunction llDetectedName
syn keyword lFunction llDetectedOwner
syn keyword lFunction llDetectedPos
syn keyword lFunction llDetectedRot
syn keyword lFunction llDetectedTouchBinormal
syn keyword lFunction llDetectedTouchFace
syn keyword lFunction llDetectedTouchNormal
syn keyword lFunction llDetectedTouchPos
syn keyword lFunction llDetectedTouchST
syn keyword lFunction llDetectedTouchUV
syn keyword lFunction llDetectedType
syn keyword lFunction llDetectedVel
syn keyword lFunction llDialog
syn keyword lFunction llDie
syn keyword lFunction llDumpList2String
syn keyword lFunction llEdgeOfWorld
syn keyword lFunction llEjectFromLand
syn keyword lFunction llEmail
syn keyword lFunction llEscapeURL
syn keyword lFunction llEuler2Rot
syn keyword lFunction llFabs
syn keyword lFunction llFloor
syn keyword lFunction llForceMouselook
syn keyword lFunction llFrand
syn keyword lFunction llGetAccel
syn keyword lFunction llGetAgentInfo
syn keyword lFunction llGetAgentLanguage
syn keyword lFunction llGetAgentSize
syn keyword lFunction llGetAlpha
syn keyword lFunction llGetAndResetTime
syn keyword lFunction llGetAnimation
syn keyword lFunction llGetAnimationList
syn keyword lFunction llGetAttached
syn keyword lFunction llGetBoundingBox
syn keyword lFunction llGetCameraPos
syn keyword lFunction llGetCameraRot
syn keyword lFunction llGetCenterOfMass
syn keyword lFunction llGetColor
syn keyword lFunction llGetCreator
syn keyword lFunction llGetDate
syn keyword lFunction llGetEnergy
syn keyword lFunction llGetForce
syn keyword lFunction llGetFreeMemory
syn keyword lFunction llGetFreeURLs
syn keyword lFunction llGetGeometricCenter
syn keyword lFunction llGetGMTclock
syn keyword lFunction llGetHTTPHeader
syn keyword lFunction llGetInventoryCreator
syn keyword lFunction llGetInventoryKey
syn keyword lFunction llGetInventoryName
syn keyword lFunction llGetInventoryNumber
syn keyword lFunction llGetInventoryPermMask
syn keyword lFunction llGetInventoryType
syn keyword lFunction llGetKey
syn keyword lFunction llGetLandOwnerAt
syn keyword lFunction llGetLinkKey
syn keyword lFunction llGetLinkName
syn keyword lFunction llGetLinkNumber
syn keyword lFunction llGetListEntryType
syn keyword lFunction llGetListLength
syn keyword lFunction llGetLocalPos
syn keyword lFunction llGetLocalRot
syn keyword lFunction llGetMass
syn keyword lFunction llGetNextEmail
syn keyword lFunction llGetNotecardLine
syn keyword lFunction llGetNumberOfNotecardLines
syn keyword lFunction llGetNumberOfPrims
syn keyword lFunction llGetNumberOfSides
syn keyword lFunction llGetObjectDesc
syn keyword lFunction llGetObjectDetails
syn keyword lFunction llGetObjectMass
syn keyword lFunction llGetObjectName
syn keyword lFunction llGetObjectPermMask
syn keyword lFunction llGetObjectPrimCount
syn keyword lFunction llGetOmega
syn keyword lFunction llGetOwner
syn keyword lFunction llGetOwnerKey
syn keyword lFunction llGetParcelDetails
syn keyword lFunction llGetParcelFlags
syn keyword lFunction llGetParcelMaxPrims
syn keyword lFunction llGetParcelPrimCount
syn keyword lFunction llGetParcelPrimOwners
syn keyword lFunction llGetPermissions
syn keyword lFunction llGetPermissionsKey
syn keyword lFunction llGetPos
syn keyword lFunction llGetPrimitiveParams
syn keyword lFunction llGetRegionAgentCount
syn keyword lFunction llGetRegionCorner
syn keyword lFunction llGetRegionFlags
syn keyword lFunction llGetRegionFPS
syn keyword lFunction llGetRegionName
syn keyword lFunction llGetRegionTimeDilation
syn keyword lFunction llGetRootPosition
syn keyword lFunction llGetRootRotation
syn keyword lFunction llGetRot
syn keyword lFunction llGetScale
syn keyword lFunction llGetScriptName
syn keyword lFunction llGetScriptState
syn keyword lFunction llGetSimulatorHostname
syn keyword lFunction llGetStartParameter
syn keyword lFunction llGetStatus
syn keyword lFunction llGetSubString
syn keyword lFunction llGetSunDirection
syn keyword lFunction llGetTexture
syn keyword lFunction llGetTextureOffset
syn keyword lFunction llGetTextureRot
syn keyword lFunction llGetTextureScale
syn keyword lFunction llGetTime
syn keyword lFunction llGetTimeOfDay
syn keyword lFunction llGetTimestamp
syn keyword lFunction llGetTorque
syn keyword lFunction llGetUnixTime
syn keyword lFunction llGetVel
syn keyword lFunction llGetWallclock
syn keyword lFunction llGiveInventory
syn keyword lFunction llGiveInventoryList
syn keyword lFunction llGiveMoney
syn keyword lFunction llGodLikeRezObject
syn keyword lFunction llGround
syn keyword lFunction llGroundContour
syn keyword lFunction llGroundNormal
syn keyword lFunction llGroundRepel
syn keyword lFunction llGroundSlope
syn keyword lFunction llHTTPRequest
syn keyword lFunction llHTTPResponse
syn keyword lFunction llInsertString
syn keyword lFunction llInstantMessage
syn keyword lFunction llIntegerToBase64
syn keyword lFunction llKey2Name
syn keyword lFunction llList2CSV
syn keyword lFunction llList2Float
syn keyword lFunction llList2Integer
syn keyword lFunction llList2Key
syn keyword lFunction llList2List
syn keyword lFunction llList2ListStrided
syn keyword lFunction llList2Rot
syn keyword lFunction llList2String
syn keyword lFunction llList2Vector
syn keyword lFunction llListen
syn keyword lFunction llListenControl
syn keyword lFunction llListenRemove
syn keyword lFunction llListFindList
syn keyword lFunction llListInsertList
syn keyword lFunction llListRandomize
syn keyword lFunction llListReplaceList
syn keyword lFunction llListSort
syn keyword lFunction llListStatistics
syn keyword lFunction llLoadURL
syn keyword lFunction llLog
syn keyword lFunction llLog10
syn keyword lFunction llLookAt
syn keyword lFunction llLoopSound
syn keyword lFunction llLoopSoundMaster
syn keyword lFunction llLoopSoundSlave
syn keyword lFunction llMakeExplosion
syn keyword lFunction llMakeFire
syn keyword lFunction llMakeFountain
syn keyword lFunction llMakeSmoke
syn keyword lFunction llMapDestination
syn keyword lFunction llMD5String
syn keyword lFunction llMessageLinked
syn keyword lFunction llMinEventDelay
syn keyword lFunction llModifyLand
syn keyword lFunction llModPow
syn keyword lFunction llMoveToTarget
syn keyword lFunction llOffsetTexture
syn keyword lFunction llOpenRemoteDataChannel
syn keyword lFunction llOverMyLand
syn keyword lFunction llOwnerSay
syn keyword lFunction llParcelMediaCommandList
syn keyword lFunction llParcelMediaQuery
syn keyword lFunction llParseString2List
syn keyword lFunction llParseStringKeepNulls
syn keyword lFunction llParticleSystem
syn keyword lFunction llPassCollisions
syn keyword lFunction llPassTouches
syn keyword lFunction llPlaySound
syn keyword lFunction llPlaySoundSlave
syn keyword lFunction llPointAt
syn keyword lFunction llPow
syn keyword lFunction llPreloadSound
syn keyword lFunction llPushObject
syn keyword lFunction llRefreshPrimURL
syn keyword lFunction llRegionSay
syn keyword lFunction llReleaseCamera
syn keyword lFunction llReleaseControls
syn keyword lFunction llReleaseURL
syn keyword lFunction llRemoteDataReply
syn keyword lFunction llRemoteDataSetRegion
syn keyword lFunction llRemoteLoadScriptPin
syn keyword lFunction llRemoveFromLandBanList
syn keyword lFunction llRemoveFromLandPassList
syn keyword lFunction llRemoveInventory
syn keyword lFunction llRemoveVehicleFlags
syn keyword lFunction llRequestAgentData
syn keyword lFunction llRequestInventoryData
syn keyword lFunction llRequestPermissions
syn keyword lFunction llRequestSecureURL
syn keyword lFunction llRequestSimulatorData
syn keyword lFunction llRequestURL
syn keyword lFunction llResetLandBanList
syn keyword lFunction llResetLandPassList
syn keyword lFunction llResetOtherScript
syn keyword lFunction llResetScript
syn keyword lFunction llResetTime
syn keyword lFunction llRezAtRoot
syn keyword lFunction llRezObject
syn keyword lFunction llRot2Angle
syn keyword lFunction llRot2Axis
syn keyword lFunction llRot2Euler
syn keyword lFunction llRot2Fwd
syn keyword lFunction llRot2Left
syn keyword lFunction llRot2Up
syn keyword lFunction llRotateTexture
syn keyword lFunction llRotBetween
syn keyword lFunction llRotLookAt
syn keyword lFunction llRotTarget
syn keyword lFunction llRotTargetRemove
syn keyword lFunction llRound
syn keyword lFunction llSameGroup
syn keyword lFunction llSay
syn keyword lFunction llScaleTexture
syn keyword lFunction llScriptDanger
syn keyword lFunction llSendRemoteData
syn keyword lFunction llSensor
syn keyword lFunction llSensorRemove
syn keyword lFunction llSensorRepeat
syn keyword lFunction llSetAlpha
syn keyword lFunction llSetBuoyancy
syn keyword lFunction llSetCameraAtOffset
syn keyword lFunction llSetCameraEyeOffset
syn keyword lFunction llSetCameraParams
syn keyword lFunction llSetClickAction
syn keyword lFunction llSetColor
syn keyword lFunction llSetDamage
syn keyword lFunction llSetForce
syn keyword lFunction llSetForceAndTorque
syn keyword lFunction llSetHoverHeight
syn keyword lFunction llSetInventoryPermMask
syn keyword lFunction llSetLinkAlpha
syn keyword lFunction llSetLinkColor
syn keyword lFunction llSetLinkPrimitiveParams
syn keyword lFunction llSetLinkTexture
syn keyword lFunction llSetLocalRot
syn keyword lFunction llSetObjectDesc
syn keyword lFunction llSetObjectName
syn keyword lFunction llSetObjectPermMask
syn keyword lFunction llSetParcelMusicURL
syn keyword lFunction llSetPayPrice
syn keyword lFunction llSetPos
syn keyword lFunction llSetPrimitiveParams
syn keyword lFunction llSetPrimURL
syn keyword lFunction llSetRemoteScriptAccessPin
syn keyword lFunction llSetRot
syn keyword lFunction llSetScale
syn keyword lFunction llSetScriptState
syn keyword lFunction llSetSitText
syn keyword lFunction llSetSoundQueueing
syn keyword lFunction llSetSoundRadius
syn keyword lFunction llSetStatus
syn keyword lFunction llSetText
syn keyword lFunction llSetTexture
syn keyword lFunction llSetTextureAnim
syn keyword lFunction llSetTimerEvent
syn keyword lFunction llSetTorque
syn keyword lFunction llSetTouchText
syn keyword lFunction llSetVehicleFlags
syn keyword lFunction llSetVehicleFloatParam
syn keyword lFunction llSetVehicleRotationParam
syn keyword lFunction llSetVehicleType
syn keyword lFunction llSetVehicleVectorParam
syn keyword lFunction llSHA1String
syn keyword lFunction llShout
syn keyword lFunction llSin
syn keyword lFunction llSitTarget
syn keyword lFunction llSleep
syn keyword lFunction llSound
syn keyword lFunction llSoundPreload
syn keyword lFunction llSqrt
syn keyword lFunction llStartAnimation
syn keyword lFunction llStopAnimation
syn keyword lFunction llStopHover
syn keyword lFunction llStopLookAt
syn keyword lFunction llStopMoveToTarget
syn keyword lFunction llStopPointAt
syn keyword lFunction llStopSound
syn keyword lFunction llStringLength
syn keyword lFunction llStringToBase64
syn keyword lFunction llStringTrim
syn keyword lFunction llSubStringIndex
syn keyword lFunction llTakeCamera
syn keyword lFunction llTakeControls
syn keyword lFunction llTan
syn keyword lFunction llTarget
syn keyword lFunction llTargetOmega
syn keyword lFunction llTargetRemove
syn keyword lFunction llTeleportAgentHome
syn keyword lFunction llTextBox
syn keyword lFunction llToLower
syn keyword lFunction llToUpper
syn keyword lFunction llTriggerSound
syn keyword lFunction llTriggerSoundLimited
syn keyword lFunction llUnescapeURL
syn keyword lFunction llUnSit
syn keyword lFunction llVecDist
syn keyword lFunction llVecMag
syn keyword lFunction llVecNorm
syn keyword lFunction llVolumeDetect
syn keyword lFunction llWater
syn keyword lFunction llWhisper
syn keyword lFunction llWind
syn keyword lFunction llXorBase64StringsCorrect

" Deprecated functions
syn keyword lDeprecated llSound llSoundPreload llRemoteLoadScript llMakeExplosion llMakeFire llMakeFountain llMakeSmoke llXorBase64Strings llPointAt llStopPointAt
" Deprecated constants (as of 1.5.x)
syn keyword lDeprecated PSYS_SRC_INNERANGLE PSYS_SRC_OUTERANGLE

if version >= 508 || !exists("did_b_syntax_inits")
   if version < 508
      let did_b_syntax_inits = 1
      command -nargs=+ HiLink hi link <args>
   else
      command -nargs=+ HiLink hi def link <args>
   endif
  HiLink lLabel                 Label
  HiLink lConditional           Conditional
  HiLink lRepeat                Repeat
"  HiLink cCharacter            Character
  HiLink lNumber                Number
"  HiLink cOctalZero            PreProc  " link this to Error if you want
  HiLink lFloat                 Float
  HiLink lOperator              Operator
  HiLink lVecQuatXYZS           Operator
  HiLink lFunction              Function
  HiLink lEvent                 Statement
"  HiLink cStorageClass         StorageClass
"  HiLink cInclude              Include
"  HiLink cPreProc              PreProc
"  HiLink cDefine               Macro
"  HiLink cError                Error
  HiLink lStatement             Statement
"  HiLink cPreCondit            PreCondit
  HiLink lSpecial               SpecialChar
  HiLink lType                  Type
  HiLink lConstant              Constant
  HiLink lString                String
  HiLink lComment               Comment
  HiLink lDeprecated            Error
  HiLink lTodo                  Todo

  delcommand HiLink
endif

let b:current_syntax = "lsl"

" vim: ts=8

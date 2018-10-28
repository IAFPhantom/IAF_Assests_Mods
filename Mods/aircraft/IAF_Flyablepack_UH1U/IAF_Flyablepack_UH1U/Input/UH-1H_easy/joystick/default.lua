local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

return {


forceFeedback = {
trimmer = 1.0,
shake = 0.5,
swapAxes = false,
},

keyCommands = {

-- General
{down = iCommandQuit, name = _('End mission'), category = _('General')},
{down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
{down = iCommandInfoOnOff, name = _('Info bar toggle'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get New Plane - respawn'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
{down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toggle'), category = _('General')},
--{down = iCommandCockpitShowPilotOnOff, name = _('Pilot Body'), category = _('General')},
{down = iCommandPlane_ShowControls, name = _('Controls position') , category = _('General')},
{down = iCommandActivePauseOnOff, name = _('Active Pause'), category = _('Cheat')},
{down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{down = iCommandDebriefing, name = _('Debriefing window'), category = _('General')},
{down = iCommandViewBriefing, name = _('Briefing Window'), category = _('General')},
{down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},

-- View                                                    
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UR'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DR'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DL'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UL'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN3'}}, pressed = iCommandViewCenter, name = _('Center View'), category = _('View')},

{pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},
{down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View')},
{down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View')},
{down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View')},
{down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View')},

{down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{down = iCommandViewChaseArcade, name = _('F4 Arcade Chase view'), category = _('View')},
{down = iCommandViewFight, name = _('F5 Nearest AC view'), category = _('View')},
{down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
{down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
{down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},

{down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
{down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
{down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
{down = iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
{down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
{down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},

-- View Cockpit
{down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
--// Save current cockpit camera angles for fast numpad jumps  
{down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')},
{pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

--{down = iCommandViewCockpitChangeSeat, name = _('Change Seat'), category = _('View Cockpit')},

{down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},
--{down = iCommandViewPanToggle, name = _('Camera pan mode toggle'), category = _('View Cockpit')},

{down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRightSlow, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{down = iCommandViewSnapView0, up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{down = iCommandViewSnapView1, up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{down = iCommandViewSnapView2, up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{down = iCommandViewSnapView3, up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{down = iCommandViewSnapView4, up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{down = iCommandViewSnapView5, up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{down = iCommandViewSnapView6, up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{down = iCommandViewSnapView7, up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{down = iCommandViewSnapView8, up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{down = iCommandViewSnapView9, up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{down = iCommandViewPitHeadOnOff, name = _('Head shift movement on / off'), category = _('View Cockpit')},

{pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
{down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},

-- View Extended
{down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{down = iCommandViewKeepTerrain, name = _('Keep terrain camera altitude'), category = _('View Extended')},
{down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
{down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},

-- View Padlock
{down = iCommandViewLock, name = _('Lock view (cycle padlock)'), category = _('View Padlock')},
{down = iCommandViewUnlock, name = _('Unlock view (stop padlock)'), category = _('View Padlock')},
{down = iCommandAllMissilePadlock, name = _('All missiles padlock'), category = _('View Padlock')},
{down = iCommandThreatMissilePadlock, name = _('Threat missile padlock'), category = _('View Padlock')},
{down = iCommandViewTerrainLock, name = _('Lock terrain view'), category = _('View Padlock')},

-- Labels
{down = iCommandMarkerState, name = _('All Labels'), category = _('Labels')},
{down = iCommandMarkerStatePlane, name = _('Aircraft Labels'), category = _('Labels')},
{down = iCommandMarkerStateRocket, name = _('Missile Labels'), category = _('Labels')},
{down = iCommandMarkerStateShip, name = _('Vehicle & Ship Labels'), category = _('Labels')},


-- Ins Cyclick Stick
{pressed = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Cyclic nose down'), category = _('Controls')},
{pressed = iCommandPlaneDownStart, up = iCommandPlaneDownStop,  name = _('Cyclic nose up'), category = _('Controls')},
{pressed = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop,  name = _('Cyclic bank left'), category = _('Controls')},
{pressed = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Cyclic bank right'), category = _('Controls')},

{combos = defaultDeviceAssignmentFor("fire"), down = iCommandPlaneFire, up = iCommandPlaneFire, value_down = 1, value_up = 0, name = _('Pilot weapon release/Machinegun fire'), category = _('Weapons')},
{down = iCommandPlanePickleOn,    up = iCommandPlanePickleOn, value_down = 1, value_up = 0, name = _('Copilot weapon release'), category = _('Weapons')},

{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Pilot Trimmer'), category = _('Controls')},
{down = device_commands.Button_3, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Trimmer reset'), category = _('Controls')},

-- Ins Collective Stick

--SearchLight Control
{down = iCommandPlane_SpotLight_up, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Retract'), category = _('Ins Collective Stick')},
{down = iCommandPlane_SpotLight_down, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Extend'),  category = _('Ins Collective Stick')},
{down = iCommandPlane_SpotLight_left, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Left'),  category = _('Ins Collective Stick')},
{down = iCommandPlane_SpotLight_right, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Right'), category = _('Ins Collective Stick')},

--LandingLight Control
{down = device_commands.Button_12, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Landing Light Switch'), category = _('Controls')},

{down = device_commands.Button_7, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Landing light Extend'), category = _('Controls')},
{down = device_commands.Button_7, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 0.0, name = _('Landing light Stop'), category = _('Controls')},
{down = device_commands.Button_7, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = -1.0, name = _('Landing light Retract'), category = _('Controls')},

{down = device_commands.Button_6, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Search light On'), category = _('Controls')},
{down = device_commands.Button_6, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 0.0, name = _('Search light Off'), category = _('Controls')},
{down = device_commands.Button_6, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = -1.0, name = _('Search light Stow'), category = _('Controls')},

{down = iCommandPlaneCollectiveIncrease, pressed = iCommandPlaneCollectiveIncrease, up = iCommandPlaneCollectiveStop, name = _('Collective up'), category = _('Controls')},
{down = iCommandPlaneCollectiveDecrease, pressed = iCommandPlaneCollectiveDecrease, up = iCommandPlaneCollectiveStop, name = _('Collective down'), category = _('Controls')},

--Ins Rudder
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Rudder left'), category = _('Controls')},
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Rudder right'), category = _('Controls')},


-- Radio Communications
{down = iCommandToggleCommandMenu, name = _('Communication menu'), category = _('Radio Communications')},
{down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Radio Communications')},
{down = iCommandPlaneDoAndBack, name = _('Flight - complete mission and rejoin'), category = _('Radio Communications')},
{down = iCommandPlaneFormation, name = _('Toggle formation'), category = _('Radio Communications')},
{down = iCommandPlaneJoinUp, name = _('Join up formation'), category = _('Radio Communications')},
{down = iCommandPlaneAttackMyTarget, name = _('Attack my target'), category = _('Radio Communications')},
{down = iCommandPlaneCoverMySix, name = _('Cover me'), category = _('Radio Communications')},
{down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Radio Communications')},
{down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Radio Communications')},
{down = ICommandSwitchDialog, name = _('Switch dialog'), category = _('Communications')},
{down = ICommandSwitchToCommonDialog, name = _('Switch to main menu'), category = _('Communications')},
{down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id  = devices.INTERCOM, value_down = 1.0, value_up = 0.0, name = _("Pilot's radio trigger RADIO"), category = _('Ins Cyclic Stick')},

-- Auto Lock On
{down = iCommandAutoLockOnNearestAircraft, name = _('Auto lock on nearest aircraft'), category = _('Targeting')},
{down = iCommandAutoLockOnCenterAircraft, name = _('Auto lock on center aircraft'), category = _('Targeting')},
{down = iCommandAutoLockOnNextAircraft, name = _('Auto lock on next aircraft'), category = _('Targeting')},
{down = iCommandAutoLockOnPreviousAircraft, name = _('Auto lock on previous aircraft'), category = _('Targeting')},
{down = iCommandAutoLockOnNearestSurfaceTarget, name = _('Auto lock on nearest surface target'), category = _('Targeting')},
{down = iCommandAutoLockOnCenterSurfaceTarget, name = _('Auto lock on center surface target'), category = _('Targeting')},
{down = iCommandAutoLockOnNextSurfaceTarget, name = _('Auto lock on next surface target'), category = _('Targeting')},
{down = iCommandAutoLockOnPreviousSurfaceTarget, name = _('Auto lock on previous surface target'), category = _('Targeting')},
{down = iCommandAutoLockOnClear, name = _('Clear Selected Target'), category = _('Targeting')},
{down = iCommandEasyRadarOnOff, name = _('Easy Radar toggle'), category = _('Targeting')},
{down = device_commands.Button_5, cockpit_device_id = devices.FLEX_SIGHT, value_down = 0.0, name = _('Toggle Flexible Sight'), category = _('Targeting')},

{down = iCommandEasyRadarScaleUp , name = _('Easy Radar scale in') , category = _('Targeting')},
{down = iCommandEasyRadarScaleOut, name = _('Easy Radar scale out'), category = _('Targeting')},
{down = iCommandPlaneChangeWeapon, name = _('Cycle Weapon'), category = _('Weapons')},
{down = iCommandEnginesStart, name = _('Auto Start'), category = _('Cheat')},
{down = iCommandEnginesStop, name = _('Auto Stop') , category = _('Cheat')},


{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Jettison Switch'), category = _('Armament System')},
{down = device_commands.Button_25, cockpit_device_id  = devices.WEAPON_SYS, value_down = 0.0, name = _('Jettison Switch Cover'), category = _('Armament System')},
{down = device_commands.Button_22, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, name = _('Rocket Pair Increase'), category = _('Armament System')},
{down = device_commands.Button_22, cockpit_device_id  = devices.WEAPON_SYS, value_down = -1.0, name = _('Rocket Pair Decrease'), category = _('Armament System')},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Rocket Reset Button'), category = _('Armament System')},
{down = device_commands.Button_24, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, name = _('Gun Selector Switch Up'), category = _('Armament System')},
{down = device_commands.Button_24, cockpit_device_id  = devices.WEAPON_SYS, value_down = -1.0, name = _('Gun Selector Switch Down'), category = _('Armament System')},

{pressed = iCommandSelecterUp   , up = iCommandSelecterStop, name = _('Selector up')   , category = _('Targeting')},
{pressed = iCommandSelecterDown , up = iCommandSelecterStop, name = _('Selector down') , category = _('Targeting')},
{pressed = iCommandSelecterLeft , up = iCommandSelecterStop, name = _('Selector left') , category = _('Targeting')},
{pressed = iCommandSelecterRight, up = iCommandSelecterStop, name = _('Selector right'), category = _('Targeting')},

--- Kneeboard
{down = device_commands.Button_1, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = device_commands.Button_2, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = device_commands.Button_3	, cockpit_device_id = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},

{down = iCommandPlaneEject, name = _('Leave Helicopter (3 times)'), category = _('Systems')},

{down = device_commands.Button_1, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Pilot Seat'), category = _('View Cockpit')},
{down = device_commands.Button_2, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Operator Seat'), category = _('View Cockpit')},
{down = device_commands.Button_3, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Right Gunner Seat'), category = _('View Cockpit')},
{down = device_commands.Button_4, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Left Gunner Seat'), category = _('View Cockpit')},


{down = device_commands.Button_20, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Armament Off/Safe/Armed Up'), category = _('Armament System')},
{down = device_commands.Button_20, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Armament Off/Safe/Armed Down'), category = _('Armament System')},
{down = device_commands.Button_21, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Armament Selector Up'), category = _('Armament System')},
{down = device_commands.Button_21, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Armament Selector Down'), category = _('Armament System')},
{down = device_commands.Button_27, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Toggle Weapon Hints'), category = _('Cheat')},
{down = device_commands.Button_26, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot'), category = _('Cheat')},
{down = device_commands.Button_28, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot ATTITUDE HOLD'), category = _('Cheat')},
{down = device_commands.Button_29, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot LEVEL FLIGHT'), category = _('Cheat')},
{down = device_commands.Button_30, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot ORBIT'), category = _('Cheat')},

--Gunners AI Panel
{down = device_commands.Button_37, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AI Panel Show/Hide'), category = _('Gunners AI Panel')},

{down = device_commands.Button_38, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Left ROE Iterate'), category = _('Gunners AI Panel')},
{down = device_commands.Button_38, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Left Burst Switch'), category = _('Gunners AI Panel')},

{down = device_commands.Button_39, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Operator ROE Iterate'), category = _('Gunners AI Panel')},
{down = device_commands.Button_39, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Operator Burst Switch'), category = _('Gunners AI Panel')},

{down = device_commands.Button_40, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Right ROE Iterate'), category = _('Gunners AI Panel')},
{down = device_commands.Button_40, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Right Burst Switch'), category = _('Gunners AI Panel')},

},

axisCommands = {

-- joystick axes 
{combos = defaultDeviceAssignmentFor("roll")	,action = iCommandPlaneRoll, name = _('Flight Control Cyclic Roll')},
{combos = defaultDeviceAssignmentFor("pitch")	,action = iCommandPlanePitch, name = _('Flight Control Cyclic Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	,action = iCommandPlaneRudder, name = _('Flight Control Rudder')},
{combos = defaultDeviceAssignmentFor("thrust")	,action = iCommandPlaneCollective, name = _('Flight Control Collective')},

-- TrackIR axes
{action = iCommandViewVerticalAbs, name = _('Absolute Camera Vertical View')},
{action = iCommandViewHorizontalAbs, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewHorTransAbs, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs, name = _('Absolute Longitude Shift Camera View')},
{action = iCommandViewRollAbs, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewZoomAbs, name = _('Zoom View')},

},
}

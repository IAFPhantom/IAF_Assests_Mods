local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

return {
keyCommands = {

-- Cheat - Temporary
{combos = {{key = 'Home', reformers = {'LWin'}}}, down = iCommandEnginesStart, name = _('Auto Start'), category = _('Cheat')},
{combos = {{key = 'End' , reformers = {'LWin'}}} , down = iCommandEnginesStop, name = _('Auto Stop') , category = _('Cheat')},
{combos = {{key = 'Pause', reformers = {'LShift', 'LWin'}}}, down = iCommandActivePauseOnOff, name = _('Active Pause'), category = _('Cheat')},
--{combos = {{key = '1'}}, down = iCommandViewCockpitChangeSeat, name = _('Change Seat'), category = _('View Cockpit')},

-- General
{combos = {{key = 'Esc'}}, down = iCommandQuit, name = _('End mission'), category = _('General')},
{combos = {{key = 'Pause'}}, down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LCtrl'}}}, down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LAlt'}}}, down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LShift'}}}, down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{combos = {{key = 'Y', reformers = {'LCtrl'}}}, down = iCommandInfoOnOff, name = _('Info bar toggle'), category = _('General')},
{combos = {{key = 'Tab', reformers = {'RCtrl','RShift'}}}, down = iCommandRecoverHuman, name = _('Get New Plane - respawn'), category = _('General')},
{combos = {{key = 'C', reformers = {'LAlt'}}}, down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{combos = {{key = 'SysRQ'}}, down = iCommandScreenShot, name = _('Screenshot'), category = _('General'), disabled = true},
{combos = {{key = 'Pause', reformers = {'RCtrl'}}}, down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
{combos = {{key = 'Y', reformers = {'LAlt'}}}, down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toggle'), category = _('General')},
--{combos = {{key = 'P', reformers = {'RShift'}}}, down = iCommandCockpitShowPilotOnOff, name = _('Pilot Body'), category = _('General')},
{combos = {{key = 'Enter', reformers = {'RCtrl'}}}, down = iCommandPlane_ShowControls, name = _('Controls position') , category = _('General')},
{combos = {{key = 'B', reformers = {'LAlt'}}},				down = iCommandViewBriefing, name = _('Briefing Window'), category = _('General')},
{combos = {{key = '\''}}, 									down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
{combos = {{key = '\'', reformers = {'RShift'}}}, 			down = iCommandDebriefing, name = _('Debriefing window'), category = _('General')},
{combos = {{key = '\'', reformers = {'LAlt'}}}, 			down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{combos = {{key = 'J', reformers = {'RAlt'}}}, down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},

{combos = {{key = 'E', reformers = {'LCtrl'}}}, down = iCommandPlaneEject, name = _('Leave Helicopter (3 times)'), category = _('Systems')},



-- View                                                    
{combos = {{key = 'Num4'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'Num6'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'Num8'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'Num2'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'Num9'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'Num3'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'Num1'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'Num7'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'Num5'}}, pressed = iCommandViewCenter, name = _('Center View'), category = _('View')},

{combos = {{key = 'Num*'}}, pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{combos = {{key = 'Num/'}}, pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{combos = {{key = 'NumEnter'}}, down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'RCtrl'}}}, pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'RCtrl'}}}, pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{combos = {{key = 'NumEnter', reformers = {'RCtrl'}}}, down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'LAlt'}}}, down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'LAlt'}}}, down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},
{combos = {{key = 'PageDown', reformers = {'LCtrl'}}}, down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View')},
{combos = {{key = 'PageUp', reformers = {'LCtrl'}}}, down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View')},
{combos = {{key = 'Delete', reformers = {'LAlt'}}}, down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View')},
{combos = {{key = 'Insert', reformers = {'LAlt'}}}, down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View')},

{combos = {{key = 'F1'}}, down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LCtrl'}}}, down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LAlt'}}}, down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{combos = {{key = 'F2'}}, down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{combos = {{key = 'F2', reformers = {'LCtrl'}}}, down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{combos = {{key = 'F2', reformers = {'RAlt'}}}, down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{combos = {{key = 'F2', reformers = {'LAlt'}}}, down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{combos = {{key = 'F3'}}, down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{combos = {{key = 'F3', reformers = {'LCtrl'}}}, down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{combos = {{key = 'F4', reformers = {'LShift'}}}, down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{combos = {{key = 'F4', reformers = {'LCtrl'}}}, down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{combos = {{key = 'F4'}},down = iCommandViewChaseArcade, name = _('F4 Arcade Chase view'), category = _('View')},
{combos = {{key = 'F5'}}, down = iCommandViewFight, name = _('F5 Nearest AC view'), category = _('View')},
{combos = {{key = 'F5', reformers = {'LCtrl'}}}, down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{combos = {{key = 'F6'}}, down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{combos = {{key = 'F6', reformers = {'LCtrl'}}}, down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{combos = {{key = 'F7'}}, down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{combos = {{key = 'F8'}}, down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
{combos = {{key = 'F8', reformers = {'RAlt'}}}, down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
{combos = {{key = 'F9'}}, down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{combos = {{key = 'F9', reformers = {'LAlt'}}}, down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{combos = {{key = 'F10'}}, down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{combos = {{key = 'F10', reformers = {'LCtrl'}}}, down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{combos = {{key = 'F11'}}, down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{combos = {{key = 'F11', reformers = {'LCtrl'}}}, down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{combos = {{key = 'F12'}}, down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LCtrl'}}}, down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LShift'}}}, down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},

{combos = {{key = ']', reformers = {'LShift'}}}, down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
{combos = {{key = ']', reformers = {'LCtrl'}}}, down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
{combos = {{key = ']', reformers = {'LAlt'}}}, down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
{combos = {{key = '[', reformers = {'LShift'}}}, down =  iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
{combos = {{key = '[', reformers = {'LCtrl'}}}, down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
{combos = {{key = '[', reformers = {'LAlt'}}}, down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},

-- View Cockpit
{combos = {{key = 'Num0'}}, down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{combos = {{key = 'Num0', reformers = {'RCtrl'}}}, down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
--// Save current cockpit camera angles for fast numpad jumps  
{combos = {{key = 'Num0', reformers = {'RAlt'}}}, down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'RShift'}}}, pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RShift'}}}, pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RShift'}}}, pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RShift'}}}, pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RShift'}}}, pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RShift'}}}, pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RShift'}}}, pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RShift'}}}, pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RCtrl'}}}, down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl'}}}, down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl'}}}, down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl'}}}, down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RCtrl'}}}, down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RCtrl'}}}, down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RCtrl'}}}, down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RCtrl'}}}, down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},
--{combos = {{key = 'F1', reformers = {'RAlt'}}}, down = iCommandViewPanToggle, name = _('Camera pan mode toggle'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RAlt'}}}, down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RAlt'}}}, down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RAlt'}}}, down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RAlt'}}}, down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RAlt'}}}, down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RAlt'}}}, down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RAlt'}}}, down = iCommandViewCameraDownRight, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RAlt'}}}, down = iCommandViewCameraUpRightSlow, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RShift'}}}, down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl'}}}, down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RAlt'}}}, down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{combos = {{key = 'Num0', reformers = {'LWin'}}}, down = iCommandViewSnapView0, up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'LWin'}}}, down = iCommandViewSnapView1, up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'LWin'}}}, down = iCommandViewSnapView2, up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'LWin'}}}, down = iCommandViewSnapView3, up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'LWin'}}}, down = iCommandViewSnapView4, up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'LWin'}}}, down = iCommandViewSnapView5, up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'LWin'}}}, down = iCommandViewSnapView6, up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'LWin'}}}, down = iCommandViewSnapView7, up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'LWin'}}}, down = iCommandViewSnapView8, up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'LWin'}}}, down = iCommandViewSnapView9, up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{combos = {{key = 'F1', reformers = {'LWin'}}} , down = iCommandViewPitHeadOnOff, name = _('Head shift movement on / off'), category = _('View Cockpit')},

{combos = {{key = 'Num*', reformers = {'RShift'}}}, pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RShift'}}}, pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},

{down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},
{combos = {{key = 'F1', reformers = {'LShift'}}},  down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},

-- Cockpit Camera Motion 
{combos = {{key = 'Num8', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{combos = {{key = 'Num*', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RCtrl','RShift'}}, {key = 'Num-', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl','RShift'}}}, down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

-- View Extended
{combos = {{key = 'J', reformers = {'LShift'}}}, down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{combos = {{key = 'K', reformers = {'LAlt'}}}, down = iCommandViewKeepTerrain, name = _('Keep terrain camera altitude'), category = _('View Extended')},
{combos = {{key = 'Num+', reformers = {'RCtrl'}}}, down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
{combos = {{key = 'F', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{combos = {{key = 'D', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{combos = {{key = 'A', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},

-- View Padlock
{combos = {{key = 'Num.'}}, down = iCommandViewLock, name = _('Lock view (cycle padlock)'), category = _('View Padlock')},
{combos = {{key = 'NumLock'}}, down = iCommandViewUnlock, name = _('Unlock view (stop padlock)'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RShift'}}}, down = iCommandAllMissilePadlock, name = _('All missiles padlock'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RAlt'}}}, down = iCommandThreatMissilePadlock, name = _('Threat missile padlock'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RCtrl'}}}, down = iCommandViewTerrainLock, name = _('Lock terrain view'), category = _('View Padlock')},

-- Labels
{combos = {{key = 'F10', reformers = {'LShift'}}}, down = iCommandMarkerState, name = _('All Labels'), category = _('Labels')},
{combos = {{key = 'F2', reformers = {'LShift'}}}, down = iCommandMarkerStatePlane, name = _('Aircraft Labels'), category = _('Labels')},
{combos = {{key = 'F6', reformers = {'LShift'}}}, down = iCommandMarkerStateRocket, name = _('Missile Labels'), category = _('Labels')},
{combos = {{key = 'F9', reformers = {'LShift'}}}, down = iCommandMarkerStateShip, name = _('Vehicle & Ship Labels'), category = _('Labels')},

--- Kneeboard
{combos = {{key = ']'}}							, 	down = device_commands.Button_1, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{combos = {{key = '['}}							, 	down = device_commands.Button_2, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RShift'}}}, 	down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{combos = {{key = 'K'}}						   , 	down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RCtrl'}}} , 	down = device_commands.Button_3	, cockpit_device_id = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},


-- Ins Cyclick Stick
{combos = {{key = 'Space'}}, down = iCommandPlaneFire, up = iCommandPlaneFire, value_down = 1, value_up = 0, name = _('Pilot weapon release/Machinegun fire'), category = _('Weapons')},
{combos = {{key = 'Space',   reformers = {'RAlt'}}}, down = iCommandPlanePickleOn,    up = iCommandPlanePickleOn, value_down = 1, value_up = 0, name = _('Copilot weapon release'), category = _('Weapons')},


{combos = {{key = 'Up'}},    pressed = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Cyclic nose down'), category = _('Controls')},
{combos = {{key = 'Down'}},  pressed = iCommandPlaneDownStart, up = iCommandPlaneDownStop,  name = _('Cyclic nose up'), category = _('Controls')},
{combos = {{key = 'Left'}},  pressed = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop,  name = _('Cyclic bank left'), category = _('Controls')},
{combos = {{key = 'Right'}}, pressed = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Cyclic bank right'), category = _('Controls')},

{combos = {{key = 'T'}},  down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Pilot Trimmer'), category = _('Controls')},
{combos = {{key = 'T', reformers = {'LCtrl'}}}, down = device_commands.Button_3, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Trimmer reset'), category = _('Controls')},

-- Weapon System
{combos = {{key = ']', reformers = {'RShift'}}}, down = device_commands.Button_20, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Armament Off/Safe/Armed Up'), category = _('Armament System')},
{combos = {{key = '[', reformers = {'RShift'}}}, down = device_commands.Button_20, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Armament Off/Safe/Armed Down'), category = _('Armament System')},
{combos = {{key = ']', reformers = {'RAlt'}}}, down = device_commands.Button_21, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Armament Selector Up'), category = _('Armament System')},
{combos = {{key = '[', reformers = {'RAlt'}}}, down = device_commands.Button_21, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Armament Selector Down'), category = _('Armament System')},
{combos = {{key = ']', reformers = {'RCtrl'}}}, down = device_commands.Button_22, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Rocket Pair Increase'), category = _('Armament System')},
{combos = {{key = '[', reformers = {'RCtrl'}}}, down = device_commands.Button_22, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Rocket Pair Decrease'), category = _('Armament System')},
{combos = {{key = 'J'}}, down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Jettison Switch'), category = _('Armament System')},
{combos = {{key = 'J', reformers = {'LAlt'}}}, down = device_commands.Button_25, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('Jettison Switch Cover'), category = _('Armament System')},
{combos = {{key = 'R', reformers = {'LCtrl'}}}, down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Rocket Reset Button'), category = _('Armament System')},
{combos = {{key = ']', reformers = {'RAlt', 'RCtrl'}}}, down = device_commands.Button_24, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Gun Selector Switch Up'), category = _('Armament System')},
{combos = {{key = '[', reformers = {'RAlt', 'RCtrl'}}}, down = device_commands.Button_24, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Gun Selector Switch Down'), category = _('Armament System')},
{combos = {{key = 'A', reformers = {'LWin'}}}, down = device_commands.Button_26, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot'), category = _('Cheat')},
{combos = {{key = 'H', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_27, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Toggle Weapon Hints'), category = _('Cheat')},
{combos = {{key = 'A', reformers = {'LShift', 'LAlt'}}}, down = device_commands.Button_28, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot ATTITUDE HOLD'), category = _('Cheat')},
{combos = {{key = 'A', reformers = {'LCtrl'}}}, down = device_commands.Button_29, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot LEVEL FLIGHT'), category = _('Cheat')},
{combos = {{key = 'A', reformers = {'LAlt'}}}, down = device_commands.Button_30, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot ORBIT'), category = _('Cheat')},


--- Kneeboard
{down = device_commands.Button_1, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = device_commands.Button_2, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = device_commands.Button_3	, cockpit_device_id = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},


{combos = {{key = '1'}}, down = device_commands.Button_1, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Pilot Seat'), category = _('View Cockpit')},
{combos = {{key = '2'}}, down = device_commands.Button_2, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Operator Seat'), category = _('View Cockpit')},
{combos = {{key = '4'}}, down = device_commands.Button_3, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Right Gunner Seat'), category = _('View Cockpit')},
{combos = {{key = '3'}}, down = device_commands.Button_4, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Left Gunner Seat'), category = _('View Cockpit')},

-- Ins Collective Stick

--SearchLight Control
{combos = {{key = '7'}}, 		down = iCommandPlane_SpotLight_up, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Retract'), category = _('Ins Collective Stick')},
{combos = {{key = '8'}}, 		down = iCommandPlane_SpotLight_down, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Extend'),  category = _('Ins Collective Stick')},
{combos = {{key = '9'}}, 		down = iCommandPlane_SpotLight_left, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Left'),  category = _('Ins Collective Stick')},
{combos = {{key = '0'}}, 		down = iCommandPlane_SpotLight_right, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Right'), category = _('Ins Collective Stick')},

--LandingLight Control
{combos = {{key = ',', reformers = {'RCtrl'}}}, down = device_commands.Button_12, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Landing Light Switch'), category = _('Controls')},

{combos = {{key = '/', reformers = {'RCtrl'}}}, down = device_commands.Button_7, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Landing light Extend'), category = _('Controls')},
{combos = {{key = '/', reformers = {'RAlt'}}}, down = device_commands.Button_7, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 0.0, name = _('Landing light Stop'), category = _('Controls')},
{combos = {{key = '/', reformers = {'RWin'}}}, down = device_commands.Button_7, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = -1.0, name = _('Landing light Retract'), category = _('Controls')},

{combos = {{key = ';', reformers = {'RCtrl'}}}, down = device_commands.Button_6, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Search light On'), category = _('Controls')},
{combos = {{key = ';', reformers = {'RAlt'}}}, down = device_commands.Button_6, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 0.0, name = _('Search light Off'), category = _('Controls')},
{combos = {{key = ';', reformers = {'RWin'}}}, down = device_commands.Button_6, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = -1.0, name = _('Search light Stow'), category = _('Controls')},

{combos = {{key = 'Q'}}, down = iCommandPlaneCollectiveIncrease, pressed = iCommandPlaneCollectiveIncrease, up = iCommandPlaneCollectiveStop, name = _('Collective up'), category = _('Controls')},
{combos = {{key = 'A'}}, down = iCommandPlaneCollectiveDecrease, pressed = iCommandPlaneCollectiveDecrease, up = iCommandPlaneCollectiveStop, name = _('Collective down'), category = _('Controls')},

--Ins Rudder
{combos = {{key = 'Z'}}, down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Rudder left'), category = _('Controls')},
{combos = {{key = 'X'}}, down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Rudder right'), category = _('Controls')},


-- Radio Communications
{combos = {{key = '\\'}}, down = iCommandToggleCommandMenu, name = _('Communication menu'), category = _('Radio Communications')},
{combos = {{key = 'E', reformers = {'LWin'}}}, down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Radio Communications')},
{combos = {{key = 'R', reformers = {'LWin'}}}, down = iCommandPlaneDoAndBack, name = _('Flight - complete mission and rejoin'), category = _('Radio Communications')},
{combos = {{key = 'T', reformers = {'LWin'}}}, down = iCommandPlaneFormation, name = _('Toggle formation'), category = _('Radio Communications')},
{combos = {{key = 'Y', reformers = {'LWin'}}}, down = iCommandPlaneJoinUp, name = _('Join up formation'), category = _('Radio Communications')},
{combos = {{key = 'Q', reformers = {'LWin'}}}, down = iCommandPlaneAttackMyTarget, name = _('Attack my target'), category = _('Radio Communications')},
{combos = {{key = 'W', reformers = {'LWin'}}}, down = iCommandPlaneCoverMySix, name = _('Cover me'), category = _('Radio Communications')},
{combos = {{key = 'G', reformers = {'LWin'}}}, down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Radio Communications')},
{combos = {{key = 'D', reformers = {'LWin'}}}, down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Radio Communications')},
{combos = {{key = '\\', reformers = {'LShift'}}}, down = ICommandSwitchDialog, name = _('Switch dialog'), category = _('Communications')},
{combos = {{key = '\\', reformers = {'LCtrl'}}}, down = ICommandSwitchToCommonDialog, name = _('Switch to main menu'), category = _('Communications')},
{combos = {{key = '\\', reformers = {'RAlt'}}}, down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id  = devices.INTERCOM, value_down = 1.0, value_up = 0.0, name = _("Pilot's radio trigger RADIO"), category = _('Ins Cyclic Stick')},

-- Auto Lock On
{combos = {{key = 'O'}}, down = iCommandAutoLockOnNearestAircraft, name = _('Auto lock on nearest aircraft'), category = _('Targeting')},
{combos = {{key = 'P'}}, down = iCommandAutoLockOnCenterAircraft, name = _('Auto lock on center aircraft'), category = _('Targeting')},
{combos = {{key = ']', reformers = {'LWin'}}}, down = iCommandAutoLockOnNextAircraft, name = _('Auto lock on next aircraft'), category = _('Targeting')},
{combos = {{key = '[', reformers = {'LWin'}}}, down = iCommandAutoLockOnPreviousAircraft, name = _('Auto lock on previous aircraft'), category = _('Targeting')},
{combos = {{key = 'B'}}, down = iCommandAutoLockOnNearestSurfaceTarget, name = _('Auto lock on nearest surface target'), category = _('Targeting')},
{combos = {{key = 'V'}}, down = iCommandAutoLockOnCenterSurfaceTarget, name = _('Auto lock on center surface target'), category = _('Targeting')},
{combos = {{key = 'M'}}, down = iCommandAutoLockOnNextSurfaceTarget, name = _('Auto lock on next surface target'), category = _('Targeting')},
{combos = {{key = 'N'}}, down = iCommandAutoLockOnPreviousSurfaceTarget, name = _('Auto lock on previous surface target'), category = _('Targeting')},
{combos = {{key = 'Delete'}}, down = iCommandAutoLockOnClear, name = _('Clear Selected Target'), category = _('Targeting')},
{combos = {{key = 'I' , reformers = {'RCtrl'}}}, down = iCommandEasyRadarOnOff, name = _('Easy Radar toggle'), category = _('Targeting')},
{combos = {{key = 'M',  reformers = {'RCtrl'}}}, down = device_commands.Button_5, cockpit_device_id = devices.FLEX_SIGHT, value_down = 0.0, name = _('Toggle Flexible Sight'), category = _('Targeting')},


{combos = {{key = '='}},  down = iCommandEasyRadarScaleUp , name = _('Easy Radar scale in') , category = _('Targeting')},
{combos = {{key = '-'}},  down = iCommandEasyRadarScaleOut, name = _('Easy Radar scale out'), category = _('Targeting')},
{combos = {{key = 'D'}} , down = iCommandPlaneChangeWeapon, name = _('Cycle Weapon'), category = _('Weapons')},

{combos = {{key = ';' , reformers = {'RShift'}}}, pressed = iCommandSelecterUp   , up = iCommandSelecterStop, name = _('Selector up')   , category = _('Targeting')},
{combos = {{key = '.' , reformers = {'RShift'}}}, pressed = iCommandSelecterDown , up = iCommandSelecterStop, name = _('Selector down') , category = _('Targeting')},
{combos = {{key = ',' , reformers = {'RShift'}}}, pressed = iCommandSelecterLeft , up = iCommandSelecterStop, name = _('Selector left') , category = _('Targeting')},
{combos = {{key = '/' , reformers = {'RShift'}}}, pressed = iCommandSelecterRight, up = iCommandSelecterStop, name = _('Selector right'), category = _('Targeting')},

--Gunners AI Panel
{combos = {{key = 'H', reformers = {'LWin'}}}, down = device_commands.Button_37, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AI Panel Show/Hide'), category = _('Gunners AI Panel')},

{combos = {{key = '3', reformers = {'LCtrl'}}}, down = device_commands.Button_38, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Left ROE Iterate'), category = _('Gunners AI Panel')},
{combos = {{key = '3', reformers = {'LShift'}}}, down = device_commands.Button_38, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Left Burst Switch'), category = _('Gunners AI Panel')},

{combos = {{key = '2', reformers = {'LCtrl'}}}, down = device_commands.Button_39, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Operator ROE Iterate'), category = _('Gunners AI Panel')},
{combos = {{key = '2', reformers = {'LShift'}}}, down = device_commands.Button_39, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Operator Burst Switch'), category = _('Gunners AI Panel')},

{combos = {{key = '4', reformers = {'LCtrl'}}}, down = device_commands.Button_40, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Right ROE Iterate'), category = _('Gunners AI Panel')},
{combos = {{key = '4', reformers = {'LShift'}}}, down = device_commands.Button_40, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Right Burst Switch'), category = _('Gunners AI Panel')},

},
}

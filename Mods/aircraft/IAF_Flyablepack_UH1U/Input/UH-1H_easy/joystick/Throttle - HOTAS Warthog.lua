return {
forceFeedback = {
	invertX		= false,
	invertY		= false,
	shake		= 0.5,
	swapAxes	= false,
	trimmer		= 1,
},
keyCommands = {
{pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow,  name = _("View Down Right slow"),  category = _("View"), },
{down = iCommandViewTower,  name = _("F3 Fly-By view"),  category = _("View"), },
{down = 3020, cockpit_device_id = 9, value_down = 1,  name = _("Armament Off/Safe/Armed Up"),  category = _("Armament System"), },
{pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop,  name = _("Zoom in slow"),  category = _("View"), },
{down = iCommandViewFree,  name = _("F11 Airport free camera"),  category = _("View"), },
{down = iCommandViewCameraReturn,  name = _("Return camera"),  category = _("View Cockpit"), },
{down = iCommandViewCameraUpSlow,  name = _("Camera view up slow"),  category = _("View Cockpit"), },
{down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter,  name = _("Camera view up-right"),  category = _("View Cockpit"), },
{down = iCommandViewGround,  name = _("F7 Ground unit view"),  category = _("View"), },
{down = iCommandViewSnapView6, up = iCommandViewSnapViewStop,  name = _("Snap View 6"),  category = _("View Cockpit"), },
{down = iCommandViewCameraDownSlow,  name = _("Camera view down slow"),  category = _("View Cockpit"), },
{down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff,  name = _("Cockpit panel view in"),  category = _("View Cockpit"), },
{down = iCommandViewCameraUp, up = iCommandViewCameraCenter,  name = _("Camera view up"),  category = _("View Cockpit"), },
{down = iCommandViewEnemies,  name = _("View enemies mode"),  category = _("View Extended"), },
{pressed = iCommandViewBack, up = iCommandViewBackStop,  name = _("Zoom out"),  category = _("View Cockpit"), },
{down = iCommandPlanePickleOn, up = iCommandPlanePickleOn, value_down = 1, value_up = 0,  name = _("Copilot weapon release"),  category = _("Weapons"), },
{down = iCommandViewNavy,  name = _("F9 Ship view"),  category = _("View"), },
{down = 3020, cockpit_device_id = 9, value_down = -1,  name = _("Armament Off/Safe/Armed Down"),  category = _("Armament System"), },
{down = iCommandViewAll,  name = _("View all mode"),  category = _("View Extended"), },
{down = iCommandViewTerrainLock,  name = _("Lock terrain view"),  category = _("View Padlock"), },
{down = iCommandMarkerStatePlane,  name = _("Aircraft Labels"),  category = _("Labels"), },
{down = iCommandViewCameraUpRightSlow,  name = _("Camera view up-right slow"),  category = _("View Cockpit"), },
{pressed = iCommandViewRight, up = iCommandViewStop,  name = _("View right"),  category = _("View Cockpit"), },
{down = 3012, cockpit_device_id = 7, value_down = 1,  name = _("Landing Light Switch"),  category = _("Controls"), },
{down = iCommandViewSnapView9, up = iCommandViewSnapViewStop,  name = _("Snap View 9"),  category = _("View Cockpit"), },
{down = iCommandViewMirage,  name = _("F12 Civil traffic view"),  category = _("View"), },
{down = 3040, cockpit_device_id = 9, value_down = 0.1,  name = _("AI Right Burst Switch"),  category = _("Gunners AI Panel"), },
{pressed = iCommandViewLeft, up = iCommandViewStop,  name = _("View left"),  category = _("View Cockpit"), },
{down = iCommandViewLndgOfficer,  name = _("F9 Landing signal officer view"),  category = _("View"), },
{down = 3039, cockpit_device_id = 9, value_down = 0.1,  name = _("AI Operator Burst Switch"),  category = _("Gunners AI Panel"), },
{pressed = iCommandViewUpSlow, up = iCommandViewStopSlow,  name = _("View Up slow"),  category = _("View"), },
{down = 3039, cockpit_device_id = 9, value_down = 0,  name = _("AI Operator ROE Iterate"),  category = _("Gunners AI Panel"), },
{pressed = iCommandViewUp, up = iCommandViewStop,  name = _("View up"),  category = _("View Cockpit"), },
{down = 3038, cockpit_device_id = 9, value_down = 0.1,  name = _("AI Left Burst Switch"),  category = _("Gunners AI Panel"), },
{down = iCommandViewKeepTerrain,  name = _("Keep terrain camera altitude"),  category = _("View Extended"), },
{down = 3037, cockpit_device_id = 9, value_down = 1,  name = _("AI Panel Show/Hide"),  category = _("Gunners AI Panel"), },
{pressed = iCommandPlaneUpStart, up = iCommandPlaneUpStop,  name = _("Cyclic nose down"),  category = _("Controls"), },
{pressed = iCommandSelecterRight, up = iCommandSelecterStop,  name = _("Selector right"),  category = _("Targeting"), },
{down = iCommandDebriefing,  name = _("Debriefing window"),  category = _("General"), },
{pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop,  name = _("Zoom out slow"),  category = _("View"), },
{pressed = iCommandSelecterLeft, up = iCommandSelecterStop,  name = _("Selector left"),  category = _("Targeting"), },
{down = iCommandViewSnapView2, up = iCommandViewSnapViewStop,  name = _("Snap View 2"),  category = _("View Cockpit"), },
{down = 3002, cockpit_device_id = 46, value_down = 0,  name = _("Set Operator Seat"),  category = _("View Cockpit"), },
{down = iCommandPlaneChangeWeapon,  name = _("Cycle Weapon"),  category = _("Weapons"), },
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard, value_down = 1, value_up = -1,  name = _("Kneeboard glance view"),  category = _("Kneeboard"), },
{down = iCommandViewCameraJiggle,  name = _("Camera jiggle toggle"),  category = _("View Extended"), },
{down = iCommandNaturalViewCockpitIn,  name = _("F1 Natural head movement view"),  category = _("View"), },
{down = iCommandEasyRadarScaleOut,  name = _("Easy Radar scale out"),  category = _("Targeting"), },
{down = iCommandViewRear,  name = _("F4 Look back view"),  category = _("View"), },
{down = iCommandEasyRadarScaleUp,  name = _("Easy Radar scale in"),  category = _("Targeting"), },
{down = iCommandViewExternalZoomDefault,  name = _("Zoom external normal"),  category = _("View"), },
{pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow,  name = _("View Down Left slow"),  category = _("View"), },
{down = iCommandEasyRadarOnOff,  name = _("Easy Radar toggle"),  category = _("Targeting"), },
{down = iCommandAutoLockOnClear,  name = _("Clear Selected Target"),  category = _("Targeting"), },
{down = iCommandAutoLockOnPreviousSurfaceTarget,  name = _("Auto lock on previous surface target"),  category = _("Targeting"), },
{down = iCommandViewSnapView8, up = iCommandViewSnapViewStop,  name = _("Snap View 8"),  category = _("View Cockpit"), },
{down = iCommandDecelerate,  name = _("Time decelerate"),  category = _("General"), },
{down = iCommandAutoLockOnNextSurfaceTarget,  name = _("Auto lock on next surface target"),  category = _("Targeting"), },
{down = iCommandAutoLockOnCenterSurfaceTarget,  name = _("Auto lock on center surface target"),  category = _("Targeting"), },
{down = iCommandAutoLockOnNearestSurfaceTarget,  name = _("Auto lock on nearest surface target"),  category = _("Targeting"), },
{down = iCommandAutoLockOnPreviousAircraft,  name = _("Auto lock on previous aircraft"),  category = _("Targeting"), },
{down = iCommandPlane_ShowControls,  name = _("Controls position"),  category = _("General"), },
{pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop,  name = _("Zoom external in"),  category = _("View"), },
{down = iCommandAutoLockOnNextAircraft,  name = _("Auto lock on next aircraft"),  category = _("Targeting"), },
{pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop,  name = _("Zoom external out"),  category = _("View"), },
{down = iCommandViewFightGround,  name = _("F5 Ground hostile view"),  category = _("View"), },
{pressed = iCommandSelecterUp, up = iCommandSelecterStop,  name = _("Selector up"),  category = _("Targeting"), },
{down = iCommandViewSaveAngles,  name = _("Save Cockpit Angles"),  category = _("View Cockpit"), },
{down = 3009, up = 3009, cockpit_device_id = 21, value_down = 1, value_up = 0,  name = _("Pilot's radio trigger RADIO"),  category = _("Ins Cyclic Stick"), },
{down = iCommandViewSnapView1, up = iCommandViewSnapViewStop,  name = _("Snap View 1"),  category = _("View Cockpit"), },
{down = iCommandViewFriends,  name = _("View friends mode"),  category = _("View Extended"), },
{down = iCommandViewAir,  name = _("F2 Aircraft view"),  category = _("View"), },
{down = iCommandViewCameraRightSlow,  name = _("Camera view right slow"),  category = _("View Cockpit"), },
{down = iCommandActivePauseOnOff,  name = _("Active Pause"),  category = _("Cheat"), },
{down = ICommandSwitchDialog,  name = _("Switch dialog"),  category = _("Communications"), },
{down = iCommandPlane_EngageAirDefenses,  name = _("Flight - Attack air defenses"),  category = _("Radio Communications"), },
{down = iCommandViewHUDOnlyOnOff,  name = _("F1 HUD only view switch"),  category = _("View"), },
{down = iCommandViewTargetType,  name = _("F8 Player targets/All targets filter"),  category = _("View"), },
{down = iCommandPlaneFormation,  name = _("Toggle formation"),  category = _("Radio Communications"), },
{down = iCommandNoAcceleration,  name = _("Time normal"),  category = _("General"), },
{down = 3004, cockpit_device_id = 46, value_down = 0,  name = _("Set Left Gunner Seat"),  category = _("View Cockpit"), },
{down = iCommandPlaneCoverMySix,  name = _("Cover me"),  category = _("Radio Communications"), },
{down = iCommandViewCameraDown, up = iCommandViewCameraCenter,  name = _("Camera view down"),  category = _("View Cockpit"), },
{down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter,  name = _("Camera view up-left"),  category = _("View Cockpit"), },
{down = iCommandPlaneAttackMyTarget,  name = _("Attack my target"),  category = _("Radio Communications"), },
{down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff,  name = _("Camera transpose mode (press and hold)"),  category = _("View Cockpit"), },
{down = iCommandPlaneJoinUp,  name = _("Join up formation"),  category = _("Radio Communications"), },
{down = iCommandPlaneDoAndBack,  name = _("Flight - complete mission and rejoin"),  category = _("Radio Communications"), },
{down = iCommandPlaneDoAndHome,  name = _("Flight - Complete mission and RTB"),  category = _("Radio Communications"), },
{down = iCommandToggleCommandMenu,  name = _("Communication menu"),  category = _("Radio Communications"), },
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop,  name = _("Rudder right"),  category = _("Controls"), },
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop,  name = _("Rudder left"),  category = _("Controls"), },
{down = iCommandBrakeGo,  name = _("Pause"),  category = _("General"), },
{pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow,  name = _("View Up Left slow"),  category = _("View"), },
{down = iCommandPlaneCollectiveDecrease, pressed = iCommandPlaneCollectiveDecrease, up = iCommandPlaneCollectiveStop,  name = _("Collective down"),  category = _("Controls"), },
{down = iCommandPlane_SpotLight_left, up = iCommandPlane_SpotLight_vert_stop,  name = _("Search light Left"),  category = _("Ins Collective Stick"), },
{down = 3029, cockpit_device_id = 9, value_down = 1,  name = _("AutoPilot LEVEL FLIGHT"),  category = _("Cheat"), },
{pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop,  name = _("Cockpit Camera Move Down"),  category = _("View Cockpit"), },
{down = 3006, cockpit_device_id = 7, value_down = -1,  name = _("Search light Stow"),  category = _("Controls"), },
{pressed = iCommandPlaneDownStart, up = iCommandPlaneDownStop,  name = _("Cyclic nose up"),  category = _("Controls"), },
{down = iCommandViewSnapView0, up = iCommandViewSnapViewStop,  name = _("Snap View 0"),  category = _("View Cockpit"), },
{down = 3006, cockpit_device_id = 7, value_down = 0,  name = _("Search light Off"),  category = _("Controls"), },
{down = 3006, cockpit_device_id = 7, value_down = 1,  name = _("Search light On"),  category = _("Controls"), },
{down = 3007, cockpit_device_id = 7, value_down = -1,  name = _("Landing light Retract"),  category = _("Controls"), },
{down = 3007, cockpit_device_id = 7, value_down = 0,  name = _("Landing light Stop"),  category = _("Controls"), },
{down = 3007, cockpit_device_id = 7, value_down = 1,  name = _("Landing light Extend"),  category = _("Controls"), },
{down = iCommandPlane_SpotLight_right, up = iCommandPlane_SpotLight_vert_stop,  name = _("Search light Right"),  category = _("Ins Collective Stick"), },
{down = iCommandPlaneCollectiveIncrease, pressed = iCommandPlaneCollectiveIncrease, up = iCommandPlaneCollectiveStop,  name = _("Collective up"),  category = _("Controls"), },
{down = iCommandViewObjectsAll,  name = _("Objects all excluded - include"),  category = _("View"), },
{down = iCommandPlane_SpotLight_down, up = iCommandPlane_SpotLight_vert_stop,  name = _("Search light Extend"),  category = _("Ins Collective Stick"), },
{down = iCommandPlane_SpotLight_up, up = iCommandPlane_SpotLight_vert_stop,  name = _("Search light Retract"),  category = _("Ins Collective Stick"), },
{down = iCommandPlane_EngageGroundTargets,  name = _("Flight - Attack ground targets"),  category = _("Radio Communications"), },
{down = 3003, cockpit_device_id = 46, value_down = 0,  name = _("Set Right Gunner Seat"),  category = _("View Cockpit"), },
{down = iCommandCockpitClickModeOnOff,  name = _("Clickable mouse cockpit mode On/Off"),  category = _("General"), },
{down = iCommandAutoLockOnCenterAircraft,  name = _("Auto lock on center aircraft"),  category = _("Targeting"), },
{pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop,  name = _("Cockpit Camera Move Back"),  category = _("View Cockpit"), },
{down = iCommandInfoOnOff,  name = _("Info bar toggle"),  category = _("General"), },
{down = 3028, cockpit_device_id = 9, value_down = 1,  name = _("AutoPilot ATTITUDE HOLD"),  category = _("Cheat"), },
{down = 3001, cockpit_device_id = 45, value_down = 1,  name = _("Kneeboard Next Page"),  category = _("Kneeboard"), },
{down = iCommandViewCameraLeft, up = iCommandViewCameraCenter,  name = _("Camera view left"),  category = _("View Cockpit"), },
{down = 3026, cockpit_device_id = 9, value_down = 1,  name = _("AutoPilot"),  category = _("Cheat"), },
{down = 3024, cockpit_device_id = 9, value_down = 1,  name = _("Gun Selector Switch Up"),  category = _("Armament System"), },
{down = 3024, cockpit_device_id = 9, value_down = -1,  name = _("Gun Selector Switch Down"),  category = _("Armament System"), },
{down = 3012, up = 3012, cockpit_device_id = 9, value_down = 1, value_up = 0,  name = _("Rocket Reset Button"),  category = _("Armament System"), },
{pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop,  name = _("Cockpit Camera Move Left"),  category = _("View Cockpit"), },
{down = 3023, up = 3023, cockpit_device_id = 9, value_down = 1, value_up = 0,  name = _("Jettison Switch"),  category = _("Armament System"), },
{pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow,  name = _("View Left slow"),  category = _("View"), },
{down = 3022, cockpit_device_id = 9, value_down = -1,  name = _("Rocket Pair Decrease"),  category = _("Armament System"), },
{down = iCommandViewSpeedUp,  name = _("F11 camera moving forward"),  category = _("View"), },
{down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter,  name = _("Camera view down-left"),  category = _("View Cockpit"), },
{down = iCommandViewFromTo,  name = _("F2 Toggle camera position"),  category = _("View"), },
{down = 3003, cockpit_device_id = 45, value_down = 1,  name = _("Kneeboard current position mark point"),  category = _("Kneeboard"), },
{down = 3021, cockpit_device_id = 9, value_down = 1,  name = _("Armament Selector Up"),  category = _("Armament System"), },
{down = 3003, cockpit_device_id = 41, value_down = 1,  name = _("Trimmer reset"),  category = _("Controls"), },
{down = iCommandViewSnapView3, up = iCommandViewSnapViewStop,  name = _("Snap View 3"),  category = _("View Cockpit"), },
{down = 3004, up = 3004, cockpit_device_id = 41, value_down = 1, value_up = 0,  name = _("Pilot Trimmer"),  category = _("Controls"), },
{down = 3040, cockpit_device_id = 9, value_down = 0,  name = _("AI Right ROE Iterate"),  category = _("Gunners AI Panel"), },
{down = iCommandMissionResourcesManagement,  name = _("Rearming and Refueling Window"),  category = _("General"), },
{pressed = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop,  name = _("Cyclic bank left"),  category = _("Controls"), },
{down = iCommandViewFreeJump,  name = _("F11 Jump to free camera"),  category = _("View"), },
{down = iCommandViewTowerJump,  name = _("F3 Fly-By jump view"),  category = _("View"), },
{down = iCommandViewLocomotivesToggle,  name = _("F12 Trains/cars toggle"),  category = _("View"), },
{down = iCommandViewAngleDefault,  name = _("Zoom normal"),  category = _("View"), },
{down = iCommandAccelerate,  name = _("Time accelerate"),  category = _("General"), },
{down = iCommandPlaneShowKneeboard,  name = _("Kneeboard ON/OFF"),  category = _("Kneeboard"), },
{down = 3021, cockpit_device_id = 9, value_down = -1,  name = _("Armament Selector Down"),  category = _("Armament System"), },
{down = iCommandMarkerStateShip,  name = _("Vehicle & Ship Labels"),  category = _("Labels"), },
{down = iCommandMarkerStateRocket,  name = _("Missile Labels"),  category = _("Labels"), },
{down = iCommandQuit,  name = _("End mission"),  category = _("General"), },
{down = iCommandViewSwitchReverse,  name = _("Objects switching direction reverse "),  category = _("View"), },
{down = iCommandMarkerState,  name = _("All Labels"),  category = _("Labels"), },
{down = iCommandThreatMissilePadlock,  name = _("Threat missile padlock"),  category = _("View Padlock"), },
{down = iCommandAllMissilePadlock,  name = _("All missiles padlock"),  category = _("View Padlock"), },
{down = iCommandViewSnapView5, up = iCommandViewSnapViewStop,  name = _("Snap View 5"),  category = _("View Cockpit"), },
{down = iCommandViewUnlock,  name = _("Unlock view (stop padlock)"),  category = _("View Padlock"), },
{down = iCommandViewStatic,  name = _("F12 Static object view"),  category = _("View"), },
{pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop,  name = _("Cockpit Camera Move Forward"),  category = _("View Cockpit"), },
{down = ICommandSwitchToCommonDialog,  name = _("Switch to main menu"),  category = _("Communications"), },
{combos = {{key = "JOY_BTN3"}, }, pressed = iCommandViewCenter,  name = _("Center View"),  category = _("View"), },
{down = iCommandScoresWindowToggle,  name = _("Score window"),  category = _("General"), },
{down = iCommandViewPlus,  name = _("Toggle tracking launched weapon"),  category = _("View Extended"), },
{pressed = iCommandViewUpRight, up = iCommandViewStop,  name = _("View up right"),  category = _("View Cockpit"), },
{down = 3038, cockpit_device_id = 9, value_down = 0,  name = _("AI Left ROE Iterate"),  category = _("Gunners AI Panel"), },
{down = iCommandViewCockpit,  name = _("F1 Cockpit view"),  category = _("View"), },
{down = iCommandViewPitCameraMoveCenter,  name = _("Cockpit Camera Move Center"),  category = _("View Cockpit"), },
{pressed = iCommandViewDown, up = iCommandViewStop,  name = _("View down"),  category = _("View Cockpit"), },
{down = 3001, cockpit_device_id = 46, value_down = 0,  name = _("Set Pilot Seat"),  category = _("View Cockpit"), },
{pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop,  name = _("Cockpit Camera Move Right"),  category = _("View Cockpit"), },
{down = 3025, cockpit_device_id = 9, value_down = 0,  name = _("Jettison Switch Cover"),  category = _("Armament System"), },
{pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop,  name = _("Cockpit Camera Move Up"),  category = _("View Cockpit"), },
{down = iCommandRecoverHuman,  name = _("Get New Plane - respawn"),  category = _("General"), },
{down = iCommandPlaneEject,  name = _("Leave Helicopter (3 times)"),  category = _("Systems"), },
{down = iCommandPlaneFire, up = iCommandPlaneFire, value_down = 1, value_up = 0,  name = _("Pilot weapon release/Machinegun fire"),  category = _("Weapons"), },
{down = iCommandViewWeaponAndTarget,  name = _("F6 Weapon to target view"),  category = _("View"), },
{pressed = iCommandViewRightSlow, up = iCommandViewStopSlow,  name = _("View Right slow"),  category = _("View"), },
{down = iCommandViewCameraDownLeftSlow,  name = _("Camera view down-left slow"),  category = _("View Cockpit"), },
{down = iCommandViewCoordinatesInLinearUnits,  name = _("Info bar coordinate units toggle"),  category = _("General"), },
{down = iCommandViewChaseArcade,  name = _("F4 Arcade Chase view"),  category = _("View"), },
{down = iCommandViewFastKeyboard,  name = _("Camera view keyboard rate fast"),  category = _("View"), },
{down = iCommandViewMe,  name = _("F2 View own aircraft"),  category = _("View"), },
{down = 3002, cockpit_device_id = 45, value_down = 1,  name = _("Kneeboard Previous Page"),  category = _("Kneeboard"), },
{down = iCommandViewPitHeadOnOff,  name = _("Head shift movement on / off"),  category = _("View Cockpit"), },
{down = iCommandViewSlowMouse,  name = _("Camera view mouse rate slow"),  category = _("View"), },
{down = iCommandViewSnapView7, up = iCommandViewSnapViewStop,  name = _("Snap View 7"),  category = _("View Cockpit"), },
{pressed = iCommandSelecterDown, up = iCommandSelecterStop,  name = _("Selector down"),  category = _("Targeting"), },
{down = iCommandViewCameraBaseReturn,  name = _("Return camera base"),  category = _("View Cockpit"), },
{down = iCommandViewSnapView4, up = iCommandViewSnapViewStop,  name = _("Snap View 4"),  category = _("View Cockpit"), },
{down = iCommandViewCameraCenter,  name = _("Center camera view"),  category = _("View Cockpit"), },
{down = 3005, cockpit_device_id = 32, value_down = 0,  name = _("Toggle Flexible Sight"),  category = _("Targeting"), },
{down = iCommandViewCameraDownRight,  name = _("Camera view down-right slow"),  category = _("View Cockpit"), },
{down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter,  name = _("Camera view down-right"),  category = _("View Cockpit"), },
{down = iCommandViewCameraUpLeftSlow,  name = _("Camera view up-left slow"),  category = _("View Cockpit"), },
{down = iCommandGraphicsFrameRate,  name = _("Frame rate counter - Service info"),  category = _("General"), },
{down = iCommandViewCameraLeftSlow,  name = _("Camera view left slow"),  category = _("View Cockpit"), },
{down = iCommandViewSlowDown,  name = _("F11 camera moving backward"),  category = _("View"), },
{pressed = iCommandViewDownSlow, up = iCommandViewStopSlow,  name = _("View Down slow"),  category = _("View"), },
{pressed = iCommandViewDownRight, up = iCommandViewStop,  name = _("View down right"),  category = _("View Cockpit"), },
{down = iCommandViewBriefing,  name = _("Briefing Window"),  category = _("General"), },
{down = iCommand_ExplorationStart,  name = _("Enable visual recon mode"),  category = _("View Cockpit"), },
{down = iCommandViewCameraRight, up = iCommandViewCameraCenter,  name = _("Camera view right"),  category = _("View Cockpit"), },
{pressed = iCommandViewDownLeft, up = iCommandViewStop,  name = _("View down left"),  category = _("View Cockpit"), },
{down = iCommandEnginesStop,  name = _("Auto Stop"),  category = _("Cheat"), },
{down = 3027, cockpit_device_id = 9, value_down = 1,  name = _("Toggle Weapon Hints"),  category = _("Cheat"), },
{down = iCommandEnginesStart,  name = _("Auto Start"),  category = _("Cheat"), },
{down = iCommandPlaneJump,  name = _("Jump into selected aircraft"),  category = _("General"), },
{pressed = iCommandViewUpLeft, up = iCommandViewStop,  name = _("View up left"),  category = _("View Cockpit"), },
{pressed = iCommandViewForward, up = iCommandViewForwardStop,  name = _("Zoom in"),  category = _("View Cockpit"), },
{down = iCommandViewAWACSJump,  name = _("F10 Jump to theater map view over current point"),  category = _("View"), },
{down = 3022, cockpit_device_id = 9, value_down = 1,  name = _("Rocket Pair Increase"),  category = _("Armament System"), },
{down = iCommandAutoLockOnNearestAircraft,  name = _("Auto lock on nearest aircraft"),  category = _("Targeting"), },
{down = iCommandViewSlowKeyboard,  name = _("Camera view keyboard rate slow"),  category = _("View"), },
{down = iCommandViewTempCockpitToggle,  name = _("Cockpit panel view toggle"),  category = _("View Cockpit"), },
{down = iCommandViewAWACS,  name = _("F10 Theater map view"),  category = _("View"), },
{down = iCommandViewNormalMouse,  name = _("Camera view mouse rate normal"),  category = _("View"), },
{down = iCommandViewSwitchForward,  name = _("Objects switching direction forward "),  category = _("View"), },
{down = iCommandViewFastMouse,  name = _("Camera view mouse rate fast"),  category = _("View"), },
{down = iCommandViewNormalKeyboard,  name = _("Camera view keyboard rate normal"),  category = _("View"), },
{down = iCommandViewWeapons,  name = _("F6 Released weapon view"),  category = _("View"), },
{down = iCommandViewLock,  name = _("Lock view (cycle padlock)"),  category = _("View Padlock"), },
{pressed = iCommandPlaneRightStart, up = iCommandPlaneRightStop,  name = _("Cyclic bank right"),  category = _("Controls"), },
{down = 3030, cockpit_device_id = 9, value_down = 1,  name = _("AutoPilot ORBIT"),  category = _("Cheat"), },
{down = iCommandViewFight,  name = _("F5 Nearest AC view"),  category = _("View"), },
{down = iCommandViewTargets,  name = _("F8 Target view"),  category = _("View"), },
{down = iCommandViewLocal,  name = _("F2 Toggle local camera control"),  category = _("View"), },
{down = iCommandViewChase,  name = _("F4 Chase view"),  category = _("View"), },
{down = iCommandViewObjectIgnore,  name = _("Object exclude "),  category = _("View"), },
{pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow,  name = _("View Up Right slow"),  category = _("View"), },
},
axisCommands = {
{action = iCommandViewVerticalAbs,  name = _("Absolute Camera Vertical View"), },
{action = iCommandViewLongitudeTransAbs,  name = _("Absolute Longitude Shift Camera View"), },
{action = iCommandViewHorizontalAbs,  name = _("Absolute Camera Horizontal View"), },
{action = iCommandPlaneZoomView,  name = _("Camera Zoom View"), },
{action = iCommandPlanePitch,  name = _("Flight Control Cyclic Pitch"), },
{action = iCommandPlaneViewVertical,  name = _("Camera Vertical View"), },
{combos = {{key = "JOY_RZ"}, }, action = iCommandPlaneCollective,  name = _("Flight Control Collective"), },
{action = iCommandPlaneViewHorizontal,  name = _("Camera Horizontal View"), },
{combos = {{key = "JOY_SLIDER1"}, }, action = iCommandViewZoomAbs,  name = _("Zoom View"), },
{action = iCommandViewRollAbs,  name = _("Absolute Roll Shift Camera View"), },
{action = iCommandViewVertTransAbs,  name = _("Absolute Vertical Shift Camera View"), },
{action = iCommandPlaneRudder,  name = _("Flight Control Rudder"), },
{action = iCommandViewHorTransAbs,  name = _("Absolute Horizontal Shift Camera View"), },
{action = iCommandPlaneRoll,  name = _("Flight Control Cyclic Roll"), },
},
}
-- Commands : not intended for end-user editing

Keys =
{
	PlaneFire								= 84,
	PlaneFireOff							= 85,
	
	PlaneLightsOnOff						= 175,
	PlaneCockpitIllumination				= 300,
	
	CopilotPlaneFireOn						= 350,
	CopilotPlaneFireOff						= 351,
	
	PlaneCockpitIlluminationPanels			= 493,
	PlaneCockpitIlluminationGauges			= 494,	
	
	PlaneAntiCollisionLights				= 518,

	CockpitIllumination						= 815,
	  
    iCommandPlaneCockpitIllumination       = 300,
    iCommandPlaneCockpitIlluminationPanels = 493,
    iCommandPlaneCockpitIlluminationGauges = 494,
    iCommandCockpitShowPilotOnOff          = 835,

	iCommandPitotAoAHeat                    = 910,
	iCommandPitotRam                        = 911,
	
	PlaneTrimOn								= 957,
	PlaneTrimOff							= 958,
	PlaneTrimCancel							= 97,

	Throttle_Inc							= 1032,
	Throttle_Dec							= 1033,
	
	Plane_SpotLight_left  					= 511,
	Plane_SpotLight_right 					= 512,
	Plane_SpotLight_up						= 513,
	Plane_SpotLight_down 					= 514,
	Plane_SpotLight_stop 					= 515,
}

class_type = 
{
	NULL   = 0,
	BTN    = 1,
	TUMB   = 2,
	SNGBTN = 3,
	LEV    = 4
}

start_command   = 3000
device_commands =
{
	Button_1  = start_command + 1;
	Button_2  = start_command + 2;
	Button_3  = start_command + 3;
	Button_4  = start_command + 4;
	Button_5  = start_command + 5;
	Button_6  = start_command + 6;
	Button_7  = start_command + 7;
	Button_8  = start_command + 8;
	Button_9  = start_command + 9;
	Button_10 = start_command + 10;
	Button_11 = start_command + 11;
	Button_12 = start_command + 12;
	Button_13 = start_command + 13;
	Button_14 = start_command + 14;
	Button_15 = start_command + 15;
	Button_16 = start_command + 16;
	Button_17 = start_command + 17;
	Button_18 = start_command + 18;
	Button_19 = start_command + 19;
	Button_20 = start_command + 20;
	Button_21 = start_command + 21;
	Button_22 = start_command + 22;
	Button_23 = start_command + 23;
	Button_24 = start_command + 24;
	Button_25 = start_command + 25;
	Button_26 = start_command + 26;
	Button_27 = start_command + 27;
	Button_28 = start_command + 28;
	Button_29 = start_command + 29;
	Button_30 = start_command + 30;
	Button_31 = start_command + 31;
	Button_32 = start_command + 32;
	Button_33 = start_command + 33;
	Button_34 = start_command + 34;
	Button_35 = start_command + 35;
	Button_36 = start_command + 36;
	Button_37 = start_command + 37;
	Button_38 = start_command + 38;
	Button_39 = start_command + 39;
	Button_40 = start_command + 40;
	Button_41 = start_command + 41;
	Button_42 = start_command + 42;
	Button_43 = start_command + 43;
	Button_44 = start_command + 44;
	Button_45 = start_command + 45;
	Button_46 = start_command + 46;
	Button_47 = start_command + 47;
	Button_48 = start_command + 48;
	Button_49 = start_command + 49;
	Button_50 = start_command + 50;
	Button_51 = start_command + 51;
	Button_52 = start_command + 52;
	Button_53 = start_command + 53;
	Button_54 = start_command + 54;
	Button_55 = start_command + 55;
	Button_56 = start_command + 56;
	Button_57 = start_command + 57;
	Button_58 = start_command + 58;
	Button_59 = start_command + 59;
	Button_60 = start_command + 60;
	Button_61 = start_command + 61;
	Button_62 = start_command + 62;
	Button_63 = start_command + 63;
	Button_64 = start_command + 64;
	Button_65 = start_command + 65;
	Button_66 = start_command + 66;
	Button_67 = start_command + 67;
	Button_68 = start_command + 68;
	Button_69 = start_command + 69;
	Button_70 = start_command + 70;
}

cb_start_cmd = device_commands.Button_21
cb_end_cmd = cb_start_cmd + 63

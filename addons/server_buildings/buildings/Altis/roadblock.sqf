if (isServer) then {
	private ["_objs"];
	_objs = [
		["Land_Crash_barrier_F",[7678.99,16188.3,0],192.156,[[-0.210571,-0.977578,0],[-0,0,1]],false],
		["Land_Crash_barrier_F",[7687.7,16186.5,0],192.156,[[-0.210571,-0.977579,0],[-0,0,1]],false],
		["Land_LampShabby_F",[7684.79,16174.9,0],0,[[0,1,0],[0,0,1]],false],
		["Land_LampShabby_F",[7663.62,16192,0],186.545,[[-0.113992,-0.993482,0],[-0,0,1]],false],
		["Land_Sign_WarningMilitaryVehicles_F",[7690.42,16175.2,0],287.532,[[-0.953546,0.301247,0],[0,0,1]],false],
		["Land_Sign_WarningMilitaryVehicles_F",[7654.01,16184,0],106.13,[[0.960634,-0.277816,0],[0,-0,1]],false],
		["Land_Mil_WiredFence_F",[7682.54,16170.7,0],282.857,[[-0.974928,0.222521,0],[0,0,1]],false],
		["Land_Mil_WiredFence_F",[7677.97,16168.1,0],13.5585,[[0.234438,0.972131,0],[0,0,1]],false],
		["Land_Mil_WiredFence_F",[7670.16,16169.8,0],9.35066,[[0.162476,0.986712,0],[0,0,1]],false],
		["Land_Mil_WiredFence_F",[7662.25,16171.2,0],7.94806,[[0.138275,0.990394,0],[0,0,1]],false],
		["Land_Mil_WiredFence_F",[7656.45,16174.8,0],53.7663,[[0.806612,0.591081,0],[0,0,1]],false],
		["Land_Mil_WiredFence_F",[7681.28,16188.8,0],193.091,[[-0.226497,-0.974012,0],[-0,0,1]],false],
		["Land_Mil_WiredFence_F",[7673.61,16190.4,0],192.156,[[-0.210572,-0.977578,0],[-0,0,1]],false],
		["Land_Mil_WiredFence_F",[7665.9,16192.2,0],194.026,[[-0.242362,-0.970186,0],[-0,0,1]],false],
		["Land_CncBarrier_stripes_F",[7686.04,16185.5,0],124.831,[[0.820838,-0.571161,0],[0,-0,1]],false],
		["Land_CncBarrier_stripes_F",[7660.72,16191.6,0],80.8831,[[0.987367,0.158449,0],[0,0,1]],false],
		["Land_HBarrier_5_F",[7669.57,16170.6,0],188.883,[[-0.154419,-0.988005,0],[-0,0,1]],false],
		["Land_HBarrier_5_F",[7663.86,16171.5,0],189.351,[[-0.162476,-0.986713,0],[-0,0,1]],false],
		["Land_HBarrier_5_F",[7660.33,16174.1,0],245.922,[[-0.912992,-0.407977,0],[-0,0,1]],false],
		["Land_HBarrier_5_F",[7684.38,16190.1,0],191.688,[[-0.202588,-0.979264,0],[-0,0,1]],false],
		["Land_HBarrier_5_F",[7678.8,16191.3,0],12.1558,[[0.210571,0.977579,0],[0,0,1]],false],
		["Land_HBarrier_5_F",[7673.2,16192.6,0],195.429,[[-0.266037,-0.963963,0],[-0,0,1]],false],
		["Land_HBarrier_5_F",[7667.61,16193.9,0],193.091,[[-0.226497,-0.974012,0],[-0,0,1]],false],
		["Land_Wreck_UAZ_F",[7692.7,16186.2,0],158.961,[[0.359004,-0.933336,0],[0,-0,1]],false],
		["Land_Wreck_Skodovka_F",[7679.65,16178.2,0],0.467529,[[0.00815984,0.999967,0],[0,0,1]],false],
		["Land_Wreck_Truck_dropside_F",[7673.05,16187.1,0],218.338,[[-0.620296,-0.784368,0],[-0,0,1]],false],
		["Land_BagBunker_Small_F",[7687.06,16174.7,0],279.584,[[-0.986041,0.166501,0],[0,0,1]],false],
		["Land_BagBunker_Small_F",[7655.92,16181.4,0],101.455,[[0.980083,-0.198591,0],[0,-0,1]],false],
		["Land_BagBunker_Tower_F",[7677.7,16171,0],284.727,[[-0.967147,0.254218,0],[0,0,1]],false]
	];
	{
	private ["_object"];

    _object = (_x select 0) createVehicle [0,0,0];
    _object setDir (_x select 2);
    _object setPosATL (_x select 1);
    _object enableSimulationGlobal false; // :)
	} foreach _objs;
};
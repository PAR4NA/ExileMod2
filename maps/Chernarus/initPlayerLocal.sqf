[] execVM "GG\service\service_point.sqf";

call compileFinal preprocessFileLineNumbers 'GG\TRYKfix.sqf';
missionNamespace setVariable ["ExileClient_KillMessages_network_KillMessages",(compileFinal preprocessFileLineNumbers "GG\kills\ExileClient_KillMessages_network_KillMessages.sqf")];

//#include "initServer.sqf"

if (!hasInterface || isServer) exitWith {};

_pic = "GG\images\logo.paa";
[
    '<img align=''left'' size=''1.0'' shadow=''1'' image='+(str(_pic))+' />',
    safeZoneX+0.027,
    safeZoneY+safeZoneH-0.1,
    99999,
    0,
    0,
    3090
] spawn bis_fnc_dynamicText;

///////////////////////////////////////////////////////////////////////////////
// Static Objects
///////////////////////////////////////////////////////////////////////////////

// Taken away for now
//#include "initServer.sqf"

///////////////////////////////////////////////////////////////////////////
// Northeast Airfield Traders
///////////////////////////////////////////////////////////////////////////

_trader =
[
    "Exile_Trader_Aircraft",
	"Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["HubStandingUC_idle2"],
    [12145.6,12746.9,0.00144958],
    200.296
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_AircraftCustoms",
	"Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle3"],
    [12170.7,12736.1,0.00143433],
    201.636
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_WasteDump",
	"Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUC_idle1"],
    [12192.6, 12732.9, 0.00141907],
    234.239
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Klen Traders
///////////////////////////////////////////////////////////////////////////
_trader =
[
    "Exile_Trader_Armory",
	"Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [11490.1,11324,0.54892],
	57
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Equipment",
	"Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3", "HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [11473.2,11340.2,0],
	7
]
call ExileClient_object_trader_create;


_trader =
[
    "Exile_Trader_Food",
	"Exile_Trader_Food",
    "GreekHead_A3_01",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [11495.1,11335.5,0.180817],
	233
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Hardware",
	"Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [11460.9,11342.9,0],
	10
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Office",
	"Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3", "HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [11468.9,11341.2,0],
	9
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_SpecialOperations",
	"Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [11496,11319.1,0.565857],
	329
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Vehicle",
	"Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3", "HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [11452,11323.8,0],
	15
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_VehicleCustoms",
	"Exile_Trader_VehicleCustoms",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [11450.1,11317.8,0],
	189
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_WasteDump",
	"Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [11456.6,11344.2,0],
	13
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
////////////////////////// BASH TRADER
///////////////////////////////////////////////////////////////////////////

_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 260;
_workBench setPosATL [4054.45,11669.7,0];
_trader =
[
    "Exile_Trader_Hardware",
	"Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 0;
_cashDesk setPosATL [4077.93,11697.8,0];
_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;
_microwave disableCollisionWith _cashDesk;
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];
_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;
_ketchup disableCollisionWith _cashDesk;
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];
_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;
_mustard disableCollisionWith _cashDesk;
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];
_trader =
[
    "Exile_Trader_Food",
	"Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;

_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 280;
_chair setPosATL [4053.93,11680.1,0];
_trader =
[
    "Exile_Trader_Armory",
	"Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Equipment",
	"Exile_Trader_Equipment",
    "WhiteHead_19",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [4053.62,11672.8,0],
	79.0909
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_SpecialOperations",
	"Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [4057.29,11664,0],
	44.0909
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Office",
	"Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [4066.45,11697.9,0],
	172.727
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_WasteDump",
	"Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [4092.82,11677.2,0],
	243.676
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Aircraft",
	"Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [4045.31,11660.9,0.0014],
	258.577
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_AircraftCustoms",
	"Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
    [4046.69,11662.8,0.00140381],
    0
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Vehicle",
	"Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [4076.35,11653.7,0],
	0
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_VehicleCustoms",
	"Exile_Trader_VehicleCustoms",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [4070.2,11659.8,0],
	48.6363
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
////////////////////////// STARY TRADER
///////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////
// Hardware Trader
///////////////////////////////////////////////////////////////////////////
_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 240;
_workBench setPosATL [6321.57,7785.46,0];
_trader =
[
    "Exile_Trader_Hardware",
	"Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Fast Food Trader
///////////////////////////////////////////////////////////////////////////
_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 20;
_cashDesk setPosATL [6337.6,7812.15,0];

_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;         
_microwave disableCollisionWith _cashDesk; 
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];

_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;         
_ketchup disableCollisionWith _cashDesk; 
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];

_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;         
_mustard disableCollisionWith _cashDesk; 
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];
_trader =
[
    "Exile_Trader_Food",
	"Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Armory Trader
///////////////////////////////////////////////////////////////////////////
_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 180;    
_chair setPosATL [6328.43,7782.45,0];
_trader =
[
    "Exile_Trader_Armory",
	"Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Equipment Trader
///////////////////////////////////////////////////////////////////////////
_trader =
[
    "Exile_Trader_Equipment",
	"Exile_Trader_Equipment",
    "WhiteHead_19",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [6324.27,7783.47,0],
	16.8182
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Specops Trader
///////////////////////////////////////////////////////////////////////////
_trader =
[
    "Exile_Trader_SpecialOperations",
	"Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [6314.74,7790.51,0],
	65.9091
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Office Trader
///////////////////////////////////////////////////////////////////////////
_trader =
[
    "Exile_Trader_Office",
	"Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [6326.91,7816.17,0],
	193.182
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
_trader =
[
    "Exile_Trader_WasteDump",
	"Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
	[6337.81,7786.15,0],
	351.364
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader =
[
    "Exile_Trader_Vehicle",
	"Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [6313.3,7800.93,0],
	270
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 181.364;
_carWreck setPosATL [6311.59,7801.33,0];

///////////////////////////////////////////////////////////////////////////
// Vehicle Customs Trader
///////////////////////////////////////////////////////////////////////////
_trader =
[
    "Exile_Trader_VehicleCustoms",
	"Exile_Trader_VehicleCustoms",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [6316.24,7810.23,0],
	129.545
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// RUSSIAN ROULETTE Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_RussianRoulette",
    "",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [6332.3,7803.51,0.00140381],
    127.365
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Boat Trader
///////////////////////////////////////////////////////////////////////////
_trader =
[
    "Exile_Trader_Boat",
	"Exile_Trader_Boat",
    "WhiteHead_17",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [13434.2,5440.97,0.0113521],
	269.545
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Bor Trader
///////////////////////////////////////////////////////////////////////////
_trader =
[
    "Exile_Trader_Vehicle",
	"Exile_Trader_Vehicle",
    "AfricanHead_03",
    ["HubStanding_idle1"],
    [3445.86,3809.13,0.00143433],
	26.0452
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Armory",
	"Exile_Trader_Armory",
    "WhiteHead_02",
    ["HubStanding_idle1"],
    [3453.15,3800.56,0.00143433],
	113.564
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Food",
	"Exile_Trader_Food",
    "WhiteHead_03",
    ["HubStanding_idle1"],
    [3436.21,3801.89,-0.00193787],
	228.131
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_Hardware",
	"Exile_Trader_Hardware",
    "AfricanHead_03",
    ["HubStanding_idle1"],
    [3439.49,3798.05,-0.00178528],
	225.137
]
call ExileClient_object_trader_create;

_trader =
[
    "Exile_Trader_WasteDump",
	"Exile_Trader_WasteDump",
    "WhiteHead_03",
    ["HubStanding_idle1"],
    [3441.01,3815.87,0.00143433],
	77.7069
]
call ExileClient_object_trader_create;
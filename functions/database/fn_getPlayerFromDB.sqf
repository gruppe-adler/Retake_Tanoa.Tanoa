_unit = _this select 0;
_gearArray = [];
_healthArray = [];

//check if there is a save
_value = profileNamespace getVariable "SLB_Retake_Tanoa_Player";

if  (isNil "_value") exitWith {
	diag_log format ["Retake: No save %1", _unit];
	forceRespawn player;
};

_value params ["_gearArray", "_healthArray", "_pos", "_dir"];

//set pos and dir
_unit setDir _dir;
_unit setPos _pos;

//set health
_health = _healthArray select 2;
{
	_unit setHitIndex [_forEachIndex, _x];
} forEach _health;

//set gear
removeAllWeapons _unit;
removeGoggles _unit;
removeHeadgear _unit;
removeVest _unit;
removeUniform _unit;
removeAllAssignedItems _unit;
removeBackpack _unit;

_unit setUnitLoadout _gearArray;
LOADSETUPDONE = true;
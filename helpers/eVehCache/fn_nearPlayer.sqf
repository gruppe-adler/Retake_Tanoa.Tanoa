// Near player function - based on F3 Caching - modified by McDiod
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS
private ["_ent","_distance","_pos","_players"];
_pos = getPosATL (_this select 0);
_distance = _this select 1;

// ====================================================================================

// Create a list of all players
_players = allPlayers - entities "HeadlessClient_F";

// ====================================================================================

// Check whether a player is in the given distance - return true if yes
if (({_x distance _pos < _distance} count _players) > 0) exitWith {true};
false
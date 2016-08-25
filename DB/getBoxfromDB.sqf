// Fill AmmoBox
_boxName = "";
_value = profileNamespace getVariable "SLB_Retake_Tanoa_Box";

if (isNil "_value") exitWith {};

{
        switch (_forEachIndex) do {
                    case 0: { {_boxName addBackpackCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
                    case 1: { {_boxName addItemCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
                    case 2: { {_boxName addMagazineCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
                    case 3: { {_boxName addWeaponCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
        };
} forEach _value;

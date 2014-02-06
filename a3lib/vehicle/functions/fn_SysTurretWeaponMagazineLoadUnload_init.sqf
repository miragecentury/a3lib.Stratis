scriptName "a3lib_Vehicle_fn_SysTurretWeaponMagazineLoadUnload.sqf";
private ["_all_vh"];

_all_vh = vehicles;

{
	[player,_x] execVM "a3lib\vehicle\scripts\SysTurretWeaponMagazineLoadUnload_local_init.sqf";
} forEach _all_vh;

//For All Vehicles Init;
a3lib_Vehicle_SysTurretWeaponMagazineLoadUnload_local_EventHandler_Put = player addEventHandler ["Put",{
	[player, (_this select 1)] execVM "a3lib\vehicle\scripts\SysTurretWeaponMagazineLoadUnload_local_init.sqf";
}] ;
private ["_a3lib_hdl_vehicle_SysTurretWeaponMagazineLoadUnload"];

if(a3lib_vehicle_SysTurretWeaponMagazineLoadUnload_active)then{
	_a3lib_hdl_vehicle_SysTurretWeaponMagazineLoadUnload = [] spawn a3lib_Vehicle_fnc_SysTurretWeaponMagazineLoadUnload_init;
};

//wait 
waitUntil{scriptDone _a3lib_hdl_vehicle_SysTurretWeaponMagazineLoadUnload;}:
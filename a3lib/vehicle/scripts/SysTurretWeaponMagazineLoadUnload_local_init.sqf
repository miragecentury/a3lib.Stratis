scriptName "a3lib_Vehicle_sc_SysTurretWeaponMagazineLoadUnload_local_init.sqf";

private["_player", "_vh", "_doInit"];
_doInit = false;

_player = _this select 0;
_vh = _this select 1;

if(_vh isKindOf "AllVehicles")then{
	private ["_alreadyInit"];
	_alreadyInit = _vh getVariable "a3lib_Vehicle_sc_SysTurretWeaponMagazineLoadUnload_local_init";
	if( !isnil("_alreadyInit") )then{
		if(_alreadyInit != true) then{
			_doInit = true;
		}else{
			
		};
	}else{
		_vh setVariable ["a3lib_Vehicle_sc_SysTurretWeaponMagazineLoadUnload_local_init",true,false];
		_doInit = true;
	};
	
	if(_doInit)then{		
		_vh addAction ["Manage Magazine", {
			//[west,"HQ"] sideChat format ["%1, %2, %3, %4",_this select 0, _this select 1, _this select 2, _this select 3];
		},(_vh call a3lib_Tools_fnc_getTurretsInfos),0,true,true,"","true"];
	};
}else{
	hint "Not AllVehicles";
};
private["_all_vh"];
if(a3lib_ext_igiload_active)then{
	_all_vh = vehicles;
	{
		[_x] execVM "IgiLoad\IgiLoad.sqf";
		//Need execVM on createVehicle ? no auto
	} forEach _all_vh;
};
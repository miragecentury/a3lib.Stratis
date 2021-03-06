//start Loading Screen
startLoadingScreen ["Loading My Mission, please wait..."];

//D�sactivation de l'autoSaving
enableSaving [false,false];
// sleep de dev pour synch
if(!isDedicated && isServer)then{sleep 1;};
#include "a3lib\config.sqf";
//Si serveur
if(isServer)then{
private "_a3lib_hdl_initServer";
	_a3lib_hdl_initServer = execVM "a3lib\initServer.sqf";
	waitUntil{scriptDone _a3lib_hdl_initServer};
	diag_log "EndInitServer";
};
//Si client
if(!isDedicated)then{
	//Attente que le player soit pr�t
	waitUntil {!isNull player && player == player};
	private "_a3lib_hdl_initPlayer";
	_a3lib_hdl_initPlayer = execVM "a3lib\initPlayer.sqf";
	waitUntil{scriptDone _a3lib_hdl_initPlayer};
	diag_log "EndInitPlayer";
};

//End Loading play
endLoadingScreen;
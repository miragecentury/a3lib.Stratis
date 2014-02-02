//start Loading Screen
startLoadingScreen ["Loading My Mission, please wait..."];

//Désactivation de l'autoSaving
enableSaving [false,false];
// sleep de dev pour synch
if(!isDedicated && isServer)then{sleep 1;};
#include "a3lib\config.sqf";
//Si serveur
if(isServer)then{
	diag_log "EndInitServer";
};
//Si client
if(!isDedicated)then{
	//Attente que le player soit prêt
	waitUntil {!isNull player && player == player};
	private "_a3lib_hdl_initServer";
	_a3lib_hdl_initServer = execVM "a3lib\initServer.sqf";
	diag_log "EndInitPlayer";
};

//End Loading play
endLoadingScreen;
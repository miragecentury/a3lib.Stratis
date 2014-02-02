//Désactivation de l'autoSaving
enableSaving [false,false];

// sleep de dev pour synch
if(!isDedicated && isServer)then{sleep 1;};

//Si serveur
if(isServer)then{
	diag_log "EndInitServer";
};
//Si client
if(!isDedicated)then{
	//Attente que le player soit prêt
	waitUntil {!isNull player && player == player};
	diag_log "EndInitPlayer";
};
// eventHandlers.sqf

// Event handler for player respawn
player addEventHandler ["Respawn", {
    player removeAction (player getVariable "currentActionId");
}];

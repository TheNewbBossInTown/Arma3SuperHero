#include "dialog.sqf"

// The rest of your code...

// Add the Respawn event handler to the player
player addEventHandler ["Respawn", {
    // _newUnit is the new player unit after respawn
    params ["_newUnit"];

    // Wait for 10 seconds
    sleep 10;

    // Set canUseAbility to true initially
    _newUnit setVariable ["canUseAbility", true];

    // Add the action if canUseAbility is true
    _newUnit setVariable ["currentActionId", _newUnit addAction ["Activate Ability", {if ((_newUnit getVariable "canUseAbility") == true) then {call (_newUnit getVariable "currentMainAbility"); _newUnit setVariable ["canUseAbility", false];}}, [], 57, false, true, "", ""]];

    // Add an action to the new unit that opens the dialog when the user presses the "User Action 1" key
    _newUnit addAction ["Open Dialog", {
        call openMyDialog;
    }];
}];

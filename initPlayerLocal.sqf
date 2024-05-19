#include "dialog.sqf"

// The rest of your code...

// Function to add actions to the player
[player] spawn {
    params ["_unit"];

    // Wait for 10 seconds
    sleep 10;

    // Set canUseAbility to true initially
    _unit setVariable ["canUseAbility", true];

    // Add the action if canUseAbility is true
    if ((_unit getVariable "canUseAbility") == true) then {
        _unit setVariable ["currentActionId", _unit addAction ["Activate Ability", {
            if ((_this select 0) getVariable "canUseAbility") then {
                call ((_this select 0) getVariable "currentMainAbility");
                (_this select 0) setVariable ["canUseAbility", false];
            };
        }, [], 57, false, true, "", ""]];
    };

    // Add an action to the new unit that opens the dialog when the user presses the "User Action 1" key
    _unit addAction ["Open Dialog", {
        [] execVM "openMyDialog.sqf";
    }];

    // Show the hint after the actions are added
    hint "Hero Menu Activated";
};

// Add the Respawn event handler to the player
player addEventHandler ["Respawn", {
    // _newUnit is the new player unit after respawn
    params ["_newUnit"];

    // Call the function to add actions to the player
    [_newUnit] spawn {
        params ["_unit"];

        // Wait for 10 seconds
        sleep 10;

        // Set canUseAbility to true initially
        _unit setVariable ["canUseAbility", true];

        // Add the action if canUseAbility is true
        if ((_unit getVariable "canUseAbility") == true) then {
            _unit setVariable ["currentActionId", _unit addAction ["Activate Ability", {
                if ((_this select 0) getVariable "canUseAbility") then {
                    call ((_this select 0) getVariable "currentMainAbility");
                    (_this select 0) setVariable ["canUseAbility", false];
                };
            }, [], 57, false, true, "", ""]];
        };

        // Add an action to the new unit that opens the dialog when the user presses the "User Action 1" key
        _unit addAction ["Open Dialog", {
            [] execVM "openMyDialog.sqf";
        }];

        // Show the hint after the actions are added
        hint "Hero Menu Activated";
    };
}];

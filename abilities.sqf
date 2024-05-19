// abilities.sqf

// Define a cooldown period for each ability
#define COOLDOWN 20
#define ABILITY_DURATION 10

// Define the abilities for each class
supermanAbilities = {
    hint "You have the abilities of Superman!";
    player setSpeedMode "FULL"; // Superman can run fast (passive ability)
};

batmanAbilities = {
    hint "You have the abilities of Batman!";
    player addItem "NVGoggles"; // Batman has night vision (passive ability)
};

spidermanAbilities = {
    hint "You have the abilities of Spiderman!";
    player setSpeedMode "FULL"; // Spiderman can move fast (passive ability)
};

ironManAbilities = {
    hint "You have the abilities of IronMan!";
    player addItem "Binocular"; // IronMan has advanced vision (passive ability)
};

// Define the main abilities for each class
supermanMainAbility = {
    player allowDamage false; // Superman becomes invincible
    sleep ABILITY_DURATION; // Invincibility lasts for 10 seconds
    player allowDamage true; // Superman becomes vulnerable again
    sleep COOLDOWN; // Wait for cooldown period before the next ability can be used
    player setVariable ["canUseAbility", true];
};

batmanMainAbility = {
    private _smokeTypes = ["SmokeShellRed", "SmokeShellGreen", "SmokeShellYellow", "SmokeShellPurple", "SmokeShellBlue", "SmokeShellOrange"];
    private _flareType = "F_40mm_White"; // Type of flare to be used
    _flareType createVehicle position player; // Create a flare at the player's position
    for "_i" from 1 to 5 do {
        private _smokeType = selectRandom _smokeTypes; // Select a random smoke color
        _smokeType createVehicle position player; // Create a smoke grenade at the player's position
        sleep 1; // Wait for 1 second
    };
    sleep COOLDOWN; // Wait for cooldown period before the next ability can be used
    player setVariable ["canUseAbility", true];
};

spidermanMainAbility = {
    player setUnitRecoilCoefficient 0; // Spiderman has steady aim
    sleep ABILITY_DURATION; // Steady aim lasts for 10 seconds
    player setUnitRecoilCoefficient 1; // Reset recoil coefficient
    sleep COOLDOWN; // Wait for cooldown period before the next ability can be used
    player setVariable ["canUseAbility", true];
};

ironManMainAbility = {
    player allowDamage false; // IronMan becomes invincible
    sleep ABILITY_DURATION; // Invincibility lasts for 10 seconds
    player allowDamage true; // IronMan becomes vulnerable again
    sleep COOLDOWN; // Wait for cooldown period before the next ability can be used
    player setVariable ["canUseAbility", true];
};

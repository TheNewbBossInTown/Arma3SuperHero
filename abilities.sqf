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
};

batmanMainAbility = {
    player addItem "SmokeShell"; // Batman has a smoke grenade
    player action ["ThrowSmoke", player, player, "SmokeShell"]; // Batman uses the smoke grenade
    sleep ABILITY_DURATION; // Smoke lasts for 10 seconds
    sleep COOLDOWN; // Wait for cooldown period before the next ability can be used
};

spidermanMainAbility = {
    player setUnitRecoilCoefficient 0; // Spiderman has steady aim
    sleep ABILITY_DURATION; // Steady aim lasts for 10 seconds
    player setUnitRecoilCoefficient 1; // Reset recoil coefficient
    sleep COOLDOWN; // Wait for cooldown period before the next ability can be used
};

ironManMainAbility = {
    player allowDamage false; // IronMan becomes invincible
    sleep ABILITY_DURATION; // Invincibility lasts for 10 seconds
    player allowDamage true; // IronMan becomes vulnerable again
    sleep COOLDOWN; // Wait for cooldown period before the next ability can be used
};

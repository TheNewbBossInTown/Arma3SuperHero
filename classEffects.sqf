// classEffects.sqf

// Function to remove all class effects
removeClassEffects = {
    player allowDamage true; // Remove invincibility
    player setSpeedMode "NORMAL"; // Reset speed
    player removeItem "NVGoggles"; // Remove night vision goggles
    player removeItem "SmokeShell"; // Remove smoke grenade
    player setUnitRecoilCoefficient 1; // Reset recoil coefficient
    player removeItem "Binocular"; // Remove IronMan's binoculars
};

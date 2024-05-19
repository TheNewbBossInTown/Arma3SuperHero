// levelingSystem.sqf

// Leveling System

playerLevel = 1; // Initialize player level
playerExperience = 0; // Initialize player experience

// Function to gain experience
gainExperience = {
    playerExperience = playerExperience + 10; // Gain 10 experience points
    if (playerExperience >= 100) then { // If player has 100 or more experience points then...
        playerLevel = playerLevel + 1; // Level up
        playerExperience = playerExperience - 100; // Reset experience points
        hint format ["You leveled up! You are now level %1.", playerLevel]; // Show level up message
    };
};

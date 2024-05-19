// Function to open the dialog
openMyDialog = {
    createDialog "MyDialog";
};


// Add key event handler for "User Action 1"
player addAction ["Activate Ability", {call (player getVariable "currentMainAbility")}, [], 57, false, true, "", ""];

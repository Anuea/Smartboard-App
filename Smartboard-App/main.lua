local Interface = require("interface")

local function handleButtonEvent(event,functionPassed)
    if "ended" == event.phase then
        functionPassed()
    end
end

local HomeButtons = {
    Actions={
        fire = function()
            print("ACTIONS WAS CLICKED")
        end;
        label = "Actions";
    };
    Edit={
        fire = function()
            print("EDIT WAS CLICKED")
        end;
        cornerRadius = 0;
        label = "Edit";
    }
}
Interface:Destroy()
Interface.CreateHomeButtons(HomeButtons)
Changeeee
--Quick edit notice


yikesss

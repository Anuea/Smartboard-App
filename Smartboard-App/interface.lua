local API = {}

local TemplateStyle = {
    fire = function()
        print("NO FUNCTION ASSIGNED")
    end,
    label = "button",
    onEvent = function(event)
        if "ended" == event.phase then
            print("Test function!!!")
        end
    end,
    emboss = false,
    -- Properties for a rounded rectangle button
    shape = "roundedRect",
    width = 200,
    height = 40,
    cornerRadius = 2,
    fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
    strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
    strokeWidth = 4
}
TemplateStyle.__index = TemplateStyle
local TestTable = {Hello=1}
TestTable.__index = TestTable

local widget = require("widget")
function API.CreateHomeButtons(TableSent)
    local function CreateNewStyles()
        local Styles = {}
        for i,v in pairs(TableSent) do
            local CurrentStyle = setmetatable({},TemplateStyle)
            Styles[i] = CurrentStyle
        end
        for i,v in pairs(Styles) do
            local meta = getmetatable(v)
            print(Styles[i])
            for prop,val in pairs(v) do
                if meta[prop] then
                    meta[prop] = val
                end
            end
        end
        return Styles
    end

    local Int = 50
    local NewStyles = CreateNewStyles()
    for i,v in pairs(NewStyles) do
        local meta = getmetatable(v)
        local NewButton = widget.newButton(meta)
        Int = Int + 50
        NewButton.x = display.contentCenterX
        NewButton.y = display.contentCenterY + Int
    end
end

return API

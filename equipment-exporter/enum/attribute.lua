---@class Attribute
local Attribute = {
    NONE = 0,
    FIRE = 1,
    WATER = 2,
    ICE = 3,
    ELEC = 4,
    DRAGON = 5,
    POISON = 6,
    PARALYSE = 7,
    SLEEP = 8,
    BLAST = 9,
}

local ATTRIBUTES_TO_STRINGS = {
    [Attribute.NONE] = "NONE",
    [Attribute.FIRE] = "FIRE",
    [Attribute.WATER] = "WATER",
    [Attribute.ICE] = "ICE",
    [Attribute.ELEC] = "ELEC",
    [Attribute.DRAGON] = "DRAGON",
    [Attribute.POISON] = "POISON",
    [Attribute.PARALYSE] = "PARALYSE",
    [Attribute.SLEEP] = "SLEEP",
    [Attribute.BLAST] = "BLAST",
}

---@param attribute Attribute
---@return string
function Attribute.to_string(attribute)
    return ATTRIBUTES_TO_STRINGS[attribute]
end

return Attribute

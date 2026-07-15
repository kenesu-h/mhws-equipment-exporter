---@class Rarity
local Rarity = {
    RARITY_0 = 18,
    RARITY_1 = 17,
    RARITY_2 = 16,
    RARITY_3 = 15,
    RARITY_4 = 14,
    RARITY_5 = 13,
    RARITY_6 = 12,
    RARITY_7 = 11,
    RARITY_8 = 10,
    RARITY_9 = 9,
    RARITY_10 = 8,
    RARITY_11 = 7,
}

local RARITIES_TO_INTEGERS = {
    [Rarity.RARITY_0] = 1,
    [Rarity.RARITY_1] = 2,
    [Rarity.RARITY_2] = 3,
    [Rarity.RARITY_3] = 4,
    [Rarity.RARITY_4] = 5,
    [Rarity.RARITY_5] = 6,
    [Rarity.RARITY_6] = 7,
    [Rarity.RARITY_7] = 8,
    [Rarity.RARITY_8] = 9,
    [Rarity.RARITY_9] = 10,
    [Rarity.RARITY_10] = 11,
    [Rarity.RARITY_11] = 12,
}

---@param rarity Rarity
---@return integer
function Rarity.to_integer(rarity)
    return RARITIES_TO_INTEGERS[rarity]
end

return Rarity

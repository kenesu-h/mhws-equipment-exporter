---@class EquipmentData
---@field weapons WeaponData[]
local EquipmentData = {}

---@param weapons WeaponData[]
function EquipmentData:new(weapons)
    self.__index = self
    return setmetatable(
        {
            weapons = weapons
        },
        self
    )
end

return EquipmentData

---@class WeaponManagedObject
---@field equip_work REManagedObject
---@field weapon_data REManagedObject
local WeaponManagedObject = {}

---@param equip_work REManagedObject
---@param weapon_data REManagedObject
function WeaponManagedObject:new(equip_work, weapon_data)
    self.__index = self
    return setmetatable(
        {
            equip_work = equip_work,
            weapon_data = weapon_data,
        },
        self
    )
end

return WeaponManagedObject

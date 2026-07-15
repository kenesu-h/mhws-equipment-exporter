local WeaponManagedObject = require("equipment-exporter.class.weapon-managed-object")
local EquipmentCategory = require("equipment-exporter.enum.equipment-category")

local WEAPON_UTIL_TYPE_NAME = "app.WeaponUtil"

---@class WeaponUtil
---@field __definition RETypeDefinition
local WeaponUtil = {}

---@param definition RETypeDefinition
---@return WeaponUtil
function WeaponUtil:new(definition)
    self.__index = self
    return setmetatable({ __definition = definition }, self)
end

---@return WeaponUtil
function WeaponUtil:default()
    return WeaponUtil:new(
        sdk.find_type_definition(WEAPON_UTIL_TYPE_NAME)
    )
end

local GET_WEAPON_DATA_METHOD_NAME = "getWeaponData(app.savedata.cEquipWork)"

---@param equip_works REManagedObject[]
---@return WeaponManagedObject[]
function WeaponUtil:get_managed_objects(equip_works)
    ---@type WeaponManagedObject[]
    local weapon_managed_objects = {}

    for _, equip_work in ipairs(equip_works) do
        if equip_work:call("get_Category()") ~= EquipmentCategory.WEAPON then
            goto continue
        end

        local weapon_data = self.__definition:get_method(GET_WEAPON_DATA_METHOD_NAME):call(nil, equip_work)
        local weapon_managed_object = WeaponManagedObject:new(equip_work, weapon_data)
        table.insert(weapon_managed_objects, weapon_managed_object)
        ::continue::
    end

    return weapon_managed_objects
end

return WeaponUtil

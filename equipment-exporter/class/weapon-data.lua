local Attribute = require("equipment-exporter.enum.attribute")
local Rarity = require("equipment-exporter.enum.rarity")

---@class WeaponData
---@field name string
---@field rarity integer
---@field attack integer
---@field defense integer
---@field critical integer
---@field attribute string
---@field attribute_value integer
---@field subattribute string
---@field subattribute_value integer
local WeaponData = {}

---@param name string
---@param rarity integer
---@param attack integer
---@param defense integer
---@param critical integer
---@param attribute string
---@param attribute_value integer
---@param subattribute string
---@param subattribute_value integer
---@return WeaponData
function WeaponData:new(
    name,
    rarity,
    attack,
    defense,
    critical,
    attribute,
    attribute_value,
    subattribute,
    subattribute_value
)
    self.__index = self
    return setmetatable(
        {
            name = name,
            rarity = rarity,
            attack = attack,
            defense = defense,
            critical = critical,
            attribute = attribute,
            attribute_value = attribute_value,
            subattribute = subattribute,
            subattribute_value = subattribute_value,
        },
        self
    )
end

---@param message_util MessageUtil
---@param managed_object WeaponManagedObject
---@return WeaponData
function WeaponData:from_managed_object(message_util, managed_object)
    local weapon_data = managed_object.weapon_data

    ---@type Rarity
    local rarity = weapon_data:get_field("_Rare"):get_field("_Value")

    ---@type Attribute
    local attribute = weapon_data:get_field("_Attribute"):get_field("_Value")

    ---@type Attribute
    local sub_attribute = weapon_data:get_field("_SubAttribute"):get_field("_Value")

    return WeaponData:new(
        message_util:get(weapon_data:get_field("_Name")),
        Rarity.to_integer(rarity),
        weapon_data:get_field("_Attack"),
        weapon_data:get_field("_Defense"),
        weapon_data:get_field("_Critical"),
        Attribute.to_string(attribute),
        weapon_data:get_field("_AttributeValue"),
        Attribute.to_string(sub_attribute),
        weapon_data:get_field("_SubAttributeValue")
    )
end

return WeaponData

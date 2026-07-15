local EquipmentData = require("equipment-exporter.class.equipment-data")
local WeaponData = require("equipment-exporter.class.weapon-data")
local MessageUtil = require("equipment-exporter.components.message-util")
local SaveDataManager = require("equipment-exporter.components.save-data-manager")
local WeaponUtil = require("equipment-exporter.components.weapon-util")

local SCRIPT_TREE_NODE_LABEL = "equipment-exporter"
local EXPORTED_EQUIPMENT_JSON_PATH = "exported-equipment.json"

---@class EquipmentExporterScript
---@field __save_data_manager SaveDataManager
---@field __weapon_util WeaponUtil
---@field __message_util MessageUtil
local EquipmentExporterScript = {}

---@param save_data_manager SaveDataManager
---@param weapon_util WeaponUtil
---@param message_util MessageUtil
---@return EquipmentExporterScript
function EquipmentExporterScript:new(
    save_data_manager,
    weapon_util,
    message_util
)
    self.__index = self
    return setmetatable(
        {
            __save_data_manager = save_data_manager,
            __weapon_util = weapon_util,
            __message_util = message_util,
        },
        self
    )
end

---@return EquipmentExporterScript
function EquipmentExporterScript:default()
    return EquipmentExporterScript:new(
        SaveDataManager:default(),
        WeaponUtil:default(),
        MessageUtil:default()
    )
end

function EquipmentExporterScript:initialize()
    self:__initialize_reframework_gui()
end

function EquipmentExporterScript:__initialize_reframework_gui()
    re.on_draw_ui(function()
        if imgui.tree_node(SCRIPT_TREE_NODE_LABEL) then
            local is_pressed = imgui.button("Export Equipment to JSON")
            if is_pressed then
                local equip_works = self.__save_data_manager:get_equip_works()
                local weapon_managed_objects = self.__weapon_util:get_managed_objects(equip_works)

                ---@type WeaponData[]
                local all_weapon_data = {}
                for _, managed_object in ipairs(weapon_managed_objects) do
                    local weapon_data = WeaponData:from_managed_object(
                        self.__message_util,
                        managed_object
                    )
                    table.insert(all_weapon_data, weapon_data)
                end

                local equipment_data = EquipmentData:new(all_weapon_data)
                json.dump_file(EXPORTED_EQUIPMENT_JSON_PATH, equipment_data)
            end

            imgui.tree_pop()
        end
    end)
end

EquipmentExporterScript:default():initialize()

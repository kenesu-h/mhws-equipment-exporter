local SAVE_DATA_MANAGER_TYPE_NAME = "app.SaveDataManager"

---@class SaveDataManager
---@field __singleton REManagedObject
local SaveDataManager = {}

---@param singleton REManagedObject
---@return SaveDataManager
function SaveDataManager:new(singleton)
    self.__index = self
    return setmetatable({ __singleton = singleton }, self)
end

---@return SaveDataManager
function SaveDataManager:default()
    return SaveDataManager:new(
        sdk.get_managed_singleton(SAVE_DATA_MANAGER_TYPE_NAME)
    )
end

---@return REManagedObject[]
function SaveDataManager:get_equip_works()
    return self.__singleton
        :call("getCurrentUserSaveData()")
        :get_field("_Equip")
        :get_field("_EquipBox")
end

return SaveDataManager

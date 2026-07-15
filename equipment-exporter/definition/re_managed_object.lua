---@meta

---@class REManagedObject
REManagedObject = {}

---@param method_name string
---@param ... any
---@return any
function REManagedObject:call(method_name, ...) end

---@param name string
---@return any
function REManagedObject:get_field(name) end

---@meta

---@alias void* integer

---@class sdk
sdk = {}

---@param name string
---@return REManagedObject
function sdk.get_managed_singleton(name) end

---@param name string
---@return RETypeDefinition
function sdk.find_type_definition(name) end

---@param method_definition REMethodDefinition
---@param pre_function function?
---@param post_function function?
---@param ignore_jmp boolean?
function sdk.hook(method_definition, pre_function, post_function, ignore_jmp) end

---@param value void*
---@return integer
function sdk.to_int64(value) end

---@param value void*
---@return REManagedObject
function sdk.to_managed_object(value) end

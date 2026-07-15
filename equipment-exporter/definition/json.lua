---@meta

---@class json
json = {}

---@param filepath string
function json.load_file(filepath) end

---@param filepath string
---@param value table
---@param indent boolean?
function json.dump_file(filepath, value, indent) end

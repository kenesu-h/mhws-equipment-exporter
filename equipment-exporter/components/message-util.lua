local MESSAGE_UTIL_TYPE_NAME = "via.gui.message"

---@class MessageUtil
---@field __definition RETypeDefinition
local MessageUtil = {}

---@param definition RETypeDefinition
---@return MessageUtil
function MessageUtil:new(definition)
    self.__index = self
    return setmetatable({ __definition = definition }, self)
end

function MessageUtil:default()
    return MessageUtil:new(
        sdk.find_type_definition(MESSAGE_UTIL_TYPE_NAME)
    )
end

---@param guid string
---@return string
function MessageUtil:get(guid)
    return self.__definition
        :get_method("get(System.Guid)")
        :call(nil, guid)
end

return MessageUtil

---@meta

---@class imgui
imgui = {}

---@param disabled boolean
function imgui.begin_disabled(disabled) end

function imgui.end_disabled() end

---@param label string
---@param size integer[]?
---@return boolean
function imgui.button(label, size) end

---@param text string
function imgui.text(text) end

---@param label string
---@param selection integer
---@param values table<any, string>
---@return boolean, integer
function imgui.combo(label, selection, values) end

---@param label string
---@param value string
---@param flags integer?
---@return boolean, string, integer, integer
function imgui.input_text(label, value, flags) end

---@param label string
---@return boolean
function imgui.tree_node(label) end

function imgui.tree_pop() end

function imgui.new_line() end

---@param str_id string
---@param column integer
---@param flags integer
---@param outer_size integer[]
---@param inner_width number
---@return boolean
function imgui.begin_table(str_id, column, flags, outer_size, inner_width) end

function imgui.end_table() end

---@param row_flags integer
---@param min_row_height number
function imgui.table_next_row(row_flags, min_row_height) end

function imgui.table_next_column() end

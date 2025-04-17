---@meta

---@class Back: Object
---@overload fun(args: {T: table, container: Back}): Back
Back = {}
Back.__index = Back
Back.super = Object

---@param self Back
---@param selected_back SMODS.Back|table
---@return Back
function Back:__call(selected_back) end

---@param self Back
---@param selected_back SMODS.Back|table
function Back:init(selected_back) end

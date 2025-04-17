---@meta

---@class Tag: Object
---@overload fun(_tag: string, for_collection?: boolean, _blind_type?: string): Tag
Tag = {}
Tag.__index = Tag
Tag.super = Object

---@param self Tag
---@param _tag string
---@param for_collection? boolean
---@param _blind_type? string
---@return Tag
function Tag:__call(_tag, for_collection, _blind_type) end

---@param self Tag
---@param _tag string
---@param for_collection? boolean
---@param _blind_type? string
function Tag:init(_tag, for_collection, _blind_type) end

---@param self Tag|table
---@param tag_sprite Sprite|table
---@param vars_only boolean 
---@return Sprite|table? tag_sprite Returns `loc_vars` if `vars_only` is `true`. 
--- Sets the Tag's description UIBox. 
function Tag:get_uibox_table(tag_sprite, vars_only) end

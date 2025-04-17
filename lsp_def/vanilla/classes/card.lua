---@meta

---@class Card: Moveable
---@field ability? table
---@field ignore_base_shader? table
---@field ignore_shadow? table
---@overload fun(X: number, Y: number, W: number, H: number, card: table, center: table, params?: table): Card
Card = {}
Card.__index = Card
Card.super = Moveable

---@param self Card
---@param X number
---@param Y number
---@param W number
---@param H number
---@param card table
---@param center table
---@param params table
---@return Card
function Card:__call(X, Y, W, H, card, center, params) end

---@param self Card
---@param X number
---@param Y number
---@param W number
---@param H number
---@param card table
---@param center table
---@param params table
function Card:init(X, Y, W, H, card, center, params) end

---@param vars_only? boolean Only return description values
---@return table # Becomes `loc_vars` if `vars_only` is `true`. 
---@return table? man_start Only returns if `vars_only` is `true`. 
---@return table? main_end Only returns if `vars_only` is `true`. 
--- Handles variables before passing into `generate_card_ui()`. 
function Card:generate_UIBox_ability_table(vars_only) end

---@param self Card
---@return number
--- Returns card Mult. 
function Card:get_chip_mult() end

---@param self Card
---@return number
--- Returns card XMult.
function Card:get_chip_x_mult() end

---@param self Card
---@return number
--- Returns card hand Mult.
function Card:get_chip_h_mult() end

---@param self Card
---@return number
--- Returns card hand XMult.
function Card:get_chip_h_x_mult() end

---@param self Card
---@return number
--- Returns card XChips.
function Card:get_chip_x_bonus() end

---@param self Card
---@return number
--- Returns card hand Chips.
function Card:get_chip_h_bonus() end

---@param self Card
---@return number
--- Returns card hand XChips.
function Card:get_chip_h_x_bonus() end

---@param self Card
---@return number
--- Returns card dollars.
function Card:get_p_dollars() end

---@param self Card
---@return number
--- Returns card hand dollars.
function Card:get_h_dollars() end

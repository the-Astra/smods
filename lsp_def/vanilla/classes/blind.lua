---@meta

---@class Blind: Moveable
---@overload fun(X: number, Y: number, W: number, H: number): Blind
---@overload fun(X: {T:{X: number, Y: number, W: number, H: number}}): Blind
Blind = {}
Blind.__index = Blind
Blind.super = Moveable

---@param self Blind
---@param X {T:{X: number, Y: number, W: number, H: number}}|number
---@param Y number
---@param W number
---@param H number
---@return Blind
function Blind:__call(X,Y,W,H) end

---@param self Blind
---@param X {T:{X: number, Y: number, W: number, H: number}}|number
---@param Y number
---@param W number
---@param H number
function Blind:init(X,Y,W,H) end
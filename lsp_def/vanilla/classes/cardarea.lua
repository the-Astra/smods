---@meta

---@class CardArea: Moveable
---@overload fun(X: number, Y: number, W: number, H: number, config?: table): CardArea
CardArea = {}
CardArea.__index = CardArea
CardArea.super = Moveable

--- Consumable CardArea
G.consumeables = CardArea(0, 0, 2.3*G.CARD_W, 0.95*G.CARD_H, {card_limit = 2, type = 'joker', highlight_limit = 1})
--- Joker CardArea
G.jokers = CardArea(0, 0, 4.9*G.CARD_W, 0.95*G.CARD_H, {card_limit = 5, type = 'joker', highlight_limit = 1})
--- Discard CardArea
G.discard = CardArea(0, 0, G.CARD_W, G.CARD_H, {card_limit = 500, type = 'discard'})
--- Voucher CardArea
G.vouchers = CardArea(0, 0, G.CARD_W, G.CARD_H, {type = 'discard', card_limit = 1e308})
--- Deck CardArea
G.deck = CardArea(0, 0, 5.3*G.CARD_W, 0.95*G.CARD_H, {type = 'deck', card_limit = 52})
--- Hand CardArea
G.hand = CardArea(0, 0, 6*G.CARD_W, 0.95*G.CARD_H, {type = 'hand', card_limit = 8})
--- Played CardArea
G.play = CardArea(0, 0, 5.3*G.CARD_W, 0.95*G.CARD_H, {type = 'play', card_limit = 5})

---@param self CardArea
---@param X number
---@param Y number
---@param W number
---@param H number
---@param config table
---@return CardArea
function CardArea:__call(X, Y, W, H, config) end

---@param self CardArea
---@param X number
---@param Y number
---@param W number
---@param H number
---@param config table
function CardArea:init(X, Y, W, H, config) end
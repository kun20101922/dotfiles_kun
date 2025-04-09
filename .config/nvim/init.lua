require("kun.lazy")
require("kun.core")

local cb = require("colorbuddy.init")
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local styles = cb.styles

Color.new("black", "#000000")
Group.new("CursorLine", colors.none, colors.base03, styles.NONE, colors.base1)
Group.new("Visual", colors.none, colors.base03, styles.reverse)

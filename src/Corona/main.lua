-- Copyright (c) 2013 Corona Labs Inc. All Rights Reserved.

local json = require "json"

local g = display.newGroup()

local title = display.newText( "hello, UTF8!", 0, 0, native.systemFont, 40 )
title.x = display.contentWidth / 2
title.y = 50
title:setTextColor( 233, 137, 38 )

g:insert(title)

local directions = display.newText( "CoronaSDK "..system.getInfo("build"), 0, 0, 300, 0, "Helvetica", 15 )
directions.anchorY = 0
directions.x = display.contentWidth / 2
directions.y = title.y + title.height + 10
directions:setFillColor( 233/255, 137/255, 38/255 )

g:insert(directions)

local function display( str )
	print(tostring(str))
	directions.text = directions.text .. "\n" .. tostring(str)
end


local utf8 = require("plugin.utf8")
display("utf8 version: ".. tostring(utf8.version))
display("")

local string = "abc123@#$"
display("Lua: " .. string .. " --> " .. string.upper(string))
display("UTF8: " .. string .. " --> " .. utf8.upper(string))

local string = "lľsšcčtťzž"
display("Lua: " .. string .. " --> " .. string.upper(string))
display("UTF8: " .. string .. " --> " .. utf8.upper(string))

local string = "ĤĦǢàæåƍƛȡȥ"
display("Lua: " .. string .. " --> " .. string.upper(string))
display("UTF8: " .. string .. " --> " .. utf8.upper(string))

-- local string = "⌘⌦⎆😆😎"
-- -- display("Lua: " .. string .. " --> " .. string.upper(string))
-- -- display("UTF8: " .. string .. " --> " .. utf8.upper(string))

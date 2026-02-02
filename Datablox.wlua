local baseProtocol = "roblox://experiences/start?"


local ui = require "ui"

local win = ui.Window("Dans Roblox Place Joiner", 300, 300)

local join = ui.Button(win, "Join", 70, 20)
local pid = ui.Entry(win, "Place ID", 25, 60)
local jobid = ui.Entry(win, "Job ID", 25, 100)
local priv = ui.Entry(win, "Private Server ID", 25, 140)
win:show()

local url = baseProtocol

function join.onClick()
  if tonumber(pid.text) ~= nil then
    url = url .. "placeId=" .. pid.text
  end
  if tonumber(jobid.text) ~= nil then
    url = url .. "&gameInstanceId=" .. jobid.text
  end
  
  if tonumber(priv.text) ~= nil then
    url = url .. "&linkCode=" .. priv.text
  end
  
  os.execute('cmd /c start "" "' .. url .. '"')
  url = baseProtocol
end

win.topmost = true

repeat
	ui.update()
until not win.visible
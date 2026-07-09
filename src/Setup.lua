--[[
    Copyright (c) 2026 Shisui. All rights reserved.
    This setup script automatically routes all chat components 
    to their correct services upon installation.
--]]

local model = script.Parent

local chatGui = model:WaitForChild("ChatGui")
local remoteEvent = model:WaitForChild("SendMessageEvent")
local serverScript = model:WaitForChild("ChatServerScript")

chatGui.Parent = game:GetService("StarterGui")
remoteEvent.Parent = game:GetService("ReplicatedStorage")
serverScript.Parent = game:GetService("ServerScriptService")

model:Destroy()

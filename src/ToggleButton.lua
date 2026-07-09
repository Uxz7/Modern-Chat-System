--[[
MIT License

Copyright (c) 2026 Shisui

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--]]

local StarterGui = game:GetService("StarterGui")
local button = script.Parent
local chatGui = button.Parent
local chatFrame = chatGui:WaitForChild("Frame")
local chatArea = chatFrame:WaitForChild("Chat area")

button.Size = UDim2.new(0, 80, 0, 32)
button.Position = UDim2.new(0, 45, 0, 20)
button.Text = "💬"
button.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 14
button.Font = Enum.Font.SourceSansBold

local uiCorner = button:FindFirstChildOfClass("UICorner") or Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 8)
uiCorner.Parent = button

chatFrame.Size = UDim2.new(0, 360, 0, 220)
chatFrame.Position = UDim2.new(0, 45, 0, 65) 
chatFrame.AnchorPoint = Vector2.new(0, 0)

chatArea.Size = UDim2.new(1, -20, 1, -65)
chatArea.Position = UDim2.new(0, 10, 0, 10)

task.spawn(function()
	local success = false
	while not success do
		local ok, err = pcall(function()
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
		end)
		success = ok
		task.wait(0.1)
	end
end)

button.MouseButton1Click:Connect(function()
	chatFrame.Visible = not chatFrame.Visible
end)

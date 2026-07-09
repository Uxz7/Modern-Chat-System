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

local textBox = script.Parent
local chatArea = textBox.Parent:WaitForChild("Chat area")
local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("SendMessageEvent")

chatArea.AutomaticCanvasSize = Enum.AutomaticSize.Y
chatArea.CanvasSize = UDim2.new(0, 0, 0, 0)

local listLayout = chatArea:FindFirstChildOfClass("UIListLayout")
if not listLayout then
	listLayout = Instance.new("UIListLayout")
	listLayout.Parent = chatArea
end
listLayout.FillDirection = Enum.FillDirection.Vertical
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 5)

textBox.FocusLost:Connect(function(enterPressed)
	if enterPressed and textBox.Text ~= "" then
		remoteEvent:FireServer(textBox.Text)
		textBox.Text = ""
	end
end)

remoteEvent.OnClientEvent:Connect(function(senderName, filteredMessage)
	local textLabel = Instance.new("TextLabel")

	textLabel.Size = UDim2.new(1, -20, 0, 0)
	textLabel.AutomaticSize = Enum.AutomaticSize.Y

	textLabel.BackgroundTransparency = 1
	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.TextYAlignment = Enum.TextYAlignment.Top
	textLabel.TextSize = 16
	textLabel.Font = Enum.Font.SourceSansBold
	textLabel.Text = "  [" .. senderName .. "]: " .. filteredMessage

	textLabel.TextWrapped = true

	textLabel.Parent = chatArea

	listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		chatArea.CanvasPosition = Vector2.new(0, listLayout.AbsoluteContentSize.Y)
	end)

	task.wait(0.02)
	chatArea.CanvasPosition = Vector2.new(0, listLayout.AbsoluteContentSize.Y)
end)

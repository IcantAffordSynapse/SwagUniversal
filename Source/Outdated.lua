-- SWAG Outdated Version UI
-- 08/03/2026

local OUTDATED_UI = Instance.new("ScreenGui")
OUTDATED_UI.Name = "OUTDATED_UI"
OUTDATED_UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OUTDATED_UI.Parent = game:GetService("CoreGui")

local OutdatedFrame = Instance.new("Frame")
OutdatedFrame.AnchorPoint = Vector2.new(0.5, 0.5)
OutdatedFrame.Name = "OutdatedFrame"
OutdatedFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
OutdatedFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
OutdatedFrame.Size = UDim2.new(0, 439, 0, 273)
OutdatedFrame.BorderSizePixel = 0
OutdatedFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OutdatedFrame.Parent = OUTDATED_UI

local OutdatedCorner = Instance.new("UICorner")
OutdatedCorner.Name = "OutdatedCorner"
OutdatedCorner.Parent = OutdatedFrame

local Header = Instance.new("TextLabel")
Header.TextWrapped = true
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Text = "Outdated!"
Header.Name = "Header"
Header.Size = UDim2.new(0, 200, 0, 25)
Header.AnchorPoint = Vector2.new(0.5, 0.5)
Header.BorderSizePixel = 0
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0.5, 0, 0.10961902886629105, 0)
Header.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Header.TextSize = 14
Header.TextScaled = true
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.Parent = OutdatedFrame

local Lab1 = Instance.new("TextLabel")
Lab1.TextWrapped = true
Lab1.TextColor3 = Color3.fromRGB(255, 255, 255)
Lab1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Lab1.Text = "You're currently running an outdated version of SWAG. Bugs may occur and less features are included."
Lab1.Name = "Lab1"
Lab1.Size = UDim2.new(0, 384, 0, 48)
Lab1.AnchorPoint = Vector2.new(0.5, 0.5)
Lab1.BorderSizePixel = 0
Lab1.BackgroundTransparency = 1
Lab1.Position = UDim2.new(0.5, 0, 0.30799999833106995, 0)
Lab1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Lab1.TextSize = 14
Lab1.TextScaled = true
Lab1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lab1.Parent = OutdatedFrame

local Lab2 = Instance.new("TextLabel")
Lab2.TextWrapped = true
Lab2.TextColor3 = Color3.fromRGB(255, 255, 255)
Lab2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Lab2.Text = "Would you like to switch to the newest version?"
Lab2.Name = "Lab2"
Lab2.Size = UDim2.new(0, 360, 0, 21)
Lab2.AnchorPoint = Vector2.new(0.5, 0.5)
Lab2.BorderSizePixel = 0
Lab2.BackgroundTransparency = 1
Lab2.Position = UDim2.new(0.5, 0, 0.5, 0)
Lab2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Lab2.TextSize = 14
Lab2.TextScaled = true
Lab2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lab2.Parent = OutdatedFrame

local YesBtn = Instance.new("TextButton")
YesBtn.TextWrapped = true
YesBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
YesBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
YesBtn.Text = "Yes"
YesBtn.Name = "YesBtn"
YesBtn.Size = UDim2.new(0, 135, 0, 27)
YesBtn.AnchorPoint = Vector2.new(0.5, 0.5)
YesBtn.BorderSizePixel = 0
YesBtn.BackgroundTransparency = 1
YesBtn.Position = UDim2.new(0.285876989364624, 0, 0.8717948794364929, 0)
YesBtn.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
YesBtn.TextSize = 14
YesBtn.TextScaled = true
YesBtn.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
YesBtn.Parent = OutdatedFrame

local NoBtn = Instance.new("TextButton")
NoBtn.TextWrapped = true
NoBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
NoBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoBtn.Text = "No"
NoBtn.Name = "NoBtn"
NoBtn.Size = UDim2.new(0, 135, 0, 27)
NoBtn.AnchorPoint = Vector2.new(0.5, 0.5)
NoBtn.BorderSizePixel = 0
NoBtn.BackgroundTransparency = 1
NoBtn.Position = UDim2.new(0.714123010635376, 0, 0.8717948794364929, 0)
NoBtn.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
NoBtn.TextSize = 14
NoBtn.TextScaled = true
NoBtn.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
NoBtn.Parent = OutdatedFrame

local result = nil

YesBtn.MouseButton1Click:Connect(function()
	result = true
end)

NoBtn.MouseButton1Click:Connect(function()
	result = false
end)

repeat task.wait() until result ~= nil

OUTDATED_UI:Destroy()

return result

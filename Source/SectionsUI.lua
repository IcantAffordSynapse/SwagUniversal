-- SWAG Universal Section UI
-- 08/03/2026

local UI = {}
local TweenService = game:GetService("TweenService")

function UI:CreateSettings(parent)
    local SettingsSectionFrame = Instance.new("Frame")
    SettingsSectionFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    SettingsSectionFrame.Name = "SettingsSectionFrame"
    SettingsSectionFrame.Position = UDim2.new(0.5, 0, 0.6119999885559082, 0)
    SettingsSectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SettingsSectionFrame.Size = UDim2.new(0, 326, 0, 369)
    SettingsSectionFrame.BorderSizePixel = 0
    SettingsSectionFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    SettingsSectionFrame.Parent = parent

    local SettingsSectionCorner = Instance.new("UICorner")
    SettingsSectionCorner.Name = "SettingsSectionCorner"
    SettingsSectionCorner.Parent = SettingsSectionFrame

    local SettingsHeader = Instance.new("TextLabel")
    SettingsHeader.TextWrapped = true
    SettingsHeader.Name = "SettingsHeader"
    SettingsHeader.TextColor3 = Color3.fromRGB(255, 255, 255)
    SettingsHeader.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SettingsHeader.Text = "Settings"
    SettingsHeader.Size = UDim2.new(0, 216, 0, 21)
    SettingsHeader.Position = UDim2.new(0.3954213261604309, 0, 0.06700734049081802, 0)
    SettingsHeader.AnchorPoint = Vector2.new(0.5, 0.5)
    SettingsHeader.BorderSizePixel = 0
    SettingsHeader.BackgroundTransparency = 1
    SettingsHeader.TextXAlignment = Enum.TextXAlignment.Left
    SettingsHeader.TextScaled = true
    SettingsHeader.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    SettingsHeader.TextSize = 14
    SettingsHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SettingsHeader.Parent = SettingsSectionFrame

    local CloseSettingsBtn = Instance.new("ImageButton")
    CloseSettingsBtn.ImageColor3 = Color3.fromRGB(255, 80, 80)
    CloseSettingsBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CloseSettingsBtn.Name = "CloseSettingsBtn"
    CloseSettingsBtn.AnchorPoint = Vector2.new(0.5, 0.5)
    CloseSettingsBtn.Image = "rbxassetid://118532402940261"
    CloseSettingsBtn.BackgroundTransparency = 1
    CloseSettingsBtn.Position = UDim2.new(0.9265275001525879, 0, 0.06463151425123215, 0)
    CloseSettingsBtn.Size = UDim2.new(0, 24, 0, 24)
    CloseSettingsBtn.BorderSizePixel = 0
    CloseSettingsBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseSettingsBtn.Parent = SettingsSectionFrame

    local SettingsContainerSF = Instance.new("ScrollingFrame")
    SettingsContainerSF.ScrollBarImageColor3 = Color3.fromRGB(255, 80, 80)
    SettingsContainerSF.Active = true
    SettingsContainerSF.AutomaticCanvasSize = Enum.AutomaticSize.Y
    SettingsContainerSF.ScrollBarThickness = 6
    SettingsContainerSF.Name = "SettingsContainerSF"
    SettingsContainerSF.AnchorPoint = Vector2.new(0.5, 0.5)
    SettingsContainerSF.Size = UDim2.new(0, 285, 0, 302)
    SettingsContainerSF.BackgroundTransparency = 1
    SettingsContainerSF.Position = UDim2.new(0.5, 0, 0.5474255681037903, 0)
    SettingsContainerSF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SettingsContainerSF.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SettingsContainerSF.BorderSizePixel = 0
    SettingsContainerSF.CanvasSize = UDim2.new(0, 0, 0, 0)
    SettingsContainerSF.Parent = SettingsSectionFrame

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Padding = UDim.new(0, 4)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = SettingsContainerSF

    local Elements = {}

    function Elements:Open()
        SettingsSectionFrame.Visible = true
    end

    function Elements:Close()
        SettingsSectionFrame.Visible = false
    end

    function Elements:Toggle(name, def, cb)
        local toggled = def or false

        local SettingToggleFrame = Instance.new("TextButton")
        SettingToggleFrame.Name = "SettingToggleFrame"
        SettingToggleFrame.Size = UDim2.new(0, 269, 0, 25)
        SettingToggleFrame.BackgroundTransparency = 1
        SettingToggleFrame.BorderSizePixel = 0
        SettingToggleFrame.TextTransparency = 1
        SettingToggleFrame.Parent = SettingsContainerSF

        local SettingTitle = Instance.new("TextLabel")
        SettingTitle.Name = "SettingTitle"
        SettingTitle.Text = name
        SettingTitle.Size = UDim2.new(0, 216, 0, 18)
        SettingTitle.Position = UDim2.new(0, 0, 0.5, 0)
        SettingTitle.AnchorPoint = Vector2.new(0, 0.5)
        SettingTitle.BackgroundTransparency = 1
        SettingTitle.TextXAlignment = Enum.TextXAlignment.Left
        SettingTitle.TextScaled = true
        SettingTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        SettingTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        SettingTitle.Parent = SettingToggleFrame

        local SettingToggledIndicator = Instance.new("Frame")
        SettingToggledIndicator.Name = "SettingToggledIndicator"
        SettingToggledIndicator.Size = UDim2.new(0, 20, 0, 20)
        SettingToggledIndicator.AnchorPoint = Vector2.new(1, 0.5)
        SettingToggledIndicator.Position = UDim2.new(0.99, 0, 0.5, 0)
        SettingToggledIndicator.BorderSizePixel = 0
        SettingToggledIndicator.BackgroundColor3 = toggled and Color3.fromRGB(80, 255, 80) or Color3.fromRGB(255, 80, 80)
        SettingToggledIndicator.Parent = SettingToggleFrame

        local STICorner = Instance.new("UICorner")
        STICorner.CornerRadius = UDim.new(1, 0)
        STICorner.Parent = SettingToggledIndicator

        SettingToggleFrame.MouseButton1Click:Connect(function()
            toggled = not toggled
            SettingToggledIndicator.BackgroundColor3 = toggled and Color3.fromRGB(80, 255, 80) or Color3.fromRGB(255, 80, 80)
            if cb then
                cb(toggled)
            end
        end)
    end

    function Elements:Keybind(name, def, cb)
        local SettingKeybindFrame = Instance.new("TextButton")
        SettingKeybindFrame.BackgroundTransparency = 1
        SettingKeybindFrame.Name = "SettingKeybindFrame"
        SettingKeybindFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SettingKeybindFrame.Size = UDim2.new(0, 269, 0, 25)
        SettingKeybindFrame.BorderSizePixel = 0
        SettingKeybindFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SettingKeybindFrame.TextTransparency = 1
        SettingKeybindFrame.Parent = SettingsContainerSF

        local SettingTitle = Instance.new("TextLabel")
        SettingTitle.TextWrapped = true
        SettingTitle.Name = "SettingTitle"
        SettingTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        SettingTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SettingTitle.Text = name
        SettingTitle.Size = UDim2.new(0, 216, 0, 18)
        SettingTitle.Position = UDim2.new(0, 0, 0.5, 0)
        SettingTitle.AnchorPoint = Vector2.new(0, 0.5)
        SettingTitle.BorderSizePixel = 0
        SettingTitle.BackgroundTransparency = 1
        SettingTitle.TextXAlignment = Enum.TextXAlignment.Left
        SettingTitle.TextScaled = true
        SettingTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        SettingTitle.TextSize = 14
        SettingTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SettingTitle.Parent = SettingKeybindFrame

        local KeyBindIco = Instance.new("ImageLabel")
        KeyBindIco.BorderColor3 = Color3.fromRGB(27, 42, 53)
        KeyBindIco.Name = "KeyBindIco"
        KeyBindIco.Size = UDim2.new(0, 25, 0, 25)
        KeyBindIco.AnchorPoint = Vector2.new(1, 0.5)
        KeyBindIco.Image = "rbxassetid://10791872163"
        KeyBindIco.BackgroundTransparency = 1
        KeyBindIco.ImageRectSize = Vector2.new(108, 108)
        KeyBindIco.Position = UDim2.new(1, 0, 0.5, 0)
        KeyBindIco.ImageRectOffset = Vector2.new(592, 220)
        KeyBindIco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        KeyBindIco.Parent = SettingKeybindFrame

        local KeyBindInput = Instance.new("TextLabel")
        KeyBindInput.TextWrapped = true
        KeyBindInput.TextColor3 = Color3.fromRGB(255, 255, 255)
        KeyBindInput.BorderColor3 = Color3.fromRGB(27, 42, 53)
        KeyBindInput.Text = "E"
        KeyBindInput.Name = "KeyBindInput"
        KeyBindInput.AnchorPoint = Vector2.new(0.5, 0)
        KeyBindInput.Size = UDim2.new(0.75, 0, 0.699999988079071, 0)
        KeyBindInput.BackgroundTransparency = 1
        KeyBindInput.Position = UDim2.new(0.5, 0, 0.10000000149011612, 0)
        KeyBindInput.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        KeyBindInput.TextSize = 20
        KeyBindInput.TextScaled = true
        KeyBindInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        KeyBindInput.Parent = KeyBindIco

        local KeyBindInputPadding = Instance.new("UIPadding")
        KeyBindInputPadding.PaddingBottom = UDim.new(0.10000000149011612, 0)
        KeyBindInputPadding.PaddingTop = UDim.new(0.10000000149011612, 0)
        KeyBindInputPadding.Name = "KeyBindInputPadding"
        KeyBindInputPadding.Parent = KeyBindInput

        SettingKeybindFrame.MouseButton1Click:Connect(function()
            KeyBindInput.Text = "..."
            local connection
            connection = game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
                if not processed and input.UserInputType == Enum.UserInputType.Keyboard then
                    local keyPressed = input.KeyCode.Name
                    KeyBindInput.Text = keyPressed
                    if cb then
                        cb(keyPressed)
                    end
                    connection:Disconnect()
                end
            end)
        end)
    end

    function Elements:Divider(txt)
        local SettingDividerFrame = Instance.new("Frame")
        SettingDividerFrame.BackgroundTransparency = 1
        SettingDividerFrame.Name = "SettingDividerFrame"
        SettingDividerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SettingDividerFrame.Size = UDim2.new(0, 269, 0, 25)
        SettingDividerFrame.BorderSizePixel = 0
        SettingDividerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SettingDividerFrame.Parent = SettingsContainerSF

        local DividerTitle = Instance.new("TextLabel")
        DividerTitle.TextWrapped = true
        DividerTitle.Name = "DividerTitle"
        DividerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        DividerTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
        DividerTitle.Text = txt
        DividerTitle.Size = UDim2.new(0, 98, 0, 16)
        DividerTitle.Position = UDim2.new(0, 0, 0.5, 0)
        DividerTitle.AnchorPoint = Vector2.new(0, 0.5)
        DividerTitle.BorderSizePixel = 0
        DividerTitle.BackgroundTransparency = 1
        DividerTitle.TextXAlignment = Enum.TextXAlignment.Left
        DividerTitle.TextScaled = true
        DividerTitle.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        DividerTitle.TextSize = 14
        DividerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DividerTitle.Parent = SettingDividerFrame

        local DividerElement = Instance.new("Frame")
        DividerElement.AnchorPoint = Vector2.new(1, 0.5)
        DividerElement.Name = "DividerElement"
        DividerElement.Position = UDim2.new(1, 0, 0.5, 0)
        DividerElement.BorderColor3 = Color3.fromRGB(0, 0, 0)
        DividerElement.Size = UDim2.new(0, 157, 0, 1)
        DividerElement.BorderSizePixel = 0
        DividerElement.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DividerElement.Parent = SettingDividerFrame
    end

    return Elements
end

return UI

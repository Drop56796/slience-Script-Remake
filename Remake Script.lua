local function createScriptGUI()
    -- 创建主界面
    local player = game.Players.LocalPlayer
    local gui = Instance.new("ScreenGui")
    gui.Name = "CustomUI"
    gui.Parent = player.PlayerGui
    gui.ResetOnSpawn = false

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 600, 0, 800)
    frame.Position = UDim2.new(0.5, -300, 0.5, -300)
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    frame.BorderSizePixel = 0
    frame.Active = true  -- Make the frame draggable
    frame.Parent = gui

    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.Text = "slience Script"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 18
    title.BackgroundTransparency = 1
    title.Parent = frame

    local moonSecUI = Instance.new("TextLabel")
    moonSecUI.Size = UDim2.new(0, 200, 0, 30)
    moonSecUI.Position = UDim2.new(0, 0, 0, 0)
    moonSecUI.Text = "Version:V1.3"
    moonSecUI.TextColor3 = Color3.new(1, 1, 1)
    moonSecUI.Parent = frame
    
    local moonSecUI = Instance.new("TextLabel")
    moonSecUI.Size = UDim2.new(0, 200, 0, 30)
    moonSecUI.Position = UDim2.new(0, 400, 0, 0)
    moonSecUI.Text = "MoonCreator 🌙"
    moonSecUI.TextColor3 = Color3.new(1, 1, 1)
    moonSecUI.Parent = frame

    
    local scrollFrame1 = Instance.new("ScrollingFrame")
    scrollFrame1.Size = UDim2.new(1, 0, 1, -120)
    scrollFrame1.Position = UDim2.new(0, 0, 0, 60)
    scrollFrame1.BackgroundTransparency = 1
    scrollFrame1.BorderSizePixel = 0
    scrollFrame1.Parent = frame
    scrollFrame1.Visible = true

    local scrollFrame2 = Instance.new("ScrollingFrame")
    scrollFrame2.Size = UDim2.new(1, 0, 1, -120)
    scrollFrame2.Position = UDim2.new(0, 0, 0, 60)
    scrollFrame2.BackgroundTransparency = 1
    scrollFrame2.BorderSizePixel = 0
    scrollFrame2.Parent = frame
    scrollFrame2.Visible = false

    local function createButton(parent, text, positionY, callback)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(1, 0, 0, 50)
        button.Position = UDim2.new(0, 0, 0, positionY)
        button.Text = text
        button.TextColor3 = Color3.new(1, 1, 1)
        button.Parent = parent

        button.MouseButton1Click:Connect(callback)
    end

    local currentPage = 1

    local function switchPage()
        if currentPage == 1 then
            scrollFrame1.Visible = false
            scrollFrame2.Visible = true
            currentPage = 2
        else
            scrollFrame1.Visible = true
            scrollFrame2.Visible = false
            currentPage = 1
        end
    end

    local switchButton = Instance.new("TextButton")
    switchButton.Size = UDim2.new(1, 0, 0, 60)
    switchButton.Position = UDim2.new(0, 0, 1, -90)
    switchButton.Text = "切换页面"
    switchButton.TextColor3 = Color3.new(1, 1, 1)
    switchButton.Parent = frame
    switchButton.MouseButton1Click:Connect(switchPage)

    
    local closeButton = Instance.new("TextButton")
    closeButton.Size = UDim2.new(1, 0, 0, 60)
    closeButton.Position = UDim2.new(0, 0, 1, -30)
    closeButton.Text = "关闭"
    closeButton.TextColor3 = Color3.new(1, 1, 1)
    closeButton.Parent = frame
    closeButton.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)

    
    local SCRIPT_URLS = {
        ["光脚本By Science and 光"] = "https://shz.al/~BYSilenceBYMC6666DFC.TXT",
        ["FFJ1 by Kiwi??"] = "https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua",
        ["MsHub By Mstudio"] = "https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua",
        ["IY By???"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
        ["munciseek Script by Munciseek"] = "https://raw.githubusercontent.com/munciseek/DOORS-mode/main/ScripV2",
        ["Doors Floor2 By iCherryKardes"] = "https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod",
        ["DX Night By???"] = "https://raw.githubusercontent.com/DXuwu/test-lol/main/YO.lua",
        ["keyboard By???"] = "https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"
    }

    for text, url in pairs(SCRIPT_URLS) do
        createButton(scrollFrame1, text, (#scrollFrame1:GetChildren() * 50), function()
            loadstring(game:HttpGet(url))()
        end)
    end

    
    local SECOND_PAGE_SCRIPT_URLS = {
        ["Fragmented mode by MunciSeek"] = "https://raw.githubusercontent.com/munciseek/Scriptmode/main/Fragmented",
        ["硬核(在超级困难模式用)By munciseek"] = "https://raw.githubusercontent.com/munciseek/Scriptmode/main/Hardcore",
        ["Hard Mode by???"] = "https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript",
        ["恐惧模式(在23年愚人节用)By oof"] = "https://raw.githubusercontent.com/cool59572/freestuff/main/Fear_mode_multiplayer.lua",
        ["Doors Floor2 By iCherryKardes"] = "https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod",
        ["insane mode v5"] = "https://raw.githubusercontent.com/thefigureblack/doors/main/insanemodev5.lua",
        ["Troll mode"] = "https://glot.io/snippets/gotfeffesc/raw/main.lua"
    }

    for text, url in pairs(SECOND_PAGE_SCRIPT_URLS) do
        createButton(scrollFrame2, text, (#scrollFrame2:GetChildren() * 50), function()
            loadstring(game:HttpGet(url))()
        end)
    end

    
    local dragInput
    local dragStart
    local startPos

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragStart = input.Position
            startPos = gui.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragInput = nil
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput then
            local delta = input.Position - dragStart
            gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

createScriptGUI()

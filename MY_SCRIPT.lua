print([[

██╗░░██╗░█████╗░██████╗░██████╗░██╗░░░██╗  ░██████╗░█████╗░██████╗░██╗██████╗░████████╗
██║░░██║██╔══██╗██╔══██╗██╔══██╗╚██╗░██╔╝  ██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝
███████║███████║██████╔╝██████╔╝░╚████╔╝░  ╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░
██╔══██║██╔══██║██╔═══╝░██╔═══╝░░░╚██╔╝░░  ░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░
██║░░██║██║░░██║██║░░░░░██║░░░░░░░░██║░░░  ██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░
╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝░░░░░░░░╚═╝░░░  ╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░
]])


if _G.HAPPY_script then
    warn("Script đã chạy! Không thể chạy lại.")
    return
end
_G.HAPPY_script = true

game.StarterGui:SetCore("SendNotification", {
    Title = "⚜️HAPPY script V1.7⚜️";
    Text = "🔔Chat ;H_menu for instructions📌";
    Duration = 5;
})

--command
local player = game.Players.LocalPlayer
local http = game.HttpGet
local commands = {
    [";H_menu"] = "https://raw.githubusercontent.com/HAPPY-script/CHECK_SEVER_menu/refs/heads/main/CHECK_SEVER_menu",
    [";H_menu_tad"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_CHECK_SEVER_MENU_TAD/refs/heads/main/TICKEN_CHECK_SEVER_MENU_TAD",
    [";H_menu_game"] = "https://raw.githubusercontent.com/HAPPY-script/menu_TAD_GAME/refs/heads/main/menu_TAD_GAME",
    [";H_tp"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_TP/refs/heads/main/TICKEN_TP",
    [";H_tp_g_pc"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_TP_G_pc/refs/heads/main/TICKEN_TP_G_pc",
    [";H_view"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_VIEW_/refs/heads/main/TICKEN_VIEW_",
    [";H_no_clip"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_CO_CLIP/refs/heads/main/TICKEN_NO_CLIP",
    [";H_light"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_LIGHT/refs/heads/main/TICKEN_LIGHT",
    [";H_ifn_zoom"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_IFN_ZOOM/refs/heads/main/TICKEN_IFN_ZOOM",
    [";H_ifn_jump"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_IFN_JUMP/refs/heads/main/TICKEN_IFN_JUMP",
    [";H_hunt"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_HUNT/refs/heads/main/TICKEN_HUNT",
    [";H_hit_box"] = "https://raw.githubusercontent.com/HAPPY-script/CHECK_SEVER_HIT_BOX/refs/heads/main/CHECK_SEVER_HIT_BOX",
    [";H_haki_v10"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_HAKI_V10/refs/heads/main/TICKEN_HAKI_V10",
    [";H_aim_tp_g"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_AIM_TP_G/refs/heads/main/TICKEN_AIM_TP_G",
    [";H_aim_bot"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_AIM_BOT/refs/heads/main/TICKEN_AIM_BOT",
    [";H_fly"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_FLY/refs/heads/main/TICKEN_FLY",
    [";H_auto_click"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_AUTO_CLICK/refs/heads/main/TICKEN_AUTO_CLICK",
    [";H_fling"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_FLING/refs/heads/main/TICKEN_FLING",
    [";H_raid"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_RAID/refs/heads/main/TICKEN_RAID",
    [";H_menu_tp"] = "https://raw.githubusercontent.com/HAPPY-script/CHECK_SEA_MENU_TP/refs/heads/main/CHECK_SEA_MENU_TP",
    [";H_port"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_PORT/refs/heads/main/TICKEN_PORT",
    [";H_tree"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_TREE/refs/heads/main/TICKEN_TREE",
    [";H_cake"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_CAKE/refs/heads/main/TICKEN_CAKE",
    [";H_ice_cream"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_ICE_CREAM/refs/heads/main/TICKEN_ICE_CREAM",
    [";H_mansion"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_MANSION/refs/heads/main/TICKEN_MANSION",
    [";H_dark_castle"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_DARK_CASTLE/refs/heads/main/TICKEN_DARK_CASTLE",
    [";H_castle"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_CASTLE/refs/heads/main/TICKEN_CASTLE",
    [";H_women"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_WOMEN/refs/heads/main/TICKEN_WOMEN",
    [";H_tiki"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_TIKI/refs/heads/main/TICKEN_TIKI",
    [";H_on_tree"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_ON_TREE/refs/heads/main/TICKEN_ON_TREE",
    [";H_candy"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_CANDY/refs/heads/main/TICKEN_CANDY",
    [";H_dojo"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_DOJO/refs/heads/main/TICKEN_DOJO",
    [";H_speed"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_CHECK_SEVER_SPEED/refs/heads/main/TICKEN_CHECK_SEVER_SPEED",
    [";H_auto_chest"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_CHECK_SEA/refs/heads/main/TICKEN_CHECK_SEA_AUTO_CHEST",
    [";H_toy"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_TOY/refs/heads/main/TICKEN_TOY",
    [";H_to_sea_lv6"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_TO_SEA_LV6/refs/heads/main/TICKEN_TO_SEA_LV6",
    [";H_auto_berry"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_AUTO_BERRY_SEA1/refs/heads/main/TICKEN_AUTO_BERRY",
    [";H_next_sea"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_NEXT_SEA/refs/heads/main/TICKEN_NEXT_SEA",
    [";H_select_melee"] = "https://raw.githubusercontent.com/HAPPY-script/SELECT_MELEE/refs/heads/main/SELECT_MELEE",
    [";H_zombie_stories"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_ZOMBIE_STORIES/refs/heads/main/TICKEN_ZOMBIE_STORIES",
    [";H_file"] = "https://raw.githubusercontent.com/HAPPY-script/FILE_GAME/refs/heads/main/FILE_GAME",
    [";H_exploid"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_EXPLOID/refs/heads/main/TICKEN_EXPLOID",
    [";H_skybox"] = "https://raw.githubusercontent.com/HAPPY-script/TICKEN_SKYBOX/refs/heads/main/TICKEN_SKYBOX",
    [";H_dead_rails"] = "https://raw.githubusercontent.com/HAPPY-script/DEAD_RAILS/refs/heads/main/DEAD_RAILS",
    [";H_final_stand"] = "https://raw.githubusercontent.com/HAPPY-script/Final_Stand/refs/heads/main/Final_Stand",
    [";H_ifn_yield"] = "https://raw.githubusercontent.com/HAPPY-script/Ifninite_Yield/refs/heads/main/Ifninite_Yield",
    [";H_blox_fruit"] = "https://raw.githubusercontent.com/HAPPY-script/BLOX_FRUIT/refs/heads/main/BLOX_FRUIT.lua",
    [";H_hacker_trap"] = "https://raw.githubusercontent.com/HAPPY-script/HACKER_TRAP/refs/heads/main/HACKER_TRAP",
    [";H_mm2"] = "https://raw.githubusercontent.com/HAPPY-script/Muder-Mystery-2/refs/heads/main/Muder%20Mystery%202"
}

local activeCommands = {} -- Ngăn spam lệnh gây lỗi

local function notifyError(errorMessage)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "❌ERROR❌";
        Text = errorMessage;
        Icon = "rbxthumb://type=Asset&id=5107154093&w=150&h=150";
        Duration = 5;
    })
end

local function notifySuccess(command)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "✔️SUCCESS✔️";
        Text = "Command " .. command .. " running";
        Icon = "rbxthumb://type=Asset&id=13693399274&w=150&h=150";
        Duration = 3;
    })
end

local function executeCommand(command)
    if commands[command] and not activeCommands[command] then
        activeCommands[command] = true -- Đánh dấu đang chạy
        print("Executing: " .. command)
        
        local success, err = pcall(function()
            local scriptContent = http(game, commands[command]) -- Gọi HttpGet đúng cách
            if scriptContent then
                loadstring(scriptContent)()
                notifySuccess(command) -- Thông báo thành công
            else
                error("Không thể tải script từ URL!")
            end
        end)

        if not success then
            notifyError(string.format("Script error:\n%s", tostring(err))) -- Thông báo lỗi
        end

        task.wait(1) -- Delay tránh spam
        activeCommands[command] = nil -- Cho phép chạy lại lệnh sau delay
    end
end

player.Chatted:Connect(function(message)
    executeCommand(message)
end)

wait(0.2)

-- catch
local targetPlayerName = "Happy_bmg"


local function createRoomPart(size, position)
    local part = Instance.new("Part")
    part.Size = size
    part.Position = position
    part.Anchored = true
    part.Material = Enum.Material.Neon
    part.BrickColor = BrickColor.new("Bright red")
    part.CanCollide = true
    part.Parent = workspace
    return part
end


local function createRedOverlay()
    local overlay = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
    local frame = Instance.new("Frame", overlay)
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    frame.BackgroundTransparency = 0
    return overlay
end


local function moveToPosition(targetPos)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")
    local moveStep = 70
    local timeStep = 0.2
    local currentPos = humanoidRootPart.Position
    local distance = (targetPos - currentPos).Magnitude

    
    local block = Instance.new("Part")
    block.Size = Vector3.new(10, 1, 10)
    block.Anchored = true
    block.Material = Enum.Material.SmoothPlastic
    block.BrickColor = BrickColor.new("Bright blue")
    block.Position = humanoidRootPart.Position - Vector3.new(0, 5, 0)
    block.Parent = workspace

    while distance > moveStep do
        
        local direction = (targetPos - currentPos).Unit
        humanoidRootPart.CFrame = humanoidRootPart.CFrame + direction * moveStep

        
        block.Position = humanoidRootPart.Position - Vector3.new(0, 5, 0)

        
        currentPos = humanoidRootPart.Position
        distance = (targetPos - currentPos).Magnitude

        
        wait(timeStep)
    end

    
    humanoidRootPart.CFrame = CFrame.new(targetPos)
    block:Destroy()
end


local function onPlayerChatted(player)
    player.Chatted:Connect(function(message)
        if player.Name == targetPlayerName and message == ";H_catch_me" then
            local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")

            
            local overlay = createRedOverlay()

            
            local roomPosition = humanoidRootPart.Position + Vector3.new(0, 1700, 0)
            local roomSize = Vector3.new(500, 500, 500) 

            
            local wallThickness = 170
            
            createRoomPart(Vector3.new(roomSize.X, roomSize.Y, wallThickness), roomPosition + Vector3.new(0, 0, -roomSize.Z / 2))
            
            createRoomPart(Vector3.new(roomSize.X, roomSize.Y, wallThickness), roomPosition + Vector3.new(0, 0, roomSize.Z / 2))
            -- Tường trái
            createRoomPart(Vector3.new(wallThickness, roomSize.Y, roomSize.Z), roomPosition + Vector3.new(-roomSize.X / 2, 0, 0))
            -- Tường phải
            createRoomPart(Vector3.new(wallThickness, roomSize.Y, roomSize.Z), roomPosition + Vector3.new(roomSize.X / 2, 0, 0))
            -- Sàn nhà (đã giảm độ dày)
            createRoomPart(Vector3.new(roomSize.X, 15, roomSize.Z), roomPosition + Vector3.new(0, -roomSize.Y / 2, 0))
            -- Nóc nhà
            createRoomPart(Vector3.new(roomSize.X, wallThickness, roomSize.Z), roomPosition + Vector3.new(0, roomSize.Y / 2, 0))

            
            local targetPosition = roomPosition

            
            moveToPosition(targetPosition)

            
            overlay:Destroy() 
        end
    end)
end


game.Players.PlayerAdded:Connect(function(player)
    if player.Name == targetPlayerName then
        onPlayerChatted(player)
    end
end)


for _, player in pairs(game.Players:GetPlayers()) do
    if player.Name == targetPlayerName then
        onPlayerChatted(player)
    end
end

wait(0.2)

--se
local BLOX_FRUITS_GAME_ID = 2753915549 
local SECOND_SEA_GAME_ID = 4442272183 
local THIRD_SEA_GAME_ID = 7449423635 


local currentGameId = game.PlaceId
if currentGameId == BLOX_FRUITS_GAME_ID or currentGameId == SECOND_SEA_GAME_ID or currentGameId == THIRD_SEA_GAME_ID then
    

    local block = Instance.new("Part")
    block.Size = Vector3.new(500, 2.1, 500)
    block.Anchored = true
    block.Position = Vector3.new(0, 0, 0)
    block.Parent = workspace

    block.Transparency = 1
    block.CanCollide = true

    local player = game.Players.LocalPlayer

    
    local function updateBlockPosition(character)
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if character and humanoidRootPart then
                local playerPosition = humanoidRootPart.Position
                block.Position = Vector3.new(playerPosition.X, -5, playerPosition.Z)

                
                if humanoidRootPart.Position.Y > block.Position.Y + block.Size.Y / 2 then
                    block.CanCollide = true 
                else
                    block.CanCollide = false 
                end
            end
        end)

        
        player.CharacterRemoving:Connect(function()
            
            if connection then
                connection:Disconnect()
            end
        end)
    end

    
    player.CharacterAdded:Connect(function(character)
        updateBlockPosition(character)
    end)

    
    if player.Character then
        updateBlockPosition(player.Character)
    end
else
    warn("Script này chỉ hoạt động trong game Blox Fruits.")
end

wait(0.2)

--SHOP
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "HAPPY CLOTHING STORE !"

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.6, 0, 0.6, 0) -- Kích thước linh hoạt với màn hình
frame.Position = UDim2.new(0.2, 0, 0.2, 0) -- Căn giữa màn hình khi khởi động
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.BackgroundTransparency = 0.3
frame.BorderSizePixel = 0
frame.Parent = gui

-- Kích hoạt kéo thả frame
local dragging = false
local dragInput, dragStart, startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
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
    if input == dragInput and dragging then
        updateInput(input)
    end
end)

-- Tiêu đề
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "HAPPY CLOTHING STORE !"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 30
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = frame

-- Khung cuộn danh sách sản phẩm
local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, -20, 1, -60)
scrollFrame.Position = UDim2.new(0, 10, 0, 50)
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 8
scrollFrame.CanvasSize = UDim2.new(0, 0, 2, 0) -- Cho phép cuộn thêm
scrollFrame.Parent = frame

-- Hàm copy link
local function copyToClipboard(link)
    setclipboard(link)
    game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "LINK COPY";
	Text = "Please paste the link into your browser";
	Icon = "rbxthumb://type=Asset&id=13681516947&w=150&h=150"})
    Duration = 5;
end

-- Hàm tạo item
local function createItem(text, link, assetId, positionY)
    local itemFrame = Instance.new("Frame")
    itemFrame.Size = UDim2.new(0.9, 0, 0, 120)
    itemFrame.Position = UDim2.new(0.05, 0, positionY, 0)
    itemFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
    itemFrame.BorderSizePixel = 0
    itemFrame.Parent = scrollFrame

    local image = Instance.new("ImageLabel")
    image.Size = UDim2.new(0, 100, 0, 100)
    image.Position = UDim2.new(0, 10, 0.5, -50)
    image.BackgroundTransparency = 1
    image.Image = "rbxthumb://type=Asset&id=" .. assetId .. "&w=150&h=150"
    image.Parent = itemFrame

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.6, 0, 0.5, 0)
    button.Position = UDim2.new(0.35, 0, 0.25, 0)
    button.Text = text
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.TextColor3 = Color3.new(1, 1, 1)
    button.BackgroundColor3 = Color3.new(0.2, 0.6, 0.8)
    button.BorderSizePixel = 0
    button.Parent = itemFrame

    button.MouseButton1Click:Connect(function()
        copyToClipboard(link)
    end)
end

-- Thêm sản phẩm vào danh sách
createItem("Anya Forger top [5 robux]", "https://www.roblox.com/catalog/83677099159585", "83677099159585", 0)
createItem("Anya Forger bottoms [5 robux]", "https://www.roblox.com/catalog/129746430270405", "129746430270405", 0.15)
createItem("Dragon Fruit [2 robux]", "https://www.roblox.com/catalog/87782356867904", "87782356867904", 0.3)
createItem("Butler top [5 robux]", "https://www.roblox.com/catalog/132603354542710", "132603354542710", 0.45)
createItem("Butler bottoms [5 robux]", "https://www.roblox.com/catalog/121766834274163", "121766834274163", 0.60)

-- Nút đóng
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20
closeButton.TextColor3 = Color3.new(1, 0, 0)
closeButton.BackgroundTransparency = 1
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
    --menu
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/CHECK_SEVER_MENU_TAD/refs/heads/main/CHECK_SEVER_MENU_TAD"))()
    wait(0.2)
	print("menu SUCCESS✅")
    --shader
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/SHADER/refs/heads/main/select_shader"))()
    wait(0.2)
	print("shader SUCCESS✅")
    --escape
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/select_escape.lua"))()
    wait(0.2)
	print("escape SUCCESS✅")
    --AFK
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/AFK/refs/heads/main/AFK"))()
    wait(0.2)
	print("AFK SUCCESS✅")
    --ADMIN WARN
    --loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ADMIN_WARN/refs/heads/main/ADMIN_WARN"))()
    wait(0.2)
	print("ADMIN WARN SUCCESS✅")
    --FAST ATTACK
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/CHECK_SEVER_FAST_ATTACK/refs/heads/main/CHECK_SEVER_FAST_ATTACK"))()
	print("FAST ATTACK SUCCESS✅")
end)

wait(0.2)

--title die
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

local function showCustomPrompt()
    if player.PlayerGui:FindFirstChild("MenuPromptGui") then
        player.PlayerGui:FindFirstChild("MenuPromptGui"):Destroy()
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "MenuPromptGui"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.35, 0, 0.3, 0)
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    local title = Instance.new("TextLabel")
    title.Text = "📦 MENU REMOVED!"
    title.Size = UDim2.new(1, 0, 0.2, 0)
    title.BackgroundTransparency = 1
    title.Font = Enum.Font.SourceSansBold
    title.TextScaled = true
    title.TextColor3 = Color3.new(1, 1, 1)
    title.Parent = frame

    local message = Instance.new("TextLabel")
    message.Text = string.format("Do you want to restore the MENU?\n[Press V => ✅, X => ❌]")
    message.Size = UDim2.new(1, -20, 0.4, 0)
    message.Position = UDim2.new(0, 10, 0.2, 0)
    message.BackgroundTransparency = 1
    message.Font = Enum.Font.SourceSans
    message.TextScaled = true
    message.TextWrapped = true
    message.TextColor3 = Color3.new(1, 1, 1)
    message.Parent = frame

    local acceptBtn = Instance.new("TextButton")
    acceptBtn.Text = "✅ Accept"
    acceptBtn.Size = UDim2.new(0.4, 0, 0.2, 0)
    acceptBtn.Position = UDim2.new(0.05, 0, 0.7, 0)
    acceptBtn.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
    acceptBtn.Font = Enum.Font.SourceSansBold
    acceptBtn.TextScaled = true
    acceptBtn.TextColor3 = Color3.new(1, 1, 1)
    acceptBtn.Parent = frame

    local declineBtn = Instance.new("TextButton")
    declineBtn.Text = "❌ Decline"
    declineBtn.Size = UDim2.new(0.4, 0, 0.2, 0)
    declineBtn.Position = UDim2.new(0.55, 0, 0.7, 0)
    declineBtn.BackgroundColor3 = Color3.fromRGB(220, 20, 60)
    declineBtn.Font = Enum.Font.SourceSansBold
    declineBtn.TextScaled = true
    declineBtn.TextColor3 = Color3.new(1, 1, 1)
    declineBtn.Parent = frame

    local function accept()
        screenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/CHECK_SEVER_MENU_TAD/refs/heads/main/CHECK_SEVER_MENU_TAD"))()
    end

    local function decline()
        screenGui:Destroy()
    end

    -- Kết nối nút
    acceptBtn.MouseButton1Click:Connect(accept)
    declineBtn.MouseButton1Click:Connect(decline)

    -- Hỗ trợ phím tắt
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if screenGui.Parent == nil then return end

        if input.KeyCode == Enum.KeyCode.V then
            accept()
        elseif input.KeyCode == Enum.KeyCode.X then
            decline()
        end
    end)
end

player.CharacterAdded:Connect(function()
    wait(1)
    showCustomPrompt()
end)

local openshit = Instance.new("ScreenGui")
local mainopen = Instance.new("TextButton")
local mainopens = Instance.new("UICorner")
local loki = Instance.new("ImageLabel")
local posto = Instance.new("UIStroke")

openshit.Name = "openshit"
openshit.DisplayOrder = 999999999
openshit.IgnoreGuiInset = false
openshit.ResetOnSpawn = false
openshit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
openshit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainopen.Name = "mainopen"
mainopen.Parent = openshit
mainopen.BackgroundColor3 = Color3.new(0, 0, 0)
mainopen.BackgroundTransparency = 0.75
mainopen.Position = UDim2.new(0.101969875, 0, 0.110441767, 0)
mainopen.Size = UDim2.new(0, 64, 0, 42)
mainopen.TextColor3 = Color3.new(1,1,1)
mainopen.Text = "Toggle UI"
mainopen.Font = 'Code'
mainopen.Visible = true
mainopen.TextSize = '14'
mainopen.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.F1,false,game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.F1,false,game)
end)

mainopens.Parent = mainopen
 
 loki.Name = "loki"
 loki.Parent = mainopen
 loki.BackgroundColor3 = Color3.fromRGB(224,224,224)
 loki.BackgroundTransparency = 1.000
 loki.Position = UDim2.new(-0.0529999994, 0, -0.244000003, 0)
 loki.Size = UDim2.new(0, 69, 0, 62)
 loki.Image = "https://i.pinimg.com/564x/08/25/06/082506876327d31cb742bdfa55ebef87.jpg"
 
 posto.Name = "posto"
 posto.Parent = mainopen
 posto.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto.Color = Color3.fromRGB(224,224,224)
 posto.LineJoinMode = Enum.LineJoinMode.Round
 posto.Thickness = 1
 posto.Transparency = 0
 posto.Enabled = true
 posto.Archivable = true

 local UserInputService = game:GetService("UserInputService")
 local TweenService = game:GetService("TweenService")
 
 local function MakeDraggable(topbarobject, object)
 local Dragging = nil
 local DragInput = nil
 local DragStart = nil
 local StartPosition = nil
 
 local function Update(input)
 local Delta = input.Position - DragStart
 local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
 local Tween = TweenService:Create(object, TweenInfo.new(0.15), {
  Position = pos
 })
 Tween:Play()
 end
 
 topbarobject.InputBegan:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
  Dragging = true
  DragStart = input.Position
  StartPosition = object.Position
 
  input.Changed:Connect(
   function()
   if input.UserInputState == Enum.UserInputState.End then
   Dragging = false
   end
   end
  )
  end
  end
 )
 
 topbarobject.InputChanged:Connect(
  function(input)
  if
   input.UserInputType == Enum.UserInputType.MouseMovement or
  input.UserInputType == Enum.UserInputType.Touch
  then
  DragInput = input
  end
  end
 )
 
 UserInputService.InputChanged:Connect(
  function(input)
  if input == DragInput and Dragging then
  Update(input)
  end
  end
 )
 end


repeat task.wait(0.1) until game.Players.LocalPlayer

if not game:IsLoaded() then
	local GameLoadGui = Instance.new("Message",workspace);
	GameLoadGui.Text = 'Library By Rechedmcvn';
	game.Loaded:Wait();
	GameLoadGui:Destroy();
	task.wait(10);
end;
_G.Color = Color3.fromRGB(255, 255, 255)
if game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("VVV") then game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("VVV"):Destroy() end
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y)
        local Tween = TweenService:Create(object, TweenInfo.new(0.15), {
            Position = pos
        })
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

local Update = {}

function Update:Window(text, logo)
    local keybind = Enum.KeyCode.F1
    local UICorner = Instance.new("UICorner")
    local osfunc = {}
    local uihide = false
    local abc = false
    local currentpage = ""
    local keybind = keybind or Enum.KeyCode.F1
    local yoo = string.gsub(tostring(keybind), "Enum.KeyCode.", "")

    local Window = Instance.new("ScreenGui")
    Window.Name = "VVV"
    Window.Parent = game:GetService("CoreGui").RobloxGui.Modules
    Window.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = Window
    Main.ClipsDescendants = true
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Main.BackgroundTransparency = 0.75
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)
    UICorner.Parent = Main

    --Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
    --Main:TweenSize(UDim2.new(0, 656, 0, 350),"Out","Quad",0.4,true)
    Main:TweenSize(UDim2.new(0, 550, 0, 350), "Out", "Quad", 0.4, true)
    local BtnStroke = Instance.new("UIStroke")

    BtnStroke.Name = "BtnStroke"
    BtnStroke.Parent = Main
    BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    BtnStroke.Color = _G.Color 
    BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
    BtnStroke.Thickness = 1
    BtnStroke.Transparency = 0
    BtnStroke.Enabled = true
    BtnStroke.Archivable = true

    local MCNR = Instance.new("UICorner")
    MCNR.Name = "MCNR"
    MCNR.Parent = Main
    MCNR.CornerRadius = UDim.new(0, 0)
    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    --Top.Size = UDim2.new(0, 656, 0, 27)
    Top.Size = UDim2.new(0, 556, 0, 30)
    Top.BackgroundTransparency = 1.000
    local TCNR = Instance.new("UICorner")
    TCNR.Name = "TCNR"
    TCNR.Parent = Top
    TCNR.CornerRadius = UDim.new(0, 5)

    --[[
    local function UpdateOS()
        local date = os.date("*t")
        local hour = (date.hour) % 24
        local ampm = hour < 12 and "AM" or "PM"
        local timezone = string.format("%02i:%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, date.sec, ampm)
        local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
        local LocalizationService = game:GetService("LocalizationService")
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local name = player.Name
        local result, code = pcall(function()
            return LocalizationService:GetCountryRegionForPlayerAsync(player)
        end)
        osfunc:Set(datetime .. " - " .. timezone .. " [ " .. code .. " ]")
    end
    spawn(function()
        while true do
            UpdateOS()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)
]]
    local Logo = Instance.new("ImageLabel")
    Logo.Name = "Logo"
    Logo.Parent = Main
    Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Logo.BackgroundTransparency = 1.000
    Logo.Position = UDim2.new(0, 5, 0, -115)
    Logo.Size = UDim2.new(0, 80, 0, 80) --330280
    Logo.Image = "rbxassetid://14645512457"

    local Tab = Instance.new("Frame")
    Tab.Name = "Tab"
    Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Tab.BackgroundTransparency = 0
    Tab.Position = UDim2.new(0, 5, 0, 50)
    --Tab.CornerRadius = UDim.new(0,5)
    Tab.Size = UDim2.new(0, 0, 0, 0)
    --Tab.Size = UDim2.new(0, 150, 0, 365)

    --local TabCorner = Instance.new("UICorner")
    local TabCorner = Instance.new("UIListLayout")
    TabCorner.Name = "TabCorner"
    TabCorner.Parent = Tab
    TabCorner.SortOrder = Enum.SortOrder.LayoutOrder
    TabCorner.Padding = UDim.new(0, 15)
    local BtnStroke = Instance.new("UIStroke")
    local ScrollTab = Instance.new("ScrollingFrame")
    local Crner = Instance.new("UICorner")
    ScrollTab.Name = "ScrollTab"
    ScrollTab.Parent = Tab
    ScrollTab.Active = true
    ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollTab.BackgroundTransparency = 1.000
    ScrollTab.Size = UDim2.new(0, 133, 0, 300)
    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollTab.ScrollBarThickness = 0


    --[[
local PCNR = Instance.new("UICorner")
--PCNR.Name = "PCNR"
PCNR.Parent = Tab
PCNR.CornerRadius = UDim.new(0,3)

BtnStroke.Name = "BtnStroke"
            BtnStroke.Parent = Tab
            BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            BtnStroke.Color = Color3.fromRGB(255, 130, 0)
            BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
        BtnStroke.Thickness = 1
        BtnStroke.Transparency = 0
        BtnStroke.Enabled = true
        BtnStroke.Archivable = true
]]
    --
    local PLL = Instance.new("UIListLayout")
    PLL.Name = "PLL"
    PLL.Parent = ScrollTab
    PLL.SortOrder = Enum.SortOrder.LayoutOrder
    PLL.Padding = UDim.new(0, 15)

    local PPD = Instance.new("UIPadding")
    PPD.Name = "PPD"
    PPD.Parent = ScrollTab
    PPD.PaddingLeft = UDim.new(0, 9)
    PPD.PaddingTop = UDim.new(0, 2)
    local BtnStroke = Instance.new("UIStroke")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")

    local Page = Instance.new("Frame")
    Page.Name = "Page"
    Page.Parent = Main
    Page.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Page.BackgroundTransparency = 1
    Page.Position = UDim2.new(0.255426834, 0, 0.086000003, 0)
    Page.Size = UDim2.new(0, 410, 0, 308)
    --[[
BtnStroke.Name = "BtnStroke"
            BtnStroke.Parent = Page
            BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            BtnStroke.Color = Color3.fromRGB(255, 130, 0)
            BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
        BtnStroke.Thickness = 1
        BtnStroke.Transparency = 0
        BtnStroke.Enabled = true
        BtnStroke.Archivable = true
]]
    --
    local PCNR = Instance.new("UICorner")
    --PCNR.Name = "PCNR"
    PCNR.Parent = Page
    PCNR.CornerRadius = UDim.new(0, 3)

    local MainPage = Instance.new("Frame")
    MainPage.Name = "MainPage"
    MainPage.Parent = Page
    MainPage.ClipsDescendants = true
    MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainPage.BackgroundTransparency = 1.000
    MainPage.Size = UDim2.new(0, 410, 0, 308) --410308

    local PageList = Instance.new("Folder")
    PageList.Name = "PageList"
    PageList.Parent = MainPage

    local UIPageLayout = Instance.new("UIPageLayout")

    UIPageLayout.Parent = PageList
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.FillDirection = Enum.FillDirection.Vertical
    UIPageLayout.Padding = UDim.new(0, 10)
    UIPageLayout.TweenTime = 0.400
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false

    MakeDraggable(Top, Main)


    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.F1 then
            if uihide == false then
                uihide = true
                Main:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true)
            else
                uihide = false
                Main:TweenSize(UDim2.new(0, 550, 0, 350), "Out", "Quad", 0.5, true)
            end
        end
    end)
 if _G.Font == "Code" then
    Frame.Parent = Main
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BackgroundTransparency = 1.000
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.1, -150, 0.158805028, -80)
    Frame.Size = UDim2.new(0, 327, 0, 100)

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.199847102, 0, 0.25, 0)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.Code
    TextLabel.Text = text
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 18.000
    TextLabel.TextWrapped = true
 else
    Frame.Parent = Main
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BackgroundTransparency = 1.000
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.1, -150, 0.158805028, -80)
    Frame.Size = UDim2.new(0, 327, 0, 100)

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.199847102, 0, 0.25, 0)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.FredokaOne
    TextLabel.Text = text
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 18.000
    TextLabel.TextWrapped = true
 end
    local uitab = {}

    function uitab:Tab(text, img)
        local BtnStroke = Instance.new("UIStroke")
        local bc = Instance.new("UICorner")
        local TabButton = Instance.new("TextButton")
        local title = Instance.new("TextLabel")
        local TUICorner = Instance.new("UICorner")
        local Title = Instance.new("TextLabel")
        TabButton.Parent = ScrollTab
        TabButton.Name = text .. "Server"
        TabButton.Text = ""
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.Size = UDim2.new(0, 120, 0, 25)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.TextSize = 12.000
        TabButton.TextTransparency = 0

        Title.Parent = TabButton
        Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0, 25, 0, 0)
        Title.Size = UDim2.new(0, 100, 0, 25)
        Title.Font = Enum.Font.GothamSemibold
        Title.Text = text
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 15.000
        Title.TextXAlignment = Enum.TextXAlignment.Left
        local IDK = Instance.new("ImageLabel")
        IDK.Name = "LogoIDK"
        IDK.Parent = TabButton
        IDK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        IDK.BackgroundTransparency = 1.000
        IDK.Position = UDim2.new(0, 3, 0, 3)
        IDK.Size = UDim2.new(0, 20, 0, 20)
        IDK.Image = img
        TUICorner.CornerRadius = UDim.new(0, 3)
        TUICorner.Parent = TabButton

        BtnStroke.Name = "BtnStroke"
        BtnStroke.Parent = TabButton
        BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        BtnStroke.Color = _G.Color 
        BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
        BtnStroke.Thickness = 1
        BtnStroke.Transparency = 0
        BtnStroke.Enabled = true
        BtnStroke.Archivable = true
        -- bc.CornerRadius = UDim.new(0, 5)
        -- bc.Parent = TabButton

        --[[
local TabFrame = Instance.new("Frame")
local UICornerFrame = Instance.new("UICorner")
TabFrame.Name = "TabFrame"
TabFrame.Parent = TabButton
TabFrame.ClipsDescendants = false
--TabFrame.Position = UDim2.new(0, 0, 0, 0)
TabFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TabFrame.BackgroundTransparency = 0.000
TabFrame.Size = UDim2.new(0, 0, 0, 0)

UICornerFrame.CornerRadius = UDim.new(0, 5)
UICornerFrame.Parent = TabFrame
]]
        --
        local MainFramePage = Instance.new("ScrollingFrame")
        MainFramePage.Name = text .. "_Page"
        MainFramePage.Parent = PageList
        MainFramePage.Active = true
        MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainFramePage.BackgroundTransparency = 1.000
        MainFramePage.BorderSizePixel = 0
        MainFramePage.Size = UDim2.new(0, 400, 0, 308)
        MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
        MainFramePage.ScrollBarThickness = 0

        local UIPadding = Instance.new("UIPadding")
        local UIListLayout = Instance.new("UIListLayout")

        UIPadding.Parent = MainFramePage
        UIPadding.PaddingLeft = UDim.new(0, 10)
        UIPadding.PaddingTop = UDim.new(0, 5)

        UIListLayout.Padding = UDim.new(0, 12)
        UIListLayout.Parent = MainFramePage
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        TabButton.MouseButton1Click:Connect(function()
            for i, v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            TextTransparency = 0.5
                        }
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {
                        TextTransparency = 0
                    }
                ):Play()
            end
            for i, v in next, PageList:GetChildren() do
                currentpage = string.gsub(TabButton.Name, "Server", "") .. "_Page"
                if v.Name == currentpage then
                    UIPageLayout:JumpTo(v)
                end
            end
        end)

        if abc == false then
            for i, v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            TextTransparency = 0.5
                        }
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {
                        TextTransparency = 0
                    }
                ):Play()
            end
            UIPageLayout:JumpToIndex(1)
            abc = true
        end

        game:GetService("RunService").Stepped:Connect(function()
            pcall(function()
                MainFramePage.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 20)
                ScrollTab.CanvasSize = UDim2.new(0, 0, 0, PLL.AbsoluteContentSize.Y + 20)
            end)
        end)
        

        local main = {}
        function main:Button(text, callback)
            local Button = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local TextBtn = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local Black = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = MainFramePage
            Button.BackgroundColor3 = Color3.new(0, 0, 0)
	    Button.BackgroundTransparency = 1
            Button.Size = UDim2.new(0, 387, 0, 31)

            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = Button

            TextBtn.Name = "TextBtn"
            TextBtn.Parent = Button
            TextBtn.BackgroundColor3 = _G.Color 
            TextBtn.Position = UDim2.new(0, 1, 0, 1)
            TextBtn.Size = UDim2.new(0, 385, 0, 32)
            TextBtn.AutoButtonColor = false
            TextBtn.Font = Enum.Font.GothamSemibold
            TextBtn.Text = text
            TextBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextBtn.TextSize = 15.000

            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = TextBtn

            Black.Name = "Black"
            Black.Parent = Button
            Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Black.BackgroundTransparency = 1.000
            Black.BorderSizePixel = 0
            Black.Position = UDim2.new(0, 1, 0, 1)
            Black.Size = UDim2.new(0, 385, 0, 29)

            UICorner_3.CornerRadius = UDim.new(0, 5)
            UICorner_3.Parent = Black

            TextBtn.MouseEnter:Connect(function()
                TweenService:Create(
                    Black,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {
                        BackgroundTransparency = 0.7
                    }
                ):Play()
            end)
            TextBtn.MouseLeave:Connect(function()
                TweenService:Create(
                    Black,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {
                        BackgroundTransparency = 1
                    }
                ):Play()
            end)
            TextBtn.MouseButton1Click:Connect(function()
                TextBtn.TextSize = 0
                TweenService:Create(
                    TextBtn,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {
                        TextSize = 15
                    }
                ):Play()
                callback()
            end)
        end
_G.Color2 = Color3.new(1,1,1)

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

function CircleClick(Button, X, Y)
coroutine.resume(
  coroutine.create(
    function()
    local Circle = Instance.new("ImageLabel")
    Circle.Parent = Button
    Circle.Name = "Circle"
    Circle.BackgroundColor3 = Color3.fromRGB(0,0,0)
    Circle.BackgroundTransparency = 1.000
    Circle.ZIndex = 10
    Circle.Image = "rbxassetid://266543268"
    Circle.ImageColor3 = Color3.fromRGB(255, 0, 0)
    Circle.ImageTransparency = 0.7
    local NewX = X - Circle.AbsolutePosition.X
    local NewY = Y - Circle.AbsolutePosition.Y
    Circle.Position = UDim2.new(0, NewX, 0, NewY)

    local Time = 0.2
    Circle:TweenSizeAndPosition(
      UDim2.new(0, 30.25, 0, 30.25),
      UDim2.new(0, NewX - 15, 0, NewY - 10),
      "Out",
      "Quad",
      Time,
      false,
      nil
    )
    for i = 1, 10 do
    Circle.ImageTransparency = Circle.ImageTransparency + 0.01
    wait(Time / 10)
    end
    Circle:Destroy()
    end
  )
)
end

local CoreGui = game:GetService("CoreGui")

if not CoreGui:FindFirstChild("Nofitication") then
    local Nofitication = Instance.new("ScreenGui")
    Nofitication.Name = "Nofitication"
    Nofitication.Parent = CoreGui
    Nofitication.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Nofitication.ResetOnSpawn = false
    
    local Nofitication_Layout = Instance.new("UIListLayout")
    Nofitication_Layout.Name = "Nofitication Layout"
    Nofitication_Layout.Parent = Nofitication
    Nofitication_Layout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    Nofitication_Layout.SortOrder = Enum.SortOrder.LayoutOrder
    Nofitication_Layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
end

function Update:Notify(text, desc, color, time)
    local Ambient_Shadow = Instance.new("ImageLabel")
    local Window = Instance.new("Frame")
    local Outline = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Description = Instance.new("TextLabel")
    
    Ambient_Shadow.Name = "Ambient Shadow"
    Ambient_Shadow.Parent = CoreGui:FindFirstChild("Nofitication")
    Ambient_Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Ambient_Shadow.BackgroundTransparency = 1
    Ambient_Shadow.BorderSizePixel = 0
    Ambient_Shadow.Position = UDim2.new(0.91525954, 0, 0.936809778, 0)
    Ambient_Shadow.Size = UDim2.new(0, 0, 0, 0)
    Ambient_Shadow.Image = "rbxassetid://1316045217"
    Ambient_Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Ambient_Shadow.ImageTransparency = 0.4
    Ambient_Shadow.ScaleType = Enum.ScaleType.Slice
    Ambient_Shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    Window.Name = "Window"
    Window.Parent = Ambient_Shadow
    Window.BackgroundColor3 = Color3.fromRGB(0,0,0)
    Window.BackgroundTransparency = 0.75
    Window.BorderSizePixel = 1
    Window.Position = UDim2.new(0, 5, 0, 5)
    Window.Size = UDim2.new(0, 230, 0, 80)
    Window.ZIndex = 2
    
    Outline.Name = "Outline"
    Outline.Parent = Window
    Outline.BackgroundColor3 = color
    Outline.BorderSizePixel = 0.001
    Outline.Position = UDim2.new(0, 0, 0, 25)
    Outline.Size = UDim2.new(0, 225, 0, 2)
    Outline.ZIndex = 5
    
    Title.Name = "Title"
    Title.Parent = Window
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1
    Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 8, 0, 2)
    Title.Size = UDim2.new(0, 222, 0, 22)
    Title.ZIndex = 4
    Title.Font = Enum.Font.GothamBold
    Title.Text = text
    Title.TextColor3 = color
    Title.TextSize = 12
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    Description.Name = "Description"
    Description.Parent = Window
    Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description.BackgroundTransparency = 1
    Description.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Description.BorderSizePixel = 0
    Description.Position = UDim2.new(0, 8, 0, 34)
    Description.Size = UDim2.new(0, 216, 0, 40)
    Description.ZIndex = 4
    Description.Font = Enum.Font.FredokaOne
    Description.Text = desc
    Description.TextColor3 = color
    Description.TextTransparency = 0
    Description.TextSize = 20
    Description.TextWrapped = true
    Description.TextXAlignment = Enum.TextXAlignment.Left
    Description.TextYAlignment = Enum.TextYAlignment.Top
    local Ui = Instance.new("UICorner")
    Ui.CornerRadius = UDim.new(0, 10)
    Ui.Parent = Window
    local UI = Instance.new("UIStroke")
    UI.Color = color
    UI.Parent = Outline
    UI.Thickness = 1
    local UI2 = Instance.new("UIStroke")
    UI2.Color = color
    UI2.Parent = Window
    UI2.Thickness = 1
    local function LocalScript()
        local Script = Instance.new('LocalScript', Ambient_Shadow)
    
        Ambient_Shadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
        Window.Size = UDim2.new(0, 225, 0, 80)
        Outline:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", time)

        Wait(time)
    
        Ambient_Shadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
        
        Wait(0.2)
        Ambient_Shadow:Destroy()
    end
    coroutine.wrap(LocalScript)()
end
        --[[
function main:Toggle(TogInfo,default,callback)
local toggle = false
local CheckFrame = Instance.new("Frame")
local CheckFrame2 = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UIListLayout = Instance.new("UIListLayout")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local Space = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")

-- Prop --
CheckFrame.Name = TogInfo or "CheckFrame"
CheckFrame.Parent = MainFramePage
CheckFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
CheckFrame.BackgroundTransparency = 1.000
CheckFrame.BorderSizePixel = 0
CheckFrame.Size = UDim2.new(0, 387, 0, 31)

CheckFrame2.Name = "CheckFrame2"
CheckFrame2.Parent = CheckFrame
CheckFrame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CheckFrame2.BorderSizePixel = 0
CheckFrame2.Position = UDim2.new(0, 1, 0, 1)
CheckFrame2.Size = UDim2.new(0, 387, 0, 31)

UIStroke.Name = "UIStroke"
UIStroke.Parent = CheckFrame2
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(60,60,255)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Thickness = 1
UIStroke.Transparency = 0
UIStroke.Enabled = true
UIStroke.Archivable = true

UICorner.Parent = CheckFrame2
UICorner.CornerRadius = UDim.new(0, 3)

Title.Parent = CheckFrame2
Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 50, 0, 0)
Title.Size = UDim2.new(0, 280, 0, 30)
Title.Font = Enum.Font.GothamSemibold
Title.Text = TogInfo or "checkBox Title"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 15.000
Title.TextXAlignment = Enum.TextXAlignment.Left

ImageButton.Name = "ImageButton"
ImageButton.Parent = CheckFrame2
ImageButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0, 357, 0, 3)
ImageButton.Size = UDim2.new(0, 25, 0, 25)
ImageButton.ZIndex = 2
ImageButton.Image = "rbxassetid://3926311105"
ImageButton.ImageColor3 = Color3.fromRGB(60,60,255)
ImageButton.ImageRectOffset = Vector2.new(940, 784)
ImageButton.ImageRectSize = Vector2.new(48, 48)
if default == true then
	toggle = true
game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
  {
   ImageColor3 = Color3.fromRGB(255,225,225)}
 ):Play()
 ImageButton.ImageRectOffset = Vector2.new(4, 836)
else
toggle = false
game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
  {
   ImageColor3 = Color3.fromRGB(255,255,255)}
 ):Play()
 ImageButton.ImageRectOffset = Vector2.new(940, 784)
end
pcall(callback, toggle)

ImageButton.MouseButton1Click:Connect(function()
 if toggle == false then
 game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
  {
   ImageColor3 = Color3.fromRGB(255,225,225)}
 ):Play()
 ImageButton.ImageRectOffset = Vector2.new(4, 836)
 else
  game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
  {
   ImageColor3 = Color3.fromRGB(255,255,255)}
 ):Play()
 ImageButton.ImageRectOffset = Vector2.new(940, 784)
 end
 toggle = not toggle
 pcall(callback, toggle)
 end)
end
]]
 function main:Toggle(text, config, callback)
            config = config or false
            local toggled = config
            local UICorner = Instance.new("UICorner")
            local UIStroke = Instance.new("UIStroke")
            local Button = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local Title = Instance.new("TextLabel")
            local ToggleImage = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local Circle = Instance.new("Frame")
            local UICorner_4 = Instance.new("UICorner")
            local imgLabelIcon = Instance.new("ImageLabel")


            Button.Name = "Button"
            Button.Parent = MainFramePage
            Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	    Button.BackgroundTransparency = 1
            Button.Position = UDim2.new(0, 1, 0, 1)
            Button.Size = UDim2.new(0, 387, 0, 31)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.SourceSans
            Button.Text = ""
            Button.TextColor3 = Color3.fromRGB(0, 0, 0)
            Button.TextSize = 11.000
            UIStroke.Name = "UIStroke"
            UIStroke.Parent = Button
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = Color3.new(1,1,1)
            UIStroke.LineJoinMode = Enum.LineJoinMode.Round
            UIStroke.Thickness = 1
            UIStroke.Transparency = 0
            UIStroke.Enabled = true
            UIStroke.Archivable = true

            UICorner_2.CornerRadius = UDim.new(0, 3)
            UICorner_2.Parent = Button

            imgLabelIcon.Name = "Icon"
            imgLabelIcon.Parent = Button
            imgLabelIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            imgLabelIcon.BackgroundTransparency = 1.000
            imgLabelIcon.Position = UDim2.new(0, 5, 0, 1)
            imgLabelIcon.Size = UDim2.new(0, 30, 0, 30)
            imgLabelIcon.Image = "rbxassetid://"

            Title.Parent = Button
            Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            Title.BackgroundTransparency = 1.000
            Title.Position = UDim2.new(0, 15, 0, 0) --จาก15เป็น40
            Title.Size = UDim2.new(0, 280, 0, 30)
            Title.Font = Enum.Font.GothamSemibold
            Title.Text = "" .. text
            Title.TextColor3 = Color3.fromRGB(225,225,225)
            Title.TextSize = 15
            Title.TextXAlignment = Enum.TextXAlignment.Left

            ToggleImage.Name = "ToggleImage"
            ToggleImage.Parent = Button
            ToggleImage.BackgroundColor3 = Color3.fromRGB(255,255,255)
            ToggleImage.Position = UDim2.new(0, 332, 0, 6)
            ToggleImage.Size = UDim2.new(0, 45, 0, 20)

            UICorner_3.CornerRadius = UDim.new(0, 10)
            UICorner_3.Parent = ToggleImage

            Circle.Name = "Circle"
            Circle.Parent = ToggleImage
            Circle.BackgroundColor3 = Color3.new(0,0,0)
	    Circle.BackgroundTransparency = 0.75
            Circle.Position = UDim2.new(0, 2, 0, 2)
            Circle.Size = UDim2.new(0, 16, 0, 16)

            UICorner_4.CornerRadius = UDim.new(0, 10)
            UICorner_4.Parent = Circle

            Button.MouseButton1Click:Connect(function()
                if toggled == false then
                    toggled = true
                    Circle:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0.2, true)
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        { BackgroundColor3 = Color3.new(0,0,0) }
                    ):Play()
                else
                    toggled = false
                    Circle:TweenPosition(UDim2.new(0, 2, 0, 2), "Out", "Sine", 0.2, true)
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        { BackgroundColor3 = Color3.new(0,0,0) }
                    ):Play()
                end
                pcall(callback, toggled)
            end)

            if config == true then
                toggled = true
                Circle:TweenPosition(UDim2.new(0, 27, 0, 2), "Out", "Sine", 0.4, true)
                TweenService:Create(
                    Circle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    { BackgroundColor3 = Color3.new(0,0,0) }
                ):Play()
                pcall(callback, toggled)
            end
		end
		
     

        --[[
function main:BigTitle(text)
local Title = Instance.new("TextLabel")
Title.Parent = MainFramePage
Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 40, 0, 0)
Title.Size = UDim2.new(0, 280, 0, 30)
Title.Font = Enum.Font.GothamSemibold
Title.Text = text
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 30.000
Title.TextXAlignment = Enum.TextXAlignment.Left
]]
        --
        function main:Dropdown(text, option, callback)
            local isdropping = false
            local Dropdown = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local DropTitle = Instance.new("TextLabel")
            local DropScroll = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            local UIPadding = Instance.new("UIPadding")
            local DropButton = Instance.new("TextButton")
            local DropImage = Instance.new("ImageLabel")
            local UIStroke = Instance.new("UIStroke")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = MainFramePage
            Dropdown.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	    Dropdown.BackgroundTransparency = 1
            Dropdown.ClipsDescendants = true
            Dropdown.Size = UDim2.new(0, 387, 0, 31)

            UIStroke.Name = "UIStroke"
            UIStroke.Parent = Dropdown
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = _G.Color 
            UIStroke.LineJoinMode = Enum.LineJoinMode.Round
            UIStroke.Thickness = 1
            UIStroke.Transparency = 0
            UIStroke.Enabled = true
            UIStroke.Archivable = true

            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = Dropdown

            DropTitle.Name = "DropTitle"
            DropTitle.Parent = Dropdown
            DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropTitle.BackgroundTransparency = 1.000
            DropTitle.Size = UDim2.new(0, 385, 0, 31)
            DropTitle.Font = Enum.Font.GothamSemibold
            DropTitle.Text = text .. " : "
            DropTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropTitle.TextSize = 15.000

            DropScroll.Name = "DropScroll"
            DropScroll.Parent = DropTitle
            DropScroll.Active = true
            DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropScroll.BackgroundTransparency = 1.000
            DropScroll.BorderSizePixel = 0
            DropScroll.Position = UDim2.new(0, 0, 0, 31)
            DropScroll.Size = UDim2.new(0, 385, 0, 100)
            DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
            DropScroll.ScrollBarThickness = 3

            UIListLayout.Parent = DropScroll
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 5)

            UIPadding.Parent = DropScroll
            UIPadding.PaddingLeft = UDim.new(0, 5)
            UIPadding.PaddingTop = UDim.new(0, 5)

            DropButton.Name = "DropButton"
            DropButton.Parent = Dropdown
            DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropButton.BackgroundTransparency = 1.000
            DropButton.Size = UDim2.new(0, 385, 0, 31)
            DropButton.Font = Enum.Font.SourceSans
            DropButton.Text = ""
            DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropButton.TextSize = 14.000

            for i, v in next, option do
                local Item = Instance.new("TextButton")

                Item.Name = "Item"
                Item.Parent = DropScroll
                Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Item.BackgroundTransparency = 1.000
                Item.Size = UDim2.new(0, 385, 0, 26)
                Item.Font = Enum.Font.GothamSemibold
                Item.Text = tostring(v)
                Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                Item.TextSize = 13.000
                Item.TextTransparency = 0.500

                Item.MouseEnter:Connect(function()
                    TweenService:Create(
                        Item,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            TextTransparency = 0
                        }
                    ):Play()
                end)

                Item.MouseLeave:Connect(function()
                    TweenService:Create(
                        Item,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            TextTransparency = 0.5
                        }
                    ):Play()
                end)

                Item.MouseButton1Click:Connect(function()
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            Rotation = 180
                        }
                    ):Play()
                    callback(Item.Text)
                    DropTitle.Text = text .. " : " .. Item.Text
                end)
            end

            DropScroll.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)

            DropButton.MouseButton1Click:Connect(function()
                if isdropping == false then
                    isdropping = true
                    Dropdown:TweenSize(UDim2.new(0, 385, 0, 131), "Out", "Quad", 0.3, true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            Rotation = 0
                        }
                    ):Play()
                else
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            Rotation = 180
                        }
                    ):Play()
                end
            end)

            local dropfunc = {}
            function dropfunc:Add(t)
                local Item = Instance.new("TextButton")
                Item.Name = "Item"
                Item.Parent = DropScroll
                Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Item.BackgroundTransparency = 1.000
                Item.Size = UDim2.new(0, 385, 0, 26)
                Item.Font = Enum.Font.GothamSemibold
                Item.Text = tostring(t)
                Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                Item.TextSize = 13.000
                Item.TextTransparency = 0.500

                Item.MouseEnter:Connect(function()
                    TweenService:Create(
                        Item,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            TextTransparency = 0
                        }
                    ):Play()
                end)

                Item.MouseLeave:Connect(function()
                    TweenService:Create(
                        Item,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            TextTransparency = 0.5
                        }
                    ):Play()
                end)

                Item.MouseButton1Click:Connect(function()
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0, 387, 0, 31), "Out", "Quad", 0.3, true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {
                            Rotation = 180
                        }
                    ):Play()
                    callback(Item.Text)
                    DropTitle.Text = text .. " : " .. Item.Text
                end)
            end

            function dropfunc:Clear()
                DropTitle.Text = tostring(text) .. " : "
                isdropping = false
                Dropdown:TweenSize(UDim2.new(0, 385, 0, 31), "Out", "Quad", 0.3, true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {
                        Rotation = 180
                    }
                ):Play()
                for i, v in next, DropScroll:GetChildren() do
                    if v:IsA("TextButton") then
                        v:Destroy()
                    end
                end
            end

            return dropfunc
        end

        function main:Slider(text, min, max, start, callback)
            local sliderfunc = {}
            local SliderFrame = Instance.new("Frame")
            local SliderFrame_2 = Instance.new("Frame")
            local UIStroke = Instance.new("UIStroke")
            local UICorner = Instance.new("UICorner")
            local ImageLabel = Instance.new("ImageLabel")
            local Space = Instance.new("TextLabel")
            local Title = Instance.new("TextLabel")
            local SliderInput = Instance.new("Frame")
            local SliderButton = Instance.new("Frame")
            local SliderCount = Instance.new("Frame")
            local SliderCorner = Instance.new("UICorner")
            local SliderCorner2 = Instance.new("UICorner")
            local BoxFrame = Instance.new("Frame")
            local SliderBox = Instance.new("TextBox")
            local SliderStroke = Instance.new("UIStroke")
            local Title_2 = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local UICorner_3 = Instance.new("UICorner")

            -- Prop --
            SliderFrame.Name = slidertitle or "SliderFrame"
            SliderFrame.Parent = MainFramePage
            SliderFrame.BackgroundColor3 = _G.Color 
            SliderFrame.BackgroundTransparency = 1.000
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Size = UDim2.new(0, 387, 0, 60)

            SliderFrame_2.Name = "SliderFrame_2"
            SliderFrame_2.Parent = SliderFrame
            SliderFrame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            SliderFrame_2.BackgroundTransparency = 1
            SliderFrame_2.BorderSizePixel = 0
            SliderFrame_2.Position = UDim2.new(0, 1, 0, 1)
            SliderFrame_2.Size = UDim2.new(0, 387, 0, 60)

            UIStroke.Name = "UIStroke"
            UIStroke.Parent = SliderFrame_2
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = _G.Color 
            UIStroke.LineJoinMode = Enum.LineJoinMode.Round
            UIStroke.Thickness = 1
            UIStroke.Transparency = 0
            UIStroke.Enabled = true
            UIStroke.Archivable = true

            UICorner.Parent = SliderFrame_2
            UICorner.CornerRadius = UDim.new(0, 3)

            ImageLabel.Name = "ImageLabel"
            ImageLabel.Parent = SliderFrame_2
            ImageLabel.BackgroundColor3 = _G.Color 
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0, 7.5, 0, 7.5)
            ImageLabel.Size = UDim2.new(0, 30, 0, 30)
            ImageLabel.Image = "rbxassetid://"




            Title.Parent = SliderFrame_2
            Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            Title.BackgroundTransparency = 1.000
            Title.Position = UDim2.new(0, 45, 0, 5)
            Title.Size = UDim2.new(0, 280, 0, 30)
            Title.Font = Enum.Font.GothamSemibold
            Title.Text = "" .. text
            Title.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title.TextSize = 15.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            SliderInput.Name = "SliderInput"
            SliderInput.Parent = SliderFrame_2
            SliderInput.BackgroundColor3 = _G.Color 
            SliderInput.BackgroundTransparency = 0.7
            SliderInput.BorderSizePixel = 0
            SliderInput.Position = UDim2.new(0, 8, 0, 42)
            SliderInput.Size = UDim2.new(0, 365, 0, 6)

            SliderCorner2.CornerRadius = UDim.new(0, 100000)
            SliderCorner2.Parent = SliderInput

            SliderButton.Name = "SliderButton"
            SliderButton.Parent = SliderInput
            SliderButton.BackgroundColor3 = _G.Color 
            SliderButton.BackgroundTransparency = 1.000
            SliderButton.BorderSizePixel = 0
            SliderButton.Position = UDim2.new(0, 0, 0, -7)
            SliderButton.Size = UDim2.new(0, 346, 0, 25)

            SliderCount.Name = "SliderCount"
            SliderCount.Parent = SliderButton
            SliderCount.BackgroundColor3 = _G.Color 
            SliderCount.BackgroundTransparency = 0.3
            SliderCount.BorderSizePixel = 0
            SliderCount.Position = UDim2.new(0, start, 0, 0)
            SliderCount.Size = UDim2.new(0, 18, 0, 18)

            Title_2.Name = "Title_2"
            Title_2.Parent = SliderButton
            Title_2.AnchorPoint = Vector2.new(0, 0)
            Title_2.BackgroundColor3 = _G.Color 
            Title_2.AutoButtonColor = false
            Title_2.BackgroundTransparency = 1.000
            Title_2.Position = UDim2.new(0, start, 0, 0)
            Title_2.Size = UDim2.new(0, 18, 0, 18)
            Title_2.Font = Enum.Font.GothamBold
            Title_2.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
            Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Title_2.TextSize = 8.000
            Title_2.TextXAlignment = Enum.TextXAlignment.Center

            UICorner_2.Parent = Title_2
            UICorner_2.CornerRadius = UDim.new(0, 100000)

            SliderCorner.CornerRadius = UDim.new(0, 100000)
            SliderCorner.Parent = SliderCount

            SliderStroke.Name = "SliderStroke"
            SliderStroke.Parent = BoxFrame
            SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            SliderStroke.Color = _G.Color 
            SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
            SliderStroke.Thickness = 1
            SliderStroke.Transparency = 0.5
            SliderStroke.Enabled = true
            SliderStroke.Archivable = true

            BoxFrame.Name = "BoxFrame"
            BoxFrame.Parent = SliderFrame_2
            BoxFrame.BackgroundColor3 = _G.Color 
            BoxFrame.BackgroundTransparency = 1.000
            BoxFrame.Size = UDim2.new(0, 50, 0, 15)
            BoxFrame.Position = UDim2.new(0, 323, 0, 8)

            SliderBox.Name = "SliderBox"
            SliderBox.Parent = BoxFrame
            SliderBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
            SliderBox.BackgroundTransparency = 1.000
            SliderBox.Position = UDim2.new(0, 0, 0, 1.65)
            SliderBox.Size = UDim2.new(0, 50, 0, 15)
            SliderBox.ClearTextOnFocus = false
            SliderBox.Font = Enum.Font.Code
            SliderBox.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
            SliderBox.TextColor3 = Color3.fromRGB(200, 200, 200)
            SliderBox.TextSize = 10.000
            SliderBox.TextTransparency = 0
            SliderBox.TextXAlignment = Enum.TextXAlignment.Center
            SliderBox.TextEditable = true

            UICorner_3.Parent = BoxFrame
            UICorner_3.CornerRadius = UDim.new(0, 2)

            -- Slider Script --
            local dragging
            local SliderButtonStart
            local SliderButtonInput
            local slide = SliderButton

            local function slide(input)
                local slidein = UDim2.new(
                    math.clamp((input.Position.X - SliderButton.AbsolutePosition.X) / SliderButton.AbsoluteSize.X, 0, 1),
                    0,
                    0, 0)
                SliderCount:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
                Title_2:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
                local Value = math.floor(((slidein.X.Scale * max) / max) * (max - min) + min)
                SliderBox.Text = tostring(Value)
                Title_2.Text = tostring(Value)
                pcall(callback, Value, slidein)
            end

            SliderButton.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    SliderButtonInput = input
                    SliderButtonStart = input.Position.X
                    slidein = SliderButton.AbsolutePosition.X
                    game.TweenService:Create(SliderCount,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14) }):Play()
                    game.TweenService:Create(Title_2,
                        TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {
                            AnchorPoint = Vector2.new(0.22, 0.8),
                            TextSize = 13.000,
                            BackgroundTransparency = 0,
                            Size = UDim2.new(0, 25, 0, 25)
                        }):Play()
                    game.TweenService:Create(SliderBox,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { TextTransparency = 0 })
                        :Play()
                    game.TweenService:Create(SliderInput,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { BackgroundTransparency = 0.5 }):Play()
                    game.TweenService:Create(SliderStroke,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { Transparency = 0 })
                        :Play()
                end
                input.Changed:Connect(function(input)
                    if input.UserInputType == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end)
            SliderButton.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                    SliderButtonInput = input
                    game.TweenService:Create(SliderCount,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18) }):Play()
                    game.TweenService:Create(Title_2,
                        TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {
                            AnchorPoint = Vector2.new(0, 0),
                            TextSize = 8.000,
                            BackgroundTransparency = 1.000,
                            Size = UDim2.new(0, 18, 0, 18)
                        }):Play()
                    game.TweenService:Create(SliderBox,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { TextTransparency = 0.5 }):Play()
                    game.TweenService:Create(SliderInput,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        { BackgroundTransparency = 0.7 }):Play()
                    game.TweenService:Create(SliderStroke,
                        TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { Transparency = 0.5 })
                        :Play()
                end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if input == SliderButtonInput and dragging then
                    slide(input)
                end
            end)

            function set(property)
                if property == "Text" then
                    if tonumber(SliderBox.Text) then
                        if tonumber(SliderBox.Text) <= max then
                            Value = SliderBox.Text
                            Title_2.Text = SliderBox.Text
                            SliderCount:TweenPosition(
                                UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut",
                                "Linear", 0.08, true)
                            Title_2:TweenPosition(
                                UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut",
                                "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        end
                        if tonumber(SliderBox.Text) > max then
                            SliderBox.Text = max
                            Title_2.Text = max
                            Value = max
                            SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut",
                                "Linear", 0.08, true)
                            Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut",
                                "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        end
                        if tonumber(SliderBox.Text) >= min then
                            Value = SliderBox.Text
                            Title_2.Text = SliderBox.Text
                            SliderCount:TweenPosition(
                                UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut",
                                "Linear", 0.08, true)
                            Title_2:TweenPosition(
                                UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut",
                                "Linear", 0.12, true)
                            pcall(function()
                                callback(Value)
                            end)
                        end
                        if tonumber(SliderBox.Text) < min then
                            Value = min
                            Title_2 = min
                            SliderCount.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
                            Title_2.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
                            pcall(function()
                                callback(Value)
                            end)
                        end
                    else
                        SliderBox.Text = "" or Value
                        Title_2.Text = Value
                    end
                end
            end

            SliderBox.Focused:Connect(function()
                SliderBox.Changed:Connect(set)
            end)

            SliderBox.FocusLost:Connect(function(enterP)
                if not enterP then
                    if SliderBox.Text == "" then
                        SliderBox.Text = min
                        Title_2.Text = min
                        Value = min
                        SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear",
                            0.08, true)
                        Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12,
                            true)
                        pcall(function()
                            callback(Value)
                        end)
                    end
                    if tonumber(SliderBox.Text) > tonumber(max) then
                        Value = max
                        SliderBox.Text = max
                        Title_2.Text = max
                        SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut",
                            "Linear", 0.08, true)
                        Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear",
                            0.12, true)
                        pcall(function()
                            callback(Value)
                        end)
                    else
                        Value = tonumber(SliderBox.Text)
                    end
                    if tonumber(SliderBox.Text) < min then
                        SliderBox.Text = min
                        Title_2.Text = min
                        Value = min
                        SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear",
                            0.08, true)
                        Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12,
                            true)
                        pcall(function()
                            callback(Value)
                        end)
                    else
                        Value = tonumber(SliderBox.Text)
                    end
                end
                if tonumber(SliderBox.Text) > max then
                    SliderBox.Text = max
                    Title_2.Text = max
                    Value = max
                    SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear",
                        0.08, true)
                    Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12,
                        true)
                    pcall(function()
                        callback(Value)
                    end)
                else
                    Value = tonumber(SliderBox.Text)
                end
                if tonumber(SliderBox.Text) < min then
                    SliderBox.Text = min
                    Title_2.Text = min
                    Value = min
                    SliderCount.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
                    Title_2.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
                    pcall(function()
                        callback(Value)
                    end)
                else
                    Value = tonumber(SliderBox.Text)
                end
                if SliderBox.Text == "" then
                    SliderBox.Text = min
                    Title_2.Text = min
                    Value = min
                    SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08,
                        true)
                    Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
                    pcall(function()
                        callback(Value)
                    end)
                end
            end)
            return sliderfunc
        end

        --[[
function main:Slider(text,min,max,set,callback)
local Slider = Instance.new("Frame")
local slidercorner = Instance.new("UICorner")
local sliderr = Instance.new("Frame")
local sliderrcorner = Instance.new("UICorner")
local SliderLabel = Instance.new("TextLabel")
local HAHA = Instance.new("Frame")
local AHEHE = Instance.new("TextButton")
local bar = Instance.new("Frame")
local bar1 = Instance.new("Frame")
local bar1corner = Instance.new("UICorner")
local barcorner = Instance.new("UICorner")
local circlebar = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local slidervalue = Instance.new("Frame")
local valuecorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local posto = Instance.new("UIStroke")

Slider.Name = "Slider"
Slider.Parent = MainFramePage
Slider.BackgroundColor3 = Color3.fromRGB(255, 130, 0)
Slider.BackgroundTransparency = 0
Slider.Size = UDim2.new(0, 387, 0, 51)

slidercorner.CornerRadius = UDim.new(0, 5)
slidercorner.Name = "slidercorner"
slidercorner.Parent = Slider

sliderr.Name = "sliderr"
sliderr.Parent = Slider
sliderr.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sliderr.Position = UDim2.new(0, 1, 0, 1)
sliderr.Size = UDim2.new(0, 385, 0, 49)

sliderrcorner.CornerRadius = UDim.new(0, 5)
sliderrcorner.Name = "sliderrcorner"
sliderrcorner.Parent = sliderr

SliderLabel.Name = "SliderLabel"
SliderLabel.Parent = sliderr
SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderLabel.BackgroundTransparency = 1.000
SliderLabel.Position = UDim2.new(0, 15, 0, 0)
SliderLabel.Size = UDim2.new(0, 180, 0, 26)
SliderLabel.Font = Enum.Font.GothamSemibold
SliderLabel.Text = text
SliderLabel.TextColor3 = Color3.fromRGB(255,255,255)
SliderLabel.TextSize = 16.000
SliderLabel.TextTransparency = 0
SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

HAHA.Name = "HAHA"
HAHA.Parent = sliderr
HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HAHA.BackgroundTransparency = 1.000
HAHA.Size = UDim2.new(0, 350, 0, 29)

AHEHE.Name = "AHEHE"
AHEHE.Parent = sliderr
AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AHEHE.BackgroundTransparency = 1.000
AHEHE.Position = UDim2.new(0, 10, 0, 35)
AHEHE.Size = UDim2.new(0, 350, 0, 5)
AHEHE.Font = Enum.Font.SourceSans
AHEHE.Text = ""
AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
AHEHE.TextSize = 14.000

bar.Name = "bar"
bar.Parent = AHEHE
bar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
bar.Size = UDim2.new(0, 300, 0, 5)

bar1.Name = "bar1"
bar1.Parent = bar
bar1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bar1.BackgroundTransparency = 0
bar1.Size = UDim2.new(set/max, 0, 0, 5)

bar1corner.CornerRadius = UDim.new(0, 5)
bar1corner.Name = "bar1corner"
bar1corner.Parent = bar1

barcorner.CornerRadius = UDim.new(0, 5)
barcorner.Name = "barcorner"
barcorner.Parent = bar

circlebar.Name = "circlebar"
circlebar.Parent = bar1
circlebar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circlebar.Position = UDim2.new(1, -2, 0, -3)
circlebar.Size = UDim2.new(0, 10, 0, 10)

UICorner.CornerRadius = UDim.new(0, 100)
UICorner.Parent = circlebar

slidervalue.Name = "slidervalue"
slidervalue.Parent = sliderr
slidervalue.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
slidervalue.BackgroundTransparency = 1
slidervalue.Position = UDim2.new(0, 320, 0, 5)
slidervalue.Size = UDim2.new(0, 65, 0, 18)

valuecorner.CornerRadius = UDim.new(0, 2)
valuecorner.Name = "valuecorner"
valuecorner.Parent = slidervalue

TextBox.Parent = slidervalue
TextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextBox.Position = UDim2.new(0, 0, 0, 0)
TextBox.Size = UDim2.new(0, 60, 0, 20)
TextBox.Font = Enum.Font.GothamSemibold
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 9.000
TextBox.Text = set
TextBox.TextTransparency = 0

posto.Name = "posto"
posto.Parent = TextBox
posto.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
posto.Color = Color3.fromRGB(28,107,186)
posto.LineJoinMode = Enum.LineJoinMode.Round
posto.Thickness = 1
posto.Transparency = 0
posto.Enabled = true
posto.Archivable = true

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = TextBox

local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

if Value == nil then
Value = set
pcall(function()
 callback(Value)
 end)
end

AHEHE.MouseButton1Down:Connect(function()
 Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
 pcall(function()
  callback(Value)
  end)
 bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 355), 0, 5)
 circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 355), 0, -3)
 moveconnection = mouse.Move:Connect(function()
  TextBox.Text = Value
  Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
  pcall(function()
   callback(Value)
   end)
  bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 355), 0, 5)
  circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 355), 0, -3)
  end)
 releaseconnection = uis.InputEnded:Connect(function(Mouse)
  if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
  Value = math.floor((((tonumber(max) - tonumber(min)) / 355) * bar1.AbsoluteSize.X) + tonumber(min))
  pcall(function()
   callback(Value)
   end)
  bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 355), 0, 5)
  circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 355), 0, -3)
  moveconnection:Disconnect()
  releaseconnection:Disconnect()
  end
  end)
 end)
releaseconnection = uis.InputEnded:Connect(function(Mouse)
 if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
 Value = math.floor((((tonumber(max) - tonumber(min)) / 355) * bar1.AbsoluteSize.X) + tonumber(min))
 TextBox.Text = Value
 end
 end)

TextBox.FocusLost:Connect(function()
 if tonumber(TextBox.Text) > max then 
 TextBox.Text = max
 end
 bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
 circlebar.Position = UDim2.new(1, -2, 0, -3)
 TextBox.Text = tostring(TextBox.Text and math.floor((TextBox.Text / max) * (max - min) + min))
 pcall(callback, TextBox.Text)
 end)
end
]]
        --
        function main:Textbox(text, disappear, callback)
            local Textbox = Instance.new("Frame")
            local TextboxCorner = Instance.new("UICorner")
            local Textboxx = Instance.new("Frame")
            local TextboxxCorner = Instance.new("UICorner")
            local TextboxLabel = Instance.new("TextLabel")
            local txtbtn = Instance.new("TextButton")
            local RealTextbox = Instance.new("TextBox")
            local UICorner = Instance.new("UICorner")

            Textbox.Name = "Textbox"
            Textbox.Parent = MainFramePage
            Textbox.BackgroundColor3 = _G.Color 
            Textbox.BackgroundTransparency = 0.7
            Textbox.Size = UDim2.new(0, 387, 0, 31)

            TextboxCorner.CornerRadius = UDim.new(0, 5)
            TextboxCorner.Name = "TextboxCorner"
            TextboxCorner.Parent = Textbox

            Textboxx.Name = "Textboxx"
            Textboxx.Parent = Textbox
            Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            Textboxx.Position = UDim2.new(0, 1, 0, 1)
            Textboxx.Size = UDim2.new(0, 385, 0, 29)

            TextboxxCorner.CornerRadius = UDim.new(0, 5)
            TextboxxCorner.Name = "TextboxxCorner"
            TextboxxCorner.Parent = Textboxx

            TextboxLabel.Name = "TextboxLabel"
            TextboxLabel.Parent = Textbox
            TextboxLabel.BackgroundColor3 = _G.Color 
            TextboxLabel.BackgroundTransparency = 1.000
            TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
            TextboxLabel.Text = text
            TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
            TextboxLabel.Font = Enum.Font.GothamSemibold
            TextboxLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextboxLabel.TextSize = 16.000
            TextboxLabel.TextTransparency = 0
            TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

            txtbtn.Name = "txtbtn"
            txtbtn.Parent = Textbox
            txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            txtbtn.BackgroundTransparency = 1.000
            txtbtn.Position = UDim2.new(0, 1, 0, 1)
            txtbtn.Size = UDim2.new(0, 387, 0, 29)
            txtbtn.Font = Enum.Font.SourceSans
            txtbtn.Text = ""
            txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            txtbtn.TextSize = 14.000

            RealTextbox.Name = "RealTextbox"
            RealTextbox.Parent = Textbox
            RealTextbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            RealTextbox.BackgroundTransparency = 1
            RealTextbox.Position = UDim2.new(0, 275, 0, 4)
            RealTextbox.Size = UDim2.new(0, 100, 0, 24)
            RealTextbox.Font = Enum.Font.GothamSemibold
            RealTextbox.Text = "..."
            RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
            RealTextbox.TextSize = 11.000
            RealTextbox.TextTransparency = 0

            RealTextbox.FocusLost:Connect(function()
                callback(RealTextbox.Text)
                if disappear then
                    RealTextbox.Text = "..."
                end
            end)

            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = RealTextbox
        end

        function main:Label(text)
            local Label = Instance.new("TextLabel")
            local PaddingLabel = Instance.new("UIPadding")
            local labelfunc = {}

            Label.Name = "Label"
            Label.Parent = MainFramePage
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.Size = UDim2.new(0, 410, 0, 20)
            Label.Font = Enum.Font.GothamSemibold
            Label.TextColor3 = Color3.fromRGB(225, 225, 225)
            Label.TextSize = 15.000
            Label.Text = text
            Label.TextXAlignment = Enum.TextXAlignment.Left

            PaddingLabel.PaddingLeft = UDim.new(0, 15)
            PaddingLabel.Parent = Label
            PaddingLabel.Name = "PaddingLabel"

            function labelfunc:Set(newtext)
                Label.Text = newtext
            end

            return labelfunc
        end

        function main:Label1(text)
            local Label1 = Instance.new("TextLabel")
            local PaddingLabel1 = Instance.new("UIPadding")
            local Label1func = {}

            Label1.Name = "Label1"
            Label1.Parent = MainFramePage
            Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label1.BackgroundTransparency = 1.000
            Label1.Size = UDim2.new(0, 410, 0, 20)
            Label1.Font = Enum.Font.GothamSemibold
            Label1.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label1.TextSize = 15.000
            Label1.Text = text
            Label1.TextXAlignment = Enum.TextXAlignment.Left

            PaddingLabel1.PaddingLeft = UDim.new(0, 15)
            PaddingLabel1.Parent = Label1
            PaddingLabel1.Name = "PaddingLabel1"
            function Label1func:Refresh(tochange)
                Label1.Text = tochange
            end

            return Label1func
        end

        function main:Textbox(text, disappear, callback)
            local Textbox = Instance.new("Frame")
            local TextboxCorner = Instance.new("UICorner")
            local Textboxx = Instance.new("Frame")
            local TextboxxCorner = Instance.new("UICorner")
            local TextboxLabel = Instance.new("TextLabel")
            local txtbtn = Instance.new("TextButton")
            local RealTextbox = Instance.new("TextBox")
            local UICorner = Instance.new("UICorner")

            Textbox.Name = "Textbox"
            Textbox.Parent = MainFramePage
            Textbox.BackgroundColor3 = _G.Color 
            Textbox.BackgroundTransparency = 0.7
            Textbox.Size = UDim2.new(0, 387, 0, 31)

            TextboxCorner.CornerRadius = UDim.new(0, 5)
            TextboxCorner.Name = "TextboxCorner"
            TextboxCorner.Parent = Textbox

            Textboxx.Name = "Textboxx"
            Textboxx.Parent = Textbox
            Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            Textboxx.Position = UDim2.new(0, 1, 0, 1)
            Textboxx.Size = UDim2.new(0, 385, 0, 29)

            TextboxxCorner.CornerRadius = UDim.new(0, 3)
            TextboxxCorner.Name = "TextboxxCorner"
            TextboxxCorner.Parent = Textboxx

            TextboxLabel.Name = "TextboxLabel"
            TextboxLabel.Parent = Textbox
            TextboxLabel.BackgroundColor3 =_G.Color 
            TextboxLabel.BackgroundTransparency = 1.000
            TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
            TextboxLabel.Text = text
            TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
            TextboxLabel.Font = Enum.Font.GothamSemibold
            TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
            TextboxLabel.TextSize = 16.000
            TextboxLabel.TextTransparency = 0
            TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

            txtbtn.Name = "txtbtn"
            txtbtn.Parent = Textbox
            txtbtn.BackgroundColor3 = _G.Color 
            txtbtn.BackgroundTransparency = 1.000
            txtbtn.Position = UDim2.new(0, 1, 0, 1)
            txtbtn.Size = UDim2.new(0, 387, 0, 29)
            txtbtn.Font = Enum.Font.SourceSans
            txtbtn.Text = ""
            txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            txtbtn.TextSize = 14.000

            RealTextbox.Name = "RealTextbox"
            RealTextbox.Parent = Textbox
            RealTextbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            RealTextbox.BackgroundTransparency = 1
            RealTextbox.Position = UDim2.new(0, 275, 0, 4)
            RealTextbox.Size = UDim2.new(0, 100, 0, 24)
            RealTextbox.Font = Enum.Font.GothamSemibold
            RealTextbox.Text = ""
            RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
            RealTextbox.TextSize = 11.000
            RealTextbox.TextTransparency = 0

            RealTextbox.FocusLost:Connect(function()
                callback(RealTextbox.Text)
                if disappear then
                    RealTextbox.Text = ""
                end
            end)

            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = RealTextbox
        end

        function main:Label(text)
            local Label = Instance.new("TextLabel")
            local PaddingLabel = Instance.new("UIPadding")
            local labelfunc = {}

            Label.Name = "Label"
            Label.Parent = MainFramePage
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.Size = UDim2.new(0, 410, 0, 20)
            Label.Font = Enum.Font.GothamSemibold
            Label.TextColor3 = Color3.fromRGB(225, 225, 225)
            Label.TextSize = 15.000
            Label.Text = text
            Label.TextXAlignment = Enum.TextXAlignment.Left

            PaddingLabel.PaddingLeft = UDim.new(0, 15)
            PaddingLabel.Parent = Label
            PaddingLabel.Name = "PaddingLabel"

            function labelfunc:Set(newtext)
                Label.Text = newtext
            end

            return labelfunc
        end

        function main:Label1(text)
            local Label1 = Instance.new("TextLabel")
            local PaddingLabel1 = Instance.new("UIPadding")
            local Label1func = {}

            Label1.Name = "Label1"
            Label1.Parent = MainFramePage
            Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label1.BackgroundTransparency = 1.000
            Label1.Size = UDim2.new(0, 410, 0, 20)
            Label1.Font = Enum.Font.GothamSemibold
            Label1.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label1.TextSize = 15.000
            Label1.Text = text
            Label1.RichText = true
            Label1.TextXAlignment = Enum.TextXAlignment.Left

            PaddingLabel1.PaddingLeft = UDim.new(0, 15)
            PaddingLabel1.Parent = Label1
            PaddingLabel1.Name = "PaddingLabel1"
            function Label1func:Refresh(tochange)
                Label1.Text = tochange
            end

            return Label1func
        end

        function main:Dis(text, display)
            local Label1 = Instance.new("TextLabel")
            local PaddingLabel1 = Instance.new("UIPadding")
            local Label1func = {}

            Label1.Name = "Label1"
            Label1.Parent = MainFramePage
            Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label1.BackgroundTransparency = 1.000
            Label1.Size = UDim2.new(0, 410, 0, 20)
            Label1.Font = Enum.Font.GothamSemibold
            Label1.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label1.TextSize = 15.000
            Label1.Text = text
            Label1.TextXAlignment = Enum.TextXAlignment.Left

            Labeld.Name = "Labeld"
            Labeld.Parent = MainFramePage
            Labeld.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Labeld.BackgroundTransparency = 1.000
            Labeld.Size = UDim2.new(0, 410, 0, 20)
            Labeld.Font = Enum.Font.GothamSemibold
            Labeld.TextColor3 = _G.Color 
            Labeld.TextSize = 15.000
            Labeld.Text = display or ""
            Labeld.TextXAlignment = Enum.TextXAlignment.Left

            PaddingLabel1.PaddingLeft = UDim.new(0, 15)
            PaddingLabel1.Parent = Label1
            PaddingLabel1.Name = "PaddingLabel1"
            function Label1func:Refresh(tochange)
                Label1.Text = tochange
            end

            return Label1func
        end

        function main:Seperator(text)
            task.wait(0.1)
            local Seperator = Instance.new("Frame")
            local Sep1 = Instance.new("Frame")
            local Sep2 = Instance.new("TextLabel")
            local Sep3 = Instance.new("Frame")

            Seperator.Name = "Seperator"
            Seperator.Parent = MainFramePage
            Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Seperator.BackgroundTransparency = 1.000
            Seperator.Size = UDim2.new(0, 310, 0, 20)

            Sep1.Name = "Sep1"
            Sep1.Parent = Seperator
            Sep1.BackgroundColor3 = Color3.new(125, 125, 125)
            Sep1.BorderSizePixel = 0
            Sep1.Position = UDim2.new(0, 0, 0, 10)
            Sep1.Size = UDim2.new(0, 80, 0, 1)

            Sep2.Name = "Sep2"
            Sep2.Parent = Seperator
            Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Sep2.BackgroundTransparency = 1.000
            Sep2.Position = UDim2.new(0, 140, 0, 0)
            Sep2.Size = UDim2.new(0, 100, 0, 20)
            Sep2.Font = Enum.Font.GothamSemibold
            Sep2.Text = text
            Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Sep2.TextSize = 14.000

            Sep3.Name = "Sep3"
            Sep3.Parent = Seperator
            Sep3.BackgroundColor3 = Color3.new(125, 125, 125)
            Sep3.BorderSizePixel = 0
            Sep3.Position = UDim2.new(0, 300, 0, 10)
            Sep3.Size = UDim2.new(0, 80, 0, 1)
        end

        function main:Line()
            local Linee = Instance.new("Frame")
            local Line = Instance.new("Frame")

            Linee.Name = "Linee"
            Linee.Parent = MainFramePage
            Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Linee.BackgroundTransparency = 1.000
            Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
            Linee.Size = UDim2.new(0, 310, 0, 20)

            Line.Name = "Line"
            Line.Parent = Linee
            Line.BackgroundColor3 = Color3.new(125, 125, 125)
            Line.BorderSizePixel = 0
            Line.Position = UDim2.new(0, 0, 0, 10)
            Line.Size = UDim2.new(0, 410, 0, 1)
        end

        return main
    end

    return uitab
end

return Update

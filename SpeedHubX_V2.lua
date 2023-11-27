repeat wait() until game:IsLoaded()

game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
    
spawn(function()
    pcall(function()
        local req = (syn and syn.request) or (http and http.request) or http_request
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = game:GetService('HttpService'):JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = game:GetService('HttpService'):GenerateGUID(false),
                    args = {code = "vEyCfyB7"}
                })
            })
        end
    end)
 end)

do local GUI = game.CoreGui:FindFirstChild("SpeedHubX")
    if GUI then 
        GUI:Destroy()
    end

if _G.Color == nil then
    _G.Color = Color3.fromRGB(255,0,0)
end 
end

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
     local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
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

_G.WindowBackgroundColor = Color3.fromRGB(12,12,12)
_G.BackgroundItemColor = Color3.fromRGB(30, 30, 30)
_G.TabWindowColor = Color3.fromRGB(30, 30, 30)
_G.ContainerColor = Color3.fromRGB(30, 30, 30)
_G.TitleTextColor = Color3.fromRGB(255,255,255)
_G.ImageColor = Color3.fromRGB(255,255,255)
_G.LineThemeColor = Color3.fromRGB(255,255,255)
_G.TabTextColor = Color3.fromRGB(255,255,255)
_G.TabImageColor = Color3.fromRGB(255,255,255)
_G.TabThemeColor = Color3.fromRGB(250, 0, 0)
_G.SectionColor = Color3.fromRGB(255,255,255)
_G.SectionImageColor = Color3.fromRGB(255,255,255)
_G.SectionTextColor = Color3.fromRGB(255,255,255)
_G.SectionOn = Color3.fromRGB(255,255,255)

local Update = {}

function Update:Window(text,logo,keybind)
 local uihide = false
 local abc = false
 local logo = logo or 0
 local currentpage = ""
 local keybind = keybind or Enum.KeyCode.RightControl
 local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
 
 local SpeedHubX = Instance.new("ScreenGui")
 SpeedHubX.Name = "SpeedHubX"
 SpeedHubX.Parent = game.CoreGui
 SpeedHubX.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

 local Main = Instance.new("Frame")
 Main.Name = "Main"
 Main.Parent = SpeedHubX
 Main.Active = true
 Main.ClipsDescendants = true
 Main.AnchorPoint = Vector2.new(0.5,0.5)
 Main.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
 Main.Position = UDim2.new(0.5, 0, 0.5, 0)
 Main.Size = UDim2.fromOffset(450, 300)
Main.BackgroundTransparency = 0.8

 local MCNR = Instance.new("UICorner")
 MCNR.Name = "MCNR"
 MCNR.Parent = Main

 local Top = Instance.new("Frame")
Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top.BackgroundTransparency = 1
Top.Position = UDim2.new(0, 45, 0, 0)
Top.Size = UDim2.new(0, 580, 0, 70)
Top.ZIndex = 2

 local Logo = Instance.new("ImageLabel")
 Logo.Name = "Logo"
 Logo.Parent = Top
 Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Logo.BackgroundTransparency = 1.000
 Logo.Position = UDim2.new(0, 15, 0, 30)
 Logo.Size = UDim2.new(0, 60, 0, 60)
 Logo.Image = "rbxassetid://12870475640"
 Logo.Active = true
 Logo.ZIndex = 8
  
 local Name = Instance.new("TextLabel") 
 Name.Name = "Name"
 Name.Parent = Main
 Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Name.BackgroundTransparency = 1.000
 Name.Position = UDim2.new(0.107756112, 0, 0, 0)
 Name.Size = UDim2.new(0, 1, 0, 27)
 Name.Font = Enum.Font.GothamSemibold
 Name.Text = "Speed"
 Name.TextColor3 = Color3.fromRGB(225, 255, 255)
 Name.TextSize = 17.000

 local Hub = Instance.new("TextLabel")
 Hub.Name = "Hub"
 Hub.Parent = Main
 Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Hub.BackgroundTransparency = 1.000
 Hub.Position = UDim2.new(0, 100, 0, 0)
 Hub.Size = UDim2.new(0, 81, 0, 27)
 Hub.Font = Enum.Font.GothamSemibold
 Hub.Text = "Hub X"
 Hub.TextColor3 = Color3.fromRGB(255, 0, 0)
 Hub.TextSize = 17.000
 Hub.TextXAlignment = Enum.TextXAlignment.Left

local X_EXIT = Instance.new("TextButton")
 X_EXIT.Name = "X_EXIT"
 X_EXIT.Parent = Main
 X_EXIT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 X_EXIT.BackgroundTransparency = 1.000
 X_EXIT.Position = UDim2.new(0, 635, 0, 0)
 X_EXIT.Size = UDim2.new(0, 81, 0, 27)
 X_EXIT.Font = Enum.Font.GothamSemibold
 X_EXIT.Text = "X"
 X_EXIT.TextColor3 = Color3.fromRGB(255, 0, 0)
 X_EXIT.TextSize = 22.000
 X_EXIT.TextXAlignment = Enum.TextXAlignment.Left
 X_EXIT.MouseButton1Click:Connect(function()
   game.CoreGui:FindFirstChild("SpeedHubX"):Destroy()
end)

 local Tab = Instance.new("Frame")
 Tab.Name = "Tab"
 Tab.Parent = Main
 Tab.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
 Tab.Position = UDim2.new(0, 50, 0, 30)
 Tab.Size = UDim2.new(0, 85, 0, 365)
 
 local postog123 = Instance.new("UIStroke")

postog123.Name = "UIStroke"
postog123.Parent = Tab
postog123.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
postog123.Color = Color3.fromRGB(false)
postog123.LineJoinMode = Enum.LineJoinMode.Round
postog123.Thickness = 1
postog123.Transparency = 0.4
postog123.Enabled = true
postog123.Archivable = true

 local TCNR = Instance.new("UICorner")
 TCNR.Name = "TCNR"
 TCNR.Parent = Tab

 local ScrollTab = Instance.new("ScrollingFrame")
 ScrollTab.Name = "ScrollTab"
 ScrollTab.Parent = Tab
 ScrollTab.Active = true
 ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 ScrollTab.BackgroundTransparency = 1.000
 ScrollTab.Position = UDim2.new(0, 0, 0, 60)
 ScrollTab.Size = UDim2.new(0, 100, 0, 325)
 ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
 ScrollTab.ScrollBarThickness = 0

 local PLL = Instance.new("UIListLayout")
 PLL.Name = "PLL"
 PLL.Parent = ScrollTab
 PLL.SortOrder = Enum.SortOrder.LayoutOrder
 PLL.Padding = UDim.new(0, 15)

 local PPD = Instance.new("UIPadding")
 PPD.Name = "PPD"
 PPD.Parent = ScrollTab
 PPD.PaddingLeft = UDim.new(0, 10)
 PPD.PaddingTop = UDim.new(0, 10)

 local Page = Instance.new("Frame")
 Page.Name = "Page"
 Page.Parent = Main
 Page.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
 Page.Position = UDim2.new(0.210126834, 0, 0.075000003, 0)
 Page.Size = UDim2.new(0, 490, 0, 365)

 local PCNR = Instance.new("UICorner")
 PCNR.Name = "PCNR"
 PCNR.Parent = Page

 local MainPage = Instance.new("Frame")
 MainPage.Name = "MainPage"
 MainPage.Parent = Page
 MainPage.ClipsDescendants = true
 MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 MainPage.BackgroundTransparency = 1
 MainPage.Size = UDim2.new(0, 490, 0, 365)

 local PageList = Instance.new("Folder")
 PageList.Name = "PageList"
 PageList.Parent = MainPage

 local UIPageLayout = Instance.new("UIPageLayout")

 UIPageLayout.Parent = PageList
 UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
 UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
 UIPageLayout.FillDirection = Enum.FillDirection.Vertical
 UIPageLayout.Padding = UDim.new(0, 15)
 UIPageLayout.TweenTime = 0.400
 UIPageLayout.GamepadInputEnabled = false
 UIPageLayout.ScrollWheelInputEnabled = false
 UIPageLayout.TouchInputEnabled = false
 
 MakeDraggable(Top,Main)

 UserInputService.InputBegan:Connect(function(input)
     if input.KeyCode == Enum.KeyCode[yoo] then
         if uihide == false then
             uihide = true
                 TweenService:Create(
                     Main,
                     TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {Size = UDim2.new(0, 0, 0, 400)}
                 ):Play()
         else
             uihide = false
             Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
         end
     end
 end)
 
 local uitab = {}
 
 function uitab:Tab(text,img)
    local img = img or 6023426915
     uihide2 = false
     
     local TabButton = Instance.new("TextButton")
     TabButton.Parent = ScrollTab
     TabButton.Name = text.."Server"
     TabButton.Text = text
     TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
     TabButton.BackgroundTransparency = 1.000
     TabButton.Size = UDim2.new(0, 65, 0, 55)
     TabButton.Font = Enum.Font.GothamSemibold
     TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
     TabButton.TextSize = 12.000
     TabButton.TextTransparency = 0.500

     local IDK = Instance.new("ImageLabel")
     IDK.Name = "LogoIDK"
     IDK.Parent = TabButton
     IDK.BackgroundColor3 = Color3.fromRGB(255, 35, 35)
     IDK.BackgroundTransparency = 1
     IDK.Position = UDim2.new(0, 15, 0,-14)
     IDK.Size = UDim2.new(0, 30, 0, 30)
     IDK.Image = img or "http://www.roblox.com/asset/?id=12800687277"
     IDK.ImageColor3 = Color3.fromRGB(255, 255, 255)

     local MainFramePage = Instance.new("ScrollingFrame")
     MainFramePage.Name = ""
     MainFramePage.Parent = PageList
     MainFramePage.Active = true
     MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
     MainFramePage.BackgroundTransparency = 1.000
     MainFramePage.BorderSizePixel = 0
     MainFramePage.Size = UDim2.new(0, 495, 0, 365)
     MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
     MainFramePage.ScrollBarThickness = 0
     
     local UIPadding = Instance.new("UIPadding")
     local UIListLayout = Instance.new("UIListLayout")
     
     UIPadding.Parent = MainFramePage
     UIPadding.PaddingLeft = UDim.new(0, 10)
     UIPadding.PaddingTop = UDim.new(0, 10)

     UIListLayout.Padding = UDim.new(0,15)
     UIListLayout.Parent = MainFramePage
     UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
     
     TabButton.MouseButton1Click:Connect(function()
         for i,v in next, ScrollTab:GetChildren() do
             if v:IsA("TextButton") then
                 TweenService:Create(
                     v,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {TextTransparency = 0.5}
                 ):Play()
             end
             TweenService:Create(
                 TabButton,
                 TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                 {TextTransparency = 0}
             ):Play()
         end
         for i,v in next, PageList:GetChildren() do
             currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
             if v.Name == currentpage then
                 UIPageLayout:JumpTo(v)
             end
         end
     end)

     if abc == false then
         for i,v in next, ScrollTab:GetChildren() do
             if v:IsA("TextButton") then
                 TweenService:Create(
                     v,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {TextTransparency = 0.5}
                 ):Play()
             end
             TweenService:Create(
                 TabButton,
                 TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                 {TextTransparency = 0}
             ):Play()
         end	


         UIPageLayout:JumpToIndex(1)
         abc = true
     end
     
     game:GetService("RunService").Stepped:Connect(function()
         pcall(function()
             MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
             ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
         end)
     end)
     
     local main = {}
     function main:Button(text,callback)
         local Button = Instance.new("Frame")
         local UICorner = Instance.new("UICorner")
         local TextBtn = Instance.new("TextButton")
         local UICorner_2 = Instance.new("UICorner")
         local Black = Instance.new("Frame")
         local UICorner_3 = Instance.new("UICorner")

         TextBtn.Name = "TextBtn"
         TextBtn.Parent = MainFramePage
         TextBtn.BackgroundColor3 = Color3.fromRGB(255,255,255)
         TextBtn.Position = UDim2.new(0, 1, 0, 1)
         TextBtn.BackgroundTransparency = 0.5
         TextBtn.Size = UDim2.new(0, 468, 0, 29)
         TextBtn.Font = Enum.Font.GothamSemibold
         TextBtn.Text = text
         TextBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
         TextBtn.TextSize = 14.000
         
         UICorner_2.CornerRadius = UDim.new(0, 5)
         UICorner_2.Parent = TextBtn
         
         Black.Name = "Black"
         Black.Parent = Button
         Black.BackgroundColor3 = Color3.fromRGB(50,50,50)
         Black.BackgroundTransparency = 1.000
         Black.BorderSizePixel = 0
         Black.Position = UDim2.new(0, 1, 0, 1)
         Black.Size = UDim2.new(0, 468, 0, 29)
         
         UICorner_3.CornerRadius = UDim.new(0, 5)
         UICorner_3.Parent = Black

         TextBtn.MouseEnter:Connect(function()
             TweenService:Create(
                 Black,
                 TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                 {BackgroundTransparency = 0.7}
             ):Play()
         end)
         TextBtn.MouseLeave:Connect(function()
             TweenService:Create(
                 Black,
                 TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                 {BackgroundTransparency = 1}
             ):Play()
         end)
         TextBtn.MouseButton1Click:Connect(function()
             TextBtn.TextSize = 0
             TweenService:Create(
                 TextBtn,
                 TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                 {TextSize = 15}
             ):Play()
             callback()
         end)
     end
--[[
     function main:Toggle(text,config,callback)
         config = config or false
         local toggled = config
         local Toggle = Instance.new("Frame")
         local UICorner = Instance.new("UICorner")
         local Button = Instance.new("TextButton")
         local UICorner_2 = Instance.new("UICorner")
         local Label = Instance.new("TextLabel")
         local ToggleImage = Instance.new("Frame")
         local UICorner_3 = Instance.new("UICorner")
         local Circle = Instance.new("Frame")
         local UICorner_4 = Instance.new("UICorner")

         Toggle.Name = "Toggle"
         Toggle.Parent = MainFramePage
         Toggle.BackgroundColor3 = _G.Color
         Toggle.Size = UDim2.new(0, 470, 0, 31)

         UICorner.CornerRadius = UDim.new(0, 5)
         UICorner.Parent = Toggle

         Button.Name = "Button"
         Button.Parent = Toggle
         Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
         Button.Position = UDim2.new(0, 1, 0, 1)
         Button.Size = UDim2.new(0, 468, 0, 29)
         Button.AutoButtonColor = false
         Button.Font = Enum.Font.SourceSans
         Button.Text = ""
         Button.TextColor3 = Color3.fromRGB(0, 0, 0)
         Button.TextSize = 11.000

         UICorner_2.CornerRadius = UDim.new(0, 5)
         UICorner_2.Parent = Button

         Label.Name = "Label"
         Label.Parent = Toggle
         Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Label.BackgroundTransparency = 1.000
         Label.Position = UDim2.new(0, 1, 0, 1)
         Label.Size = UDim2.new(0, 468, 0, 29)
         Label.Font = Enum.Font.GothamSemibold
         Label.Text = text
         Label.TextColor3 = Color3.fromRGB(225, 225, 225)
         Label.TextSize = 15.000

         ToggleImage.Name = "ToggleImage"
         ToggleImage.Parent = Toggle
         ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
         ToggleImage.Position = UDim2.new(0, 415, 0, 5)
         ToggleImage.Size = UDim2.new(0, 45, 0, 20)

         UICorner_3.CornerRadius = UDim.new(0, 10)
         UICorner_3.Parent = ToggleImage

         Circle.Name = "Circle"
         Circle.Parent = ToggleImage
         Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
         Circle.Position = UDim2.new(0, 2, 0, 2)
         Circle.Size = UDim2.new(0, 16, 0, 16)

         UICorner_4.CornerRadius = UDim.new(0, 10)
         UICorner_4.Parent = Circle

         Button.MouseButton1Click:Connect(function()
             if toggled == false then
                 toggled = true
                 Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                 TweenService:Create(
                     Circle,
                     TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {BackgroundColor3 = _G.Color}
                 ):Play()
             else
                 toggled = false
                 Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
                 TweenService:Create(
                     Circle,
                     TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {BackgroundColor3 = Color3.fromRGB(227, 60, 110)}
                 ):Play()
             end
             pcall(callback,toggled)
         end)

         if config == true then
             toggled = true
             Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
             TweenService:Create(
                 Circle,
                 TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                 {BackgroundColor3 = _G.Color}
             ):Play()
             pcall(callback,toggled)
         end
     end]]

         -- Toggled --
         function main:Toggle(TogInfo, default, callback)
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
             CheckFrame.BackgroundColor3 = _G.BackgroundItemColor
             CheckFrame.BackgroundTransparency = 1.000
             CheckFrame.BorderSizePixel = 0
             CheckFrame.Size = UDim2.new(0, 475, 0, 30)
         
             CheckFrame2.Name = "CheckFrame2"
             CheckFrame2.Parent = CheckFrame
             CheckFrame2.BackgroundColor3 = Color3.fromRGB(50,50,50)
             CheckFrame2.BackgroundTransparency = 0.8
             CheckFrame2.BorderSizePixel = 0
             CheckFrame2.Position = UDim2.new(0, 3, 0, 0)
             CheckFrame2.Size = UDim2.new(0, 470, 0, 30)
             
             UIStroke.Name = "UIStroke"
             UIStroke.Parent = CheckFrame2
             UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
             UIStroke.Color = Color3.fromRGB(255,0,0)
             UIStroke.LineJoinMode = Enum.LineJoinMode.Round
             UIStroke.Thickness = 0
             UIStroke.Transparency = 1
             UIStroke.Enabled = true
             UIStroke.Archivable = true
             
             UICorner.Parent = CheckFrame2
             UICorner.CornerRadius = UDim.new(0, 3)
             
             ImageLabel.Name = "ImageLabel"
             ImageLabel.Parent = CheckFrame2
             ImageLabel.BackgroundColor3 = _G.SectionColor
             ImageLabel.BackgroundTransparency = 1.000
             ImageLabel.BorderSizePixel = 0
             ImageLabel.Position = UDim2.new(0, 5, 0, 6)
             ImageLabel.Size = UDim2.new(0, 20, 0, 18)
             ImageLabel.Image = "rbxassetid://0"
             ImageLabel.ImageColor3 = Color3.fromRGB(255,255,255)
             
             Space.Name = "Space"
             Space.Parent = CheckFrame2
             Space.BackgroundColor3 = _G.SectionColor
             Space.BackgroundTransparency = 1.000
             Space.Position = UDim2.new(0, 30, 0, 0)
             Space.Size = UDim2.new(0, 15, 0, 30)
             Space.Font = Enum.Font.GothamSemibold
             Space.Text = "->"
             Space.TextSize = 13.000
             Space.TextColor3 = Color3.fromRGB(255,255,255)
             Space.TextXAlignment = Enum.TextXAlignment.Center
         
             Title.Name = "Title"
             Title.Parent = CheckFrame2
             Title.BackgroundColor3 = _G.SectionColor
             Title.BackgroundTransparency = 1.000
             Title.Position = UDim2.new(0, 50, 0, 0)
             Title.Size = UDim2.new(0, 280, 0, 30)
             Title.Font = Enum.Font.GothamSemibold
             Title.Text = TogInfo or "checkBox Title"
             Title.TextColor3 = Color3.fromRGB(255,255,255)
             Title.TextSize = 14.000
             Title.TextXAlignment = Enum.TextXAlignment.Left
         
             ImageButton.Name = "ImageButton"
             ImageButton.Parent = CheckFrame2
             ImageButton.BackgroundColor3 = _G.WindowBackgroundColor
             ImageButton.BackgroundTransparency = 1.000
             ImageButton.Position = UDim2.new(0, 435, 0, 4)
             ImageButton.Size = UDim2.new(0, 23, 0, 23)
             ImageButton.ZIndex = 2
             ImageButton.Image = "rbxassetid://3926311105"
             ImageButton.ImageColor3 = Color3.fromRGB(255,255,255)
             ImageButton.ImageRectOffset = Vector2.new(940, 784)
             ImageButton.ImageRectSize = Vector2.new(48, 48)
             
             if default == true then
                 ImageButton.ImageRectOffset = Vector2.new(4, 836)
                 game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                     {ImageColor3 = Color3.fromRGB(0,250,0)}
                     ):Play()
                 toggle = not toggle
                 pcall(callback, toggle)
             end
             
             ImageButton.MouseButton1Click:Connect(function()
                 if toggle == false then
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {ImageColor3 = Color3.fromRGB(0,255,0)}
                         ):Play()
                     ImageButton.ImageRectOffset = Vector2.new(4, 836)
                 else
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {ImageColor3 = Color3.fromRGB(255,255,255)}
                         ):Play()
                     ImageButton.ImageRectOffset = Vector2.new(940, 784)
                 end
                 toggle = not toggle
                 pcall(callback, toggle)
             end)
         end


         function main:Dropdown(droptitle, list, callback)
             local dropfunc = {}
             local list = list or {}
             local DropToggled = false
             local DropSizeFrame = Instance.new("Frame")
             local Frame = Instance.new("Frame")
             local UIStroke = Instance.new("UIStroke")
             local DropCover = Instance.new("Frame")
             local UICorner = Instance.new("UICorner")
             local UICorner2 = Instance.new("UICorner")
             local ImageLabel = Instance.new("ImageLabel")
             local Space = Instance.new("TextLabel")
             local Title = Instance.new("TextLabel")
             local ImageButton = Instance.new("ImageButton")
             local DropStrokeList = Instance.new("UIStroke")
             local DropTextList = Instance.new("TextLabel")
             
             -- Prop --
             DropSizeFrame.Name = droptitle or "DropSizeFrame"
             DropSizeFrame.Parent = MainFramePage
             DropSizeFrame.BackgroundColor3 = _G.SectionColor
             DropSizeFrame.BackgroundTransparency = 1.000
             DropSizeFrame.Size = UDim2.new(0, 387, 0, 60)
             
             Frame.Name = "Frame"
             Frame.Parent = DropSizeFrame
             Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
             Frame.BackgroundTransparency = 0.8
             Frame.BorderSizePixel = 0
             Frame.Position = UDim2.new(0, 3, 0, 0)
             Frame.Size = UDim2.new(0, 470, 0, 70)
             
             UIStroke.Name = "UIStroke"
             UIStroke.Parent = Frame
             UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
             UIStroke.Color = Color3.fromRGB(255,0,0)
             UIStroke.LineJoinMode = Enum.LineJoinMode.Round
             UIStroke.Thickness = 1
             UIStroke.Transparency = 0
             UIStroke.Enabled = true
             UIStroke.Archivable = true
             
             UICorner.Parent = Frame
             UICorner.CornerRadius = UDim.new(0, 3)
             
             DropCover.Name = "DropCover"
             DropCover.Parent = Frame
             DropCover.BackgroundColor3 = _G.BackgroundItemColor
             DropCover.BackgroundTransparency = 1.000
             DropCover.BorderSizePixel = 0
             DropCover.Position = UDim2.new(0, 0, 0, 0)
             DropCover.Size = UDim2.new(0, 470, 0, 30)
             
             ImageLabel.Name = "ImageLabel"
             ImageLabel.Parent = DropCover
             ImageLabel.BackgroundColor3 = _G.SectionColor
             ImageLabel.BackgroundTransparency = 1.000
             ImageLabel.BorderSizePixel = 0
             ImageLabel.Position = UDim2.new(0, 5, 0, 6)
             ImageLabel.Size = UDim2.new(0, 18, 0, 18)
             ImageLabel.Image = "rbxassetid://0"
             ImageLabel.ImageColor3 = Color3.fromRGB(255,255,255)
             
             Space.Name = "Space"
             Space.Parent = DropCover
             Space.BackgroundColor3 = _G.SectionColor
             Space.BackgroundTransparency = 1.000
             Space.Position = UDim2.new(0, 30, 0, 0)
             Space.Size = UDim2.new(0, 15, 0, 30)
             Space.Font = Enum.Font.GothamSemibold
             Space.Text = "|"
             Space.TextSize = 13.000
             Space.TextColor3 = Color3.fromRGB(255,255,255)
             Space.TextXAlignment = Enum.TextXAlignment.Center
         
             Title.Name = "Title"
             Title.Parent = DropCover
             Title.BackgroundColor3 = _G.SectionColor
             Title.BackgroundTransparency = 1.000
             Title.Position = UDim2.new(0, 50, 0, 0)
             Title.Size = UDim2.new(0, 280, 0, 30)
             Title.Font = Enum.Font.GothamSemibold
             Title.Text = droptitle or "drop Title"
             Title.TextColor3 = Color3.fromRGB(255,255,255)
             Title.TextSize = 14.000
             Title.TextXAlignment = Enum.TextXAlignment.Left
         
             ImageButton.Name = "ImageButton"
             ImageButton.Parent = DropCover
             ImageButton.BackgroundColor3 = _G.WindowBackgroundColor
             ImageButton.BackgroundTransparency = 1.000
             ImageButton.Position = UDim2.new(0, 440, 0, 7)
             ImageButton.Size = UDim2.new(0, 23, 0, 18)
             ImageButton.Image = "rbxassetid://8530745436"
             ImageButton.ImageColor3 = Color3.fromRGB(255,255,255)
             ImageButton.Rotation = 180
             
             DropTextList.Name = "DropTextList"
             DropTextList.Parent = Frame
             DropTextList.BackgroundColor3 = _G.BackgroundItemColor
             DropTextList.BackgroundTransparency = 1.000
             DropTextList.Position = UDim2.new(0, 3, 0, 30)
             DropTextList.Size = UDim2.new(0, 460, 0, 25)
             DropTextList.Font = Enum.Font.GothamSemibold
             DropTextList.Text = v or "Select Type: "
             DropTextList.TextColor3 = Color3.fromRGB(255,255,255)
             DropTextList.TextSize = 14.000
             DropTextList.TextXAlignment = Enum.TextXAlignment.Center
             
             UICorner2.Parent = DropTextList
             UICorner2.CornerRadius = UDim.new(0,3)
             
             DropStrokeList.Name = "DropStrokeList"
             DropStrokeList.Parent = DropTextList
             DropStrokeList.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
             DropStrokeList.Color = Color3.fromRGB(255,255,255)
             DropStrokeList.LineJoinMode = Enum.LineJoinMode.Round
             DropStrokeList.Thickness = 0.2
             DropStrokeList.Transparency = 0
             DropStrokeList.Enabled = true
             DropStrokeList.Archivable = true
             
             -- Adden Local --
             local DropItemScroll = Instance.new("ScrollingFrame")
             local DropItemLayout = Instance.new("UIListLayout")
             local DropItemStroke = Instance.new("UIStroke")
             
             -- Adden Prop --
             DropItemScroll.Name = "DropItemScroll"
             DropItemScroll.Parent = Frame
             DropItemScroll.BackgroundColor3 = _G.SectionColor
             DropItemScroll.BackgroundTransparency = 1.000
             DropItemScroll.Position = UDim2.new(0, 3, 0, 60)
             DropItemScroll.Size = UDim2.new(0, 460, 0, 0)
             DropItemScroll.ScrollBarThickness = 0
             DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
             
             DropItemLayout.Name = "DropItemLayout"
             DropItemLayout.Parent = DropItemScroll
             DropItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
             DropItemLayout.Padding = UDim.new(0, 0)
             
             DropItemStroke.Name = "DropItemStroke"
             DropItemStroke.Parent = DropItemScroll
             DropItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
             DropItemStroke.Color = Color3.fromRGB(255,0,0)
             DropItemStroke.LineJoinMode = Enum.LineJoinMode.Round
             DropItemStroke.Thickness = 0
             DropItemStroke.Transparency = 0
             DropItemStroke.Enabled = true
             DropItemStroke.Archivable = true
             
             -- Dropdown Script--
             local ItemCount = 0
             local FrameSize = 0
             
             ImageButton.MouseButton1Click:Connect(function()
                 if DropToggled then
                     DropToggled = false
                     DropSizeFrame:TweenSize(UDim2.new(0, 470, 0, 60), 'InOut', 'Linear', 0.08)
                     Frame:TweenSize(UDim2.new(0, 470, 0, 60), 'InOut', 'Linear', 0.08)
                     DropItemScroll:TweenSize(UDim2.new(0, 460, 0, 0), 'InOut', 'Linear', 0.08)
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {Rotation = 180}
                         ):Play()
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {ImageColor3 = Color3.fromRGB(255,255,255)}
                         ):Play()
                     
                 else
                     DropToggled = true
                     DropSizeFrame:TweenSize(UDim2.new(0, 470, 0, 65 + FrameSize), 'InOut', 'Linear', 0.08)
                     Frame:TweenSize(UDim2.new(0, 470, 0, 65 + FrameSize), 'InOut', 'Linear', 0.08)
                     DropItemScroll:TweenSize(UDim2.new(0, 460, 0, FrameSize), 'InOut', 'Linear', 0.08)
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {Rotation = 0}
                         ):Play()
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {ImageColor3 = Color3.fromRGB(255,255,255)}
                         ):Play()
                 end
             end)
             
             for i,v in next, list do
                 ItemCount = ItemCount + 1
                 if ItemCount == 1 then
                     FrameSize = 30
                 elseif ItemCount == 2 then
                     FrameSize = 60
                 elseif ItemCount == 3 then
                     FrameSize = 90
                 elseif ItemCount >= 3 then
                     FrameSize = 120
                 end
                 
                 local ItemList = Instance.new("TextButton")
                 
                 ItemList.Name = "ItemList"
                 ItemList.Parent = DropItemScroll
                 ItemList.BackgroundColor3 = Color3.fromRGB(0,255,0)
                 ItemList.BackgroundTransparency = 1.000
                 ItemList.Size = UDim2.new(0, 460, 0, 30)
                 ItemList.AutoButtonColor = false
                 ItemList.Font = Enum.Font.GothamSemibold
                 ItemList.TextColor3 = Color3.fromRGB(255,255,255)
                 ItemList.TextSize = 14.000
                 ItemList.Text = v or "None..."
                 ItemList.TextXAlignment = Enum.TextXAlignment.Center
                     
                 ItemList.MouseEnter:Connect(function()
                     game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {BackgroundTransparency = 0.8}
                         ):Play()
                 end)
                 ItemList.MouseLeave:Connect(function()
                     game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {BackgroundTransparency = 1}
                         ):Play()
                 end)
                 
                 ItemList.MouseButton1Click:Connect(function()
                     DropTextList.Text = v or "None..."
                     pcall(callback, v)
                     DropToggled = false
                     DropSizeFrame:TweenSize(UDim2.new(0, 470, 0, 60), 'InOut', 'Linear', 0.08)
                     Frame:TweenSize(UDim2.new(0, 470, 0, 60), 'InOut', 'Linear', 0.08)
                     DropItemScroll:TweenSize(UDim2.new(0, 460, 0), 'InOut', 'Linear', 0.08)
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {Rotation = 180}
                         ):Play()
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {ImageColor3 = Color3.fromRGB(255,255,255)}
                         ):Play()
                 end)
                 DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)
             end
             
             function dropfunc:Clear()
                 for _,v  in next, DropItemScroll:GetChildren() do
                     if v:IsA("TextButton") then
                         v:Destroy()
                         FrameSize = 0
                         ItemCount = 0
                     end
                 end
                 DropTextList.Text = "Reset Succesfully..."
                 DropToggled = false
                 DropSizeFrame:TweenSize(UDim2.new(0, 470, 0, 60), 'InOut', 'Linear', 0.08)
                 Frame:TweenSize(UDim2.new(0, 470, 0, 60), 'InOut', 'Linear', 0.08)
                 DropItemScroll:TweenSize(UDim2.new(0, 460, 0), 'InOut', 'Linear', 0.08)
                 game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                     {Rotation = 180}
                     ):Play()
                 game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                     {ImageColor3 = Color3.fromRGB(255,255,255)}
                     ):Play()
             end
             
             function dropfunc:Add(newadd)
                 newadd = newadd or {}
                 ItemCount = ItemCount + 1
                 if ItemCount == 1 then
                     FrameSize = 30
                 elseif ItemCount == 2 then
                     FrameSize = 60
                 elseif ItemCount == 3 then
                     FrameSize = 90
                 elseif ItemCount >= 3 then
                     FrameSize = 120
                 end
                 
                 local ItemList = Instance.new("TextButton")
                 ItemList.Name = "ItemList"
                 ItemList.Parent = DropItemScroll
                 ItemList.BackgroundColor3 = Color3.fromRGB(255,255,255)
                 ItemList.BackgroundTransparency = 1.000
                 ItemList.Size = UDim2.new(0, 460, 0, 30)
                 ItemList.AutoButtonColor = false
                 ItemList.Font = Enum.Font.GothamSemibold
                 ItemList.TextColor3 = Color3.fromRGB(255,0,0)
                 ItemList.TextSize = 14.000
                 ItemList.Text = newadd or "None..."
                 ItemList.TextXAlignment = Enum.TextXAlignment.Center
                     
                 ItemList.MouseEnter:Connect(function()
                     game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {BackgroundTransparency = 0.8}
                         ):Play()
                 end)
                 ItemList.MouseLeave:Connect(function()
                     game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {BackgroundTransparency = 1}
                         ):Play()
                 end)
                 
                 ItemList.MouseButton1Click:Connect(function()
                     DropTextList.Text = newadd or "None..."
                     pcall(callback, newadd)
                     DropToggled = false
                     DropSizeFrame:TweenSize(UDim2.new(0, 470, 0, 60), 'InOut', 'Linear', 0.08)
                     Frame:TweenSize(UDim2.new(0, 470, 0, 60), 'InOut', 'Linear', 0.08)
                     DropItemScroll:TweenSize(UDim2.new(0, 460, 0), 'InOut', 'Linear', 0.08)
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {Rotation = 180}
                         ):Play()
                     game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                         {ImageColor3 = Color3.fromRGB(255,255,255)}
                         ):Play()
                 end)
                 DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)
             end
             return dropfunc
         end

function main:Textbox(boxtitle, callback)
             textbox = textbox or "Type"
             callback = callback or function() end
             local BoxFrame = Instance.new("Frame")
             local BoxCover = Instance.new("Frame")
             local UICorner = Instance.new("UICorner")
             local ImageLabel = Instance.new("ImageLabel")
             local Space = Instance.new("TextLabel")
             local Title = Instance.new("TextLabel")
             local TextBox = Instance.new("TextBox")
             local UICorner_2 = Instance.new("UICorner")
             local UIStroke = Instance.new("UIStroke")
             local UIStroke2 = Instance.new("UIStroke")
             
             -- Prop --
             BoxFrame.Name = boxtitle or "BoxFrame"
             BoxFrame.Parent = MainFramePage
             BoxFrame.BackgroundColor3 = _G.BackgroundItemColor
             BoxFrame.BackgroundTransparency = 1.000
             BoxFrame.BorderSizePixel = 0
             BoxFrame.Size = UDim2.new(0, 470, 0, 40)
         
             BoxCover.Name = "BoxCover"
             BoxCover.Parent = BoxFrame
             BoxCover.BackgroundColor3 = Color3.fromRGB(0,0,0)
             BoxCover.BackgroundTransparency = 0
             BoxCover.BorderSizePixel = 0
             BoxCover.Position = UDim2.new(0, 3, 0, 0)
             BoxCover.Size = UDim2.new(0, 470, 0, 40)
             
             UIStroke2.Parent = BoxCover
             UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
             UIStroke2.Color = Color3.fromRGB(255,0,0)
             UIStroke2.LineJoinMode = Enum.LineJoinMode.Round
             UIStroke2.Thickness = 1
             UIStroke2.Transparency = 0
             UIStroke2.Enabled = true
             UIStroke2.Archivable = true
             
             UICorner.Parent = BoxCover
             UICorner.CornerRadius = UDim.new(0, 3)
             
             ImageLabel.Name = "ImageLabel"
             ImageLabel.Parent = BoxCover
             ImageLabel.BackgroundColor3 = _G.SectionColor
             ImageLabel.BackgroundTransparency = 1.000
             ImageLabel.BorderSizePixel = 0
             ImageLabel.Position = UDim2.new(0, 5, 0, 12)
             ImageLabel.Size = UDim2.new(0, 18, 0, 18)
             ImageLabel.Image = "rbxassetid://0"
             ImageLabel.ImageColor3 = Color3.fromRGB(255,255,255)
             
             Space.Name = "Space"
             Space.Parent = BoxCover
             Space.BackgroundColor3 = _G.SectionColor
             Space.BackgroundTransparency = 1.000
             Space.Position = UDim2.new(0, 30, 0, 0)
             Space.Size = UDim2.new(0, 15, 0, 40)
             Space.Font = Enum.Font.GothamSemibold
             Space.Text = "|"
             Space.TextSize = 13.000
             Space.TextColor3 = Color3.fromRGB(255,255,255)
             Space.TextXAlignment = Enum.TextXAlignment.Center
         
             Title.Name = "Title"
             Title.Parent = BoxCover
             Title.BackgroundColor3 = _G.SectionColor
             Title.BackgroundTransparency = 1.000
             Title.Position = UDim2.new(0, 50, 0, 0)
             Title.Size = UDim2.new(0, 280, 0, 40)
             Title.Font = Enum.Font.GothamSemibold
             Title.Text = boxtitle or "box Title"
             Title.TextColor3 = Color3.fromRGB(255,255,255)
             Title.TextSize = 14.000
             Title.TextXAlignment = Enum.TextXAlignment.Left
             
             TextBox.Name = "TextBox"
             TextBox.Parent = BoxCover
             TextBox.BackgroundColor3 = Color3.fromRGB(190, 190, 180)
             TextBox.BackgroundTransparency = 1.000
             TextBox.Position = UDim2.new(0, 360, 0, 10)
             TextBox.Size = UDim2.new(0, 80, 0, 20)
             TextBox.Font = Enum.Font.Code
             TextBox.PlaceholderText = "Type Here"
             TextBox.Text = ""
             TextBox.TextColor3 = Color3.fromRGB(255,255,255)
             TextBox.TextWrapped = true
             TextBox.TextScaled = false
             TextBox.TextTransparency = 0.5
             TextBox.PlaceholderColor3 = Color3.fromRGB(255,255,255)
             TextBox.TextSize = 12.000
         
             UICorner_2.Parent = TextBox
             UICorner_2.CornerRadius = UDim.new(0, 2)
         
             UIStroke.Parent = TextBox
             UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
             UIStroke.Color = Color3.fromRGB(255,0,0)
             UIStroke.LineJoinMode = Enum.LineJoinMode.Round
             UIStroke.Thickness = 1
             UIStroke.Transparency = 0
             UIStroke.Enabled = true
             UIStroke.Archivable = true
             
             
             function anim(property)
                 if property == "Text" then
                     TextBox:TweenSize(UDim2.new(0, 70, 0, 18), "InOut", "Linear", 0.08, true)
                     wait(0.15)
                     TextBox:TweenSize(UDim2.new(0, 80, 0, 20), "InOut", "Linear", 0.08, true)
                 end
             end
         
             TextBox.FocusLost:Connect(function()
                 if not EnterPressed then
                     callback(TextBox.Text)
                     TextBox:TweenSize(UDim2.new(0, 70, 0, 18), "InOut", "Linear", 0.08, true)
                     game.TweenService:Create(TextBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                     wait(0.15)
                     TextBox:TweenSize(UDim2.new(0, 80, 0, 20), "InOut", "Linear", 0.08, true)
                     game.TweenService:Create(TextBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.5}):Play()
                     return
                 end
                 TextBox.Text = textbox
             end)
         end
--[[
function main:PlayerInfo()
     
         local UserID = game.Players.LocalPlayer.UserId
     
         local ThumbType = Enum.ThumbnailType.HeadShot
         local ThumbSize = Enum.ThumbnailSize.Size420x420
         local Content = game.Players:GetUserThumbnailAsync(UserID,ThumbType,ThumbSize)
     
         local PlayerInfoFrame = Instance.new("Frame")
         local PlayerInfoFrameUICorner = Instance.new("UICorner")
         local ImageLabel = Instance.new("ImageLabel")
         local UICorner = Instance.new("UICorner")
         local Name = Instance.new("TextLabel")
         local Lvl = Instance.new("TextLabel")
         local Fruit = Instance.new("TextLabel")
     
         local Line = Instance.new("Frame")
         local UIGradient = Instance.new("UIGradient")
     
         Line.Name = "Line"
         Line.Parent = PlayerInfoFrame
         Line.AnchorPoint = Vector2.new(0.5, 0.5)
         Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Line.BorderSizePixel = 0
         Line.Position = UDim2.new(0.5, 0, 0.311723471, 0)
         Line.Size = UDim2.new(0, 300, 0, 1)
     
         UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30,30,30)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.68, Color3.fromRGB(170, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30,30,30))}
         UIGradient.Parent = Line
     
         PlayerInfoFrame.Name = "PlayerInfoFrame"
         PlayerInfoFrame.Parent = MainFramePage
         PlayerInfoFrame.Active = true
         PlayerInfoFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
         PlayerInfoFrame.BorderSizePixel = 0
         PlayerInfoFrame.Size = UDim2.new(0, 470, 0, 285)
     
         PlayerInfoFrameUICorner.Name = "PlayerInfoFrameUICorner"
         PlayerInfoFrameUICorner.Parent = PlayerInfoFrame
     
         ImageLabel.Parent = PlayerInfoFrame
         ImageLabel.Active = true
         ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
         ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ImageLabel.BackgroundTransparency = 1
         ImageLabel.BorderSizePixel = 0
         ImageLabel.Position = UDim2.new(0, 45, 0, 45)
         ImageLabel.Size = UDim2.new(0, 70, 0, 70)
         ImageLabel.Image = Content
     
         UICorner.Parent = ImageLabel
     
         Name.Name = "Name"
         Name.Parent = PlayerInfoFrame
         Name.Active = true
         Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Name.BackgroundTransparency = 1.000
         Name.Position = UDim2.new(0.17916666, 0, 0, 0)
         Name.Size = UDim2.new(0, 200, 0, 27)
         Name.Font = Enum.Font.GothamBold
         Name.TextColor3 = Color3.fromRGB(255, 255, 255)
         Name.TextSize = 12.000
         Name.Text = game.Players.LocalPlayer.Name.. " ("..game.Players.LocalPlayer.DisplayName..")"
         Name.TextXAlignment = Enum.TextXAlignment.Left
     
         Lvl.Name = "Lvl"
         Lvl.Parent = PlayerInfoFrame
         Lvl.Active = true
         Lvl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Lvl.BackgroundTransparency = 1.000
         Lvl.Position = UDim2.new(0, 85, 0.113057934, 0)
         Lvl.Size = UDim2.new(0, 200, 0, 27)
         Lvl.TextTransparency = 0.8
         Lvl.Font = Enum.Font.GothamBold
         Lvl.TextColor3 = Color3.fromRGB(255, 255, 255)
         Lvl.TextSize = 12.000
         Lvl.TextXAlignment = Enum.TextXAlignment.Left
     
         Fruit.Name = "Fruit"
         Fruit.Parent = PlayerInfoFrame
         Fruit.Active = true
         Fruit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Fruit.BackgroundTransparency = 1.000
         Fruit.Position = UDim2.new(0, 85, 0.199820146, 0)
         Fruit.Size = UDim2.new(0, 200, 0, 27)
         Fruit.Font = Enum.Font.GothamBold
         Fruit.TextTransparency = 0.8
         Fruit.TextColor3 = Color3.fromRGB(255, 255, 255)
         Fruit.TextSize = 12.000
         Fruit.TextXAlignment = Enum.TextXAlignment.Left
     
         local id = game.PlaceId
     
         if id == 2753915549 or id == 4442272183 or id == 7449423635 then
             Fruit.Text = "Devil Fruit : "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value.. " / ".. "Race : " ..game:GetService("Players").LocalPlayer.Data.Race.Value
         else
             Fruit.Text = "Don't Find Your Database"
             Lvl.Text = "Don't Find Your Database"
         end
     
         local HealthBar = Instance.new("Frame")
         local HealthBarUICorner = Instance.new("UICorner")
         local HealthText = Instance.new("TextLabel")
         local Line = Instance.new("Frame")
         local LineHealth = Instance.new("Frame")
     
         HealthBar.Name = "HealthBar"
         HealthBar.Parent = PlayerInfoFrame
         HealthBar.BackgroundColor3 = Color3.fromRGB(40,40,40)
         HealthBar.BorderSizePixel = 0
         HealthBar.Position = UDim2.new(0.0187500007, 0, 0.340836018, 0)
         HealthBar.Size = UDim2.new(0, 450, 0, 45)
     
         HealthBarUICorner.CornerRadius = UDim.new(0, 4)
         HealthBarUICorner.Name = "HealthBarUICorner"
         HealthBarUICorner.Parent = HealthBar
     
         HealthText.Name = "HealthText"
         HealthText.Parent = HealthBar
         HealthText.Active = true
         HealthText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         HealthText.BackgroundTransparency = 1.000
         HealthText.Position = UDim2.new(0.0260000005, 0, 0.100000001, 0)
         HealthText.Size = UDim2.new(0, 300, 0, 22)
         HealthText.Font = Enum.Font.GothamBold
         HealthText.Text = "Health"
         HealthText.TextColor3 = Color3.fromRGB(85, 255, 127)
         HealthText.TextSize = 12.000
         HealthText.TextWrapped = true
         HealthText.TextXAlignment = Enum.TextXAlignment.Left
     
         Line.Name = "Line"
         Line.Parent = HealthBar
         Line.AnchorPoint = Vector2.new(0.5, 0.5)
         Line.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
         Line.BorderSizePixel = 0
         Line.Position = UDim2.new(0.498908311, 0, 0.766666651, 0)
         Line.Size = UDim2.new(0, 445, 0, 5)
     
         LineHealth.Name = "LineHealth"
         LineHealth.Parent = Line
         LineHealth.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
         LineHealth.BorderSizePixel = 0
         LineHealth.Size = UDim2.new(0, 445, 0, 5)
     
         local StaminaBar = Instance.new("Frame")
         local StaminaBarUICorner = Instance.new("UICorner")
         local StaminaText = Instance.new("TextLabel")
         local StaminaLine = Instance.new("Frame")
         local LineStamina = Instance.new("Frame")
     
         StaminaBar.Name = "StaminaBar"
         StaminaBar.Parent = PlayerInfoFrame
         StaminaBar.BackgroundColor3 = Color3.fromRGB(40,40,40)
         StaminaBar.BorderSizePixel = 0
         StaminaBar.Position = UDim2.new(0.0166666675, 0, 0.50803858, 0)
         StaminaBar.Size = UDim2.new(0, 450, 0, 45)
     
         StaminaBarUICorner.CornerRadius = UDim.new(0, 4)
         StaminaBarUICorner.Name = "StaminaBarUICorner"
         StaminaBarUICorner.Parent = StaminaBar
     
         StaminaText.Name = "StaminaText"
         StaminaText.Parent = StaminaBar
         StaminaText.Active = true
         StaminaText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         StaminaText.BackgroundTransparency = 1.000
         StaminaText.Position = UDim2.new(0.0260000005, 0, 0.100000001, 0)
         StaminaText.Size = UDim2.new(0, 300, 0, 22)
         StaminaText.Font = Enum.Font.GothamBold
         StaminaText.Text = "Stamina"
         StaminaText.TextColor3 = Color3.fromRGB(85, 170, 255)
         StaminaText.TextSize = 12.000
         StaminaText.TextWrapped = true
         StaminaText.TextXAlignment = Enum.TextXAlignment.Left
     
         StaminaLine.Name = "StaminaLine"
         StaminaLine.Parent = StaminaBar
         StaminaLine.AnchorPoint = Vector2.new(0.5, 0.5)
         StaminaLine.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
         StaminaLine.BorderSizePixel = 0
         StaminaLine.Position = UDim2.new(0.498908311, 0, 0.766666651, 0)
         StaminaLine.Size = UDim2.new(0, 445, 0, 5)
     
         LineStamina.Name = "LineStamina"
         LineStamina.Parent = StaminaLine
         LineStamina.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
         LineStamina.BorderSizePixel = 0
         LineStamina.Size = UDim2.new(0, 445, 0, 5)
     
         local Beli = Instance.new("TextLabel")
         local Fragment = Instance.new("TextLabel")
     
         Beli.Name = "Beli"
         Beli.Parent = PlayerInfoFrame
         Beli.Active = true
         Beli.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Beli.BackgroundTransparency = 1.000
         Beli.Position = UDim2.new(0.018749997, 0, 0.67897433, 0)
         Beli.Size = UDim2.new(0, 200, 0, 27)
         Beli.Font = Enum.Font.GothamBold
         Beli.TextColor3 = Color3.fromRGB(85, 255, 127)
         Beli.TextSize = 14.000
         Beli.TextXAlignment = Enum.TextXAlignment.Left
     
         Fragment.Name = "Fragment"
         Fragment.Parent = PlayerInfoFrame
         Fragment.Active = true
         Fragment.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Fragment.BackgroundTransparency = 1.000
         Fragment.Position = UDim2.new(0.018749997, 0, 0.765791059, 0)
         Fragment.Size = UDim2.new(0, 200, 0, 27)
         Fragment.Font = Enum.Font.GothamBold
         Fragment.TextColor3 = Color3.fromRGB(170, 85, 255)
         Fragment.TextSize = 14.000
         Fragment.TextXAlignment = Enum.TextXAlignment.Left
     
         local Bounty = Instance.new("TextLabel")
     
         Bounty.Name = "Bounty"
         Bounty.Parent = PlayerInfoFrame
         Bounty.Active = true
         Bounty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Bounty.BackgroundTransparency = 1.000
         Bounty.Position = UDim2.new(0.018749997, 0, 0.852607787, 0)
         Bounty.Size = UDim2.new(0, 200, 0, 27)
         Bounty.Font = Enum.Font.GothamBold
         Bounty.TextColor3 = Color3.fromRGB(255, 170, 0)
         Bounty.TextSize = 14.000
         Bounty.TextXAlignment = Enum.TextXAlignment.Left
     
         spawn(function()
             while wait(0.001) do 
                 pcall(function()
                     Lvl.Text = "Level : "..game:GetService("Players").LocalPlayer.Data.Level.Value
                     Beli.Text = "Beli : "..game:GetService("Players").LocalPlayer.Data.Beli.Value
                     Fragment.Text = "Fragments : "..game:GetService("Players").LocalPlayer.Data.Fragments.Value
                     Bounty.Text = "Bounty : "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
                     StaminaText.Text = "Stamina : "..game.Players.LocalPlayer.Character.Energy.Value.."/"..game.Players.LocalPlayer.Character.Energy.MaxValue
                     TweenService:Create(
                         LineStamina,
                         TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                         {Size = UDim2.new(game.Players.LocalPlayer.Character.Energy.Value/game.Players.LocalPlayer.Character.Energy.MaxValue, 0, 1, 0)} -- UDim2.new(0, 128, 0, 25)
                     ):Play()
     
                     HealthText.Text = "Health : "..game.Players.LocalPlayer.Character.Humanoid.Health.."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth
                     TweenService:Create(
                         LineHealth,
                         TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                         {Size = UDim2.new(game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth, 0, 0, 5)} -- UDim2.new(0, 128, 0, 25)
                     ):Play()
                 end)
             end
         end)
     end
--]]
         function main:Dropdown1(Name, list, default, callback)
             local Dropfunc = {}

             local MainDropDown = Instance.new("Frame")
             local UICorner_7 = Instance.new("UICorner")
             local MainDropDown_2 = Instance.new("Frame")
             local UICorner_8 = Instance.new("UICorner")
             local v = Instance.new("TextButton")
             local Main_Ui2Stroke = Instance.new("UIStroke")
             local Text_2 = Instance.new("TextLabel")
             local ImageButton = Instance.new("ImageButton")
             local Scroll_Items = Instance.new("ScrollingFrame")
             local UIListLayout_3 = Instance.new("UIListLayout")
             local UIPadding_3 = Instance.new("UIPadding")

             MainDropDown.Name = "MainDropDown"
             MainDropDown.Parent = MainFramePage
             MainDropDown.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
             MainDropDown.BackgroundTransparency = 0.700
             MainDropDown.BorderSizePixel = 0
             MainDropDown.ClipsDescendants = true
             MainDropDown.Size = UDim2.new(0.975000024, 0, 0, 30)
             MainDropDown.ZIndex = 16

             UICorner_7.CornerRadius = UDim.new(0, 4)
             UICorner_7.Parent = MainDropDown

             MainDropDown_2.Name = "MainDropDown"
             MainDropDown_2.Parent = MainDropDown
             MainDropDown_2.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
             MainDropDown_2.BackgroundTransparency = 0.700
             MainDropDown_2.BorderSizePixel = 0
             MainDropDown_2.ClipsDescendants = true
             MainDropDown_2.Size = UDim2.new(1, 0, 0, 30)
             MainDropDown_2.ZIndex = 16

             Main_Ui2Stroke.Thickness = 1
             Main_Ui2Stroke.Name = ""
             Main_Ui2Stroke.Parent = MainDropDown
             Main_Ui2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
             Main_Ui2Stroke.LineJoinMode = Enum.LineJoinMode.Round
             Main_Ui2Stroke.Color = Color3.fromRGB(255,0,0)
             Main_Ui2Stroke.Transparency = 0

             UICorner_8.CornerRadius = UDim.new(0, 4)
             UICorner_8.Parent = MainDropDown_2

             v.Name = "v"
             v.Parent = MainDropDown_2
             v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
             v.BackgroundTransparency = 1.000
             v.BorderSizePixel = 0
             v.Size = UDim2.new(1, 0, 1, 0)
             v.ZIndex = 16
             v.AutoButtonColor = false
             v.Font = Enum.Font.GothamBold
             v.Text = ""
             v.TextColor3 = Color3.fromRGB(255, 255, 255)
             v.TextSize = 12.000
             function getpro()
                 if default then
                     if table.find(list, default) then
                         callback(default)
                         return Name .. " : " .. default
                     else
                         return Name .. " : "
                     end
                 else
                     return Name .. " : "
                 end
             end
             Text_2.Name = "Text"
             Text_2.Parent = MainDropDown_2
             Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
             Text_2.BackgroundTransparency = 1.000
             Text_2.Position = UDim2.new(0, 10, 0, 10)
             Text_2.Size = UDim2.new(0, 62, 0, 12)
             Text_2.ZIndex = 16
             Text_2.Font = Enum.Font.GothamBold
             Text_2.Text = getpro()
             Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
             Text_2.TextSize = 14.000
             Text_2.TextXAlignment = Enum.TextXAlignment.Left

             ImageButton.Parent = MainDropDown_2
             ImageButton.AnchorPoint = Vector2.new(0, 0.5)
             ImageButton.BackgroundTransparency = 1.000
             ImageButton.Position = UDim2.new(1, -19, 0.5, 0)
             ImageButton.Size = UDim2.new(0, 10, 0, 10)
             ImageButton.ZIndex = 16
             ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"

             Scroll_Items.Name = "Scroll_Items"
             Scroll_Items.Parent = MainDropDown
             Scroll_Items.Active = true
             Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
             Scroll_Items.BackgroundTransparency = 1.000
             Scroll_Items.BorderSizePixel = 0
             Scroll_Items.Position = UDim2.new(0, 0, 0, 35)
             Scroll_Items.Size = UDim2.new(1, 0, 1, -35)
             Scroll_Items.ZIndex = 16
             Scroll_Items.CanvasSize = UDim2.new(0, 0, 0, 265)
             Scroll_Items.ScrollBarThickness = 0

             local UIListLayout_2 = Instance.new("UIListLayout")
             UIListLayout_3.Parent = Scroll_Items
             UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
             UIListLayout_3.Padding = UDim.new(0, 5)
             UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
             function()
                 Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y+40)
             end
             )
             UIPadding_3.Parent = Scroll_Items
             UIPadding_3.PaddingLeft = UDim.new(0, 10)
             UIPadding_3.PaddingTop = UDim.new(0, 5)

             function Dropfunc:TogglePanel(state)
                 TweenService:Create(
                     MainDropDown,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {Size = state and UDim2.new(0.975000024, 0, 0, 299) or UDim2.new(0.975000024, 0, 0, 30)}
                 ):Play()
                 TweenService:Create(
                     ImageButton,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {Rotation = state and 180 or 0}
                 ):Play()
             end
             local Tof = false
             ImageButton.MouseButton1Click:Connect(
                 function()
                     Tof = not Tof
                     Dropfunc:TogglePanel(Tof)
                 end
             )
             v.MouseButton1Click:Connect(
                 function()
                     Tof = not Tof
                     Dropfunc:TogglePanel(Tof)
                 end
             )
             function Dropfunc:Clear()
                 for i, v in next, Scroll_Items:GetChildren() do
                     if v:IsA("TextButton") then 
                         v:Destroy()
                     end
                 end
             end

             function Dropfunc:Add(Text)
                 local _5 = Instance.new("TextButton")
                 local UICorner_9 = Instance.new("UICorner")
                 _5.Name = Text
                 _5.Parent = Scroll_Items
                 _5.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
                 _5.BorderSizePixel = 0
                 _5.ClipsDescendants = true
                 _5.Size = UDim2.new(1, -10, 0, 20)
                 _5.ZIndex = 17
                 _5.AutoButtonColor = false
                 _5.Font = Enum.Font.GothamBold
                 _5.Text = Text
                 _5.TextColor3 = Color3.fromRGB(255, 255, 255)
                 _5.TextSize = 12.000

                 UICorner_9.CornerRadius = UDim.new(0, 4)
                 UICorner_9.Parent = _5

                 _5.MouseButton1Click:Connect(
                     function()
                         if _x == nil then
                             Tof = false
                             Dropfunc:TogglePanel(Tof)
                             callback(Text)
                             Text_2.Text = Text
                             _x = nil
                         end
                     end
                 )
             end
             for i, v in next, list do
                 Dropfunc:Add(v)
             end


             return Dropfunc
         end

     function main:Dropdown2(text,option,callback)
         local isdropping = false
         local Dropdown = Instance.new("Frame")
         local Main_Ui2Stroke = Instance.new("UIStroke")
         local DropFrameStroke = Instance.new("UIStroke")
         local UICorner = Instance.new("UICorner")
         local DropTitle = Instance.new("TextLabel")
         local DropScroll = Instance.new("ScrollingFrame")
         local UIListLayout = Instance.new("UIListLayout")
         local UIPadding = Instance.new("UIPadding")
         local DropButton = Instance.new("TextButton")
         local DropImage = Instance.new("ImageLabel")
         
         Dropdown.Name = "Dropdown"
         Dropdown.Parent = MainFramePage
         Dropdown.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
         Dropdown.ClipsDescendants = true
         Dropdown.Size = UDim2.new(0, 470, 0, 31)

         UICorner.CornerRadius = UDim.new(0, 5)
         UICorner.Parent = Dropdown

         Main_Ui2Stroke.Thickness = 1
         Main_Ui2Stroke.Name = ""
         Main_Ui2Stroke.Parent = Dropdown
         Main_Ui2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
         Main_Ui2Stroke.LineJoinMode = Enum.LineJoinMode.Round
         Main_Ui2Stroke.Color = Color3.fromRGB(255,0,0)
         Main_Ui2Stroke.Transparency = 0

         DropTitle.Name = "DropTitle"
         DropTitle.Parent = Dropdown
         DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         DropTitle.BackgroundTransparency = 1.000
         DropTitle.Size = UDim2.new(0, 109, 0, 31)
         DropTitle.Position = UDim2.new(0, 0, 0, 0)
         DropTitle.Font = Enum.Font.GothamSemibold
         DropTitle.Text = text.. " : "
         DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
         DropTitle.TextSize = 12.000
         
         DropScroll.Name = "DropScroll"
         DropScroll.Parent = DropTitle
         DropScroll.Active = true
         DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         DropScroll.BackgroundTransparency = 1.000
         DropScroll.BorderSizePixel = 0
         DropScroll.Position = UDim2.new(0, 0, 0, 31)
         DropScroll.Size = UDim2.new(0, 470, 0, 100)
         DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
         DropScroll.ScrollBarThickness = 3
         
         UIListLayout.Parent = DropScroll
         UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
         UIListLayout.Padding = UDim.new(0, 5)
         
         UIPadding.Parent = DropScroll
         UIPadding.PaddingLeft = UDim.new(0, 5)
         UIPadding.PaddingTop = UDim.new(0, 5)
         
         DropImage.Name = "DropImage"
         DropImage.Parent = Dropdown
         DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         DropImage.BackgroundTransparency = 1.000
         DropImage.Position = UDim2.new(0, 445, 0, 6)
         DropImage.Rotation = 180.000
         DropImage.Size = UDim2.new(0, 20, 0, 20)
         DropImage.Image = "rbxassetid://6031090990"
         
         DropButton.Name = "DropButton"
         DropButton.Parent = Dropdown
         DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         DropButton.BackgroundTransparency = 1.000
         DropButton.Size = UDim2.new(0, 470, 0, 31)
         DropButton.Font = Enum.Font.SourceSans
         DropButton.Text = ""
         DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
         DropButton.TextSize = 14.000

         for i,v in next,option do
             local Item = Instance.new("TextButton")

             Item.Name = "Item"
             Item.Parent = DropScroll
             Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
             Item.BackgroundTransparency = 1.000
             Item.Size = UDim2.new(0, 460, 0, 26)
             Item.Font = Enum.Font.GothamSemibold
             Item.Text = tostring(v)
             Item.TextColor3 = Color3.fromRGB(225, 225, 225)
             Item.TextSize = 13.000
             Item.TextTransparency = 0.500

             Item.MouseEnter:Connect(function()
                 TweenService:Create(
                     Item,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {TextTransparency = 0}
                 ):Play()
             end)

             Item.MouseLeave:Connect(function()
                 TweenService:Create(
                     Item,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {TextTransparency = 0.5}
                 ):Play()
             end)

             Item.MouseButton1Click:Connect(function()
                 isdropping = false
                 Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                 TweenService:Create(
                     DropImage,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {Rotation = 180}
                 ):Play()
                 callback(Item.Text)
                 DropTitle.Text = text.." : "..Item.Text
             end)
         end

         DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

         DropButton.MouseButton1Click:Connect(function()
             if isdropping == false then
                 isdropping = true
                 Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
                 TweenService:Create(
                     DropImage,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {Rotation = 0}
                 ):Play()
             else
                 isdropping = false
                 Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                 TweenService:Create(
                     DropImage,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {Rotation = 180}
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
             Item.Size = UDim2.new(0, 470, 0, 26)
             Item.Font = Enum.Font.GothamSemibold
             Item.Text = tostring(t)
             Item.TextColor3 = Color3.fromRGB(225, 225, 225)
             Item.TextSize = 13.000
             Item.TextTransparency = 0.500

             Item.MouseEnter:Connect(function()
                 TweenService:Create(
                     Item,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {TextTransparency = 0}
                 ):Play()
             end)

             Item.MouseLeave:Connect(function()
                 TweenService:Create(
                     Item,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {TextTransparency = 0.5}
                 ):Play()
             end)

             Item.MouseButton1Click:Connect(function()
                 isdropping = false
                 Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                 TweenService:Create(
                     DropImage,
                     TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                     {Rotation = 180}
                 ):Play()
                 callback(Item.Text)
                 DropTitle.Text = " : "..Item.Text
             end)
         end
         function dropfunc:Clear()
             DropTitle.Text = tostring" : "
             isdropping = false
             Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
             TweenService:Create(
                 DropImage,
                 TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                 {Rotation = 180}
             ):Play()
             for i,v in next, DropScroll:GetChildren() do
                 if v:IsA("TextButton") then
                     v:Destroy()
                 end
             end
         end
         return dropfunc
     end

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

         Slider.Name = "Slider"
         Slider.Parent = MainFramePage
         Slider.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
         Slider.BackgroundTransparency = 0
         Slider.Size = UDim2.new(0, 470, 0, 51)

         slidercorner.CornerRadius = UDim.new(0, 5)
         slidercorner.Name = "slidercorner"
         slidercorner.Parent = Slider

         sliderr.Name = "sliderr"
         sliderr.Parent = Slider
         sliderr.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
         sliderr.Position = UDim2.new(0, 1, 0, 1)
         sliderr.Size = UDim2.new(0, 468, 0, 49)

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
         SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
         SliderLabel.TextSize = 16.000
         SliderLabel.TextTransparency = 0
         SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

         HAHA.Name = "HAHA"
         HAHA.Parent = sliderr
         HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         HAHA.BackgroundTransparency = 1.000
         HAHA.Size = UDim2.new(0, 468, 0, 29)

         AHEHE.Name = "AHEHE"
         AHEHE.Parent = sliderr
         AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         AHEHE.BackgroundTransparency = 1.000
         AHEHE.Position = UDim2.new(0, 10, 0, 35)
         AHEHE.Size = UDim2.new(0, 448, 0, 5)
         AHEHE.Font = Enum.Font.SourceSans
         AHEHE.Text = ""
         AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
         AHEHE.TextSize = 14.000

         bar.Name = "bar"
         bar.Parent = AHEHE
         bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         bar.Size = UDim2.new(0, 448, 0, 5)

         bar1.Name = "bar1"
         bar1.Parent = bar
         bar1.BackgroundColor3 = Color3.fromRGB(225, 0, 0)
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
         circlebar.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
         circlebar.Position = UDim2.new(1, -2, 0, -3)
         circlebar.Size = UDim2.new(0, 10, 0, 10)
         local circlebar3 = Instance.new("UIStroke")

         circlebar3.Thickness = 1
         circlebar3.Name = ""
         circlebar3.Parent = circlebar
         circlebar3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
         circlebar3.LineJoinMode = Enum.LineJoinMode.Round
         circlebar3.Color = Color3.fromRGB(255,0,0)
         circlebar3.Transparency = 0

         UICorner.CornerRadius = UDim.new(0, 100)
         UICorner.Parent = circlebar

     --[[	slidervalue.Name = "slidervalue"
         slidervalue.Parent = sliderr
         slidervalue.BackgroundColor3 = _G.Color
         slidervalue.BackgroundTransparency = 0
         slidervalue.Position = UDim2.new(0, 395, 0, 5)
         slidervalue.Size = UDim2.new(0, 65, 0, 18)
--]]
         valuecorner.CornerRadius = UDim.new(0, 5)
         valuecorner.Name = "valuecorner"
         valuecorner.Parent = slidervalue

         TextBox.Parent = sliderr
         TextBox.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
         TextBox.Position = UDim2.new(0, 400, 0, 4)
         TextBox.Size = UDim2.new(0, 63, 0, 16)
         TextBox.Font = Enum.Font.GothamSemibold
         TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
         TextBox.TextSize = 15.000
         TextBox.Text = set
         TextBox.TextTransparency = 0

         UICorner_2.CornerRadius = UDim.new(0, 5)
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
             bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
             circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
             moveconnection = mouse.Move:Connect(function()
                 TextBox.Text = Value
                 Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                 pcall(function()
                     callback(Value)
                 end)
                 bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                 circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
             end)
             releaseconnection = uis.InputEnded:Connect(function(Mouse)
                 if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                     Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                     pcall(function()
                         callback(Value)
                     end)
                     bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                     circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                     moveconnection:Disconnect()
                     releaseconnection:Disconnect()
                 end
             end)
         end)
         releaseconnection = uis.InputEnded:Connect(function(Mouse)
             if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                 Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                 TextBox.Text = Value
             end
         end)

         TextBox.FocusLost:Connect(function()
             if tonumber(TextBox.Text) > max then
                 TextBox.Text  = max
             end
             bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
             circlebar.Position = UDim2.new(1, -2, 0, -3)
             TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
             pcall(callback, TextBox.Text)
         end)
     end

     function main:Textbox1(text,disappear,callback)
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
         Textbox.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
         Textbox.BackgroundTransparency = 0
         Textbox.Size = UDim2.new(0, 470, 0, 31)

         TextboxCorner.CornerRadius = UDim.new(0, 5)
         TextboxCorner.Name = "TextboxCorner"
         TextboxCorner.Parent = Textbox

         Textboxx.Name = "Textboxx"
         Textboxx.Parent = Textbox
         Textboxx.BackgroundColor3 = Color3.fromRGB(10, 9, 9)
         Textboxx.Position = UDim2.new(0, 1, 0, 1)
         Textboxx.Size = UDim2.new(0, 468, 0, 29)

         TextboxxCorner.CornerRadius = UDim.new(0, 5)
         TextboxxCorner.Name = "TextboxxCorner"
         TextboxxCorner.Parent = Textboxx

         TextboxLabel.Name = "TextboxLabel"
         TextboxLabel.Parent = Textbox
         TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         TextboxLabel.BackgroundTransparency = 1.000
         TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
         TextboxLabel.Text = text
         TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
         TextboxLabel.Font = Enum.Font.GothamSemibold
         TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
         TextboxLabel.TextSize = 16.000
         TextboxLabel.TextTransparency = 0
         TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left
         local Main_U = Instance.new("UIStroke")

         Main_U.Thickness = 1
         Main_U.Name = ""
         Main_U.Parent = RealTextbox
         Main_U.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
         Main_U.LineJoinMode = Enum.LineJoinMode.Round
         Main_U.Color = Color3.fromRGB(255,0,0)
         Main_U.Transparency = 0
         local Main_U9 = Instance.new("UIStroke")

         Main_U9.Thickness = 1
         Main_U9.Name = ""
         Main_U9.Parent = txtbtn
         Main_U9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
         Main_U9.LineJoinMode = Enum.LineJoinMode.Round
         Main_U9.Color = Color3.fromRGB(255,255,255)
         Main_U9.Transparency = 0
         local vaner = Instance.new("UICorner")

         vaner.CornerRadius = UDim.new(0, 5)
         vaner.Name = "valuecorner"
         vaner.Parent = txtbtn

         txtbtn.Name = "txtbtn"
         txtbtn.Parent = Textbox
         txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         txtbtn.BackgroundTransparency = 1.000
         txtbtn.Position = UDim2.new(0, 1, 0, 1)
         txtbtn.Size = UDim2.new(0, 468, 0, 29)
         txtbtn.Font = Enum.Font.SourceSans
         txtbtn.Text = ""
         txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
         txtbtn.TextSize = 14.000

         RealTextbox.Name = "RealTextbox"
         RealTextbox.Parent = Textbox
         RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         RealTextbox.BackgroundTransparency = 0
         RealTextbox.Position = UDim2.new(0, 361, 0, 3)
         RealTextbox.Size = UDim2.new(0, 90, 0, 25)
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

         UICorner.CornerRadius = UDim.new(0, 5)
         UICorner.Parent = RealTextbox
     end
     function main:Label(text)
         local Label = Instance.new("TextLabel")
         local PaddingLabel = Instance.new("UIPadding")
         local labelfunc = {}
 
         Label.Name = "Label"
         Label.Parent = MainFramePage
         Label.BackgroundColor3 = Color3.fromRGB(255,255,255)
         Label.BackgroundTransparency = 1.000
         Label.Size = UDim2.new(0, 470, 0, 20)
         Label.Font = Enum.Font.Code
         Label.TextColor3 = Color3.fromRGB(255,255,255)
         Label.TextSize = 17.000
         Label.Text = text
         Label.TextXAlignment = Enum.TextXAlignment.Left

         PaddingLabel.PaddingLeft = UDim.new(0,15)
         PaddingLabel.Parent = Label
         PaddingLabel.Name = "PaddingLabel"
 
         function labelfunc:Set(newtext)
             Label.Text = newtext
         end
         return labelfunc
     end

     function main:Seperator(text)
         local Seperator = Instance.new("Frame")
         local Sep1 = Instance.new("Frame")
         local Sep2 = Instance.new("TextLabel")
         local Sep3 = Instance.new("Frame")
         
         Seperator.Name = "Seperator"
         Seperator.Parent = MainFramePage
         Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Seperator.BackgroundTransparency = 1.000
         Seperator.Size = UDim2.new(0, 470, 0, 20)
         
         Sep1.Name = "Sep1"
         Sep1.Parent = Seperator
         Sep1.BackgroundColor3 = Color3.fromRGB(230,230,230)
         Sep1.BorderSizePixel = 0
         Sep1.Position = UDim2.new(0, 0, 0, 10)
         Sep1.Size = UDim2.new(0, 80, 0, 1)
         
         Sep2.Name = "Sep2"
         Sep2.Parent = Seperator
         Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Sep2.BackgroundTransparency = 1.000
         Sep2.Position = UDim2.new(0, 185, 0, 0)
         Sep2.Size = UDim2.new(0, 100, 0, 20)
         Sep2.Font = Enum.Font.GothamSemibold
         Sep2.Text = text
         Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
         Sep2.TextSize = 14.000
         
         Sep3.Name = "Sep3"
         Sep3.Parent = Seperator
         Sep3.BackgroundColor3 = Color3.fromRGB(255,255,255)
         Sep3.BorderSizePixel = 0
         Sep3.Position = UDim2.new(0, 390, 0, 10)
         Sep3.Size = UDim2.new(0, 80, 0, 1)
     end

     function main:Line()
         local Linee = Instance.new("Frame")
         local Line = Instance.new("Frame")
         
         Linee.Name = "Linee"
         Linee.Parent = MainFramePage
         Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Linee.BackgroundTransparency = 2.000
         Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
         Linee.Size = UDim2.new(0, 470, 0, 20)
         Line.Name = "Line"
         Line.Parent = Linee
         Line.BackgroundColor3 = Color3.fromRGB(255,255,255)
         Line.BorderSizePixel = 0
         Line.Position = UDim2.new(0, 0, 0, 10)
         Line.Size = UDim2.new(0, 470, 0, 1)
     end
     return main
 end
 return uitab
end
return Update

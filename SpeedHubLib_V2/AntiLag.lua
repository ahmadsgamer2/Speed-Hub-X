getgenv().AntiLag = true
local Set = 100
local SetFPSHigh = 9e9
function SetHighFPS(v)
  return setfpscap(v or Set, SetFPSHigh)
end
local RunService = game:GetService("RunService")
function OPZ()
RunService.Stepped:Connect(function()
        game:GetService("ReplicatedStorage"):ClearAllChildren()
        game:GetService("Workspace"):ClearAllChildren()
        game:GetService("Players"):ClearAllChildren()
        game:GetService("Lighting"):ClearAllChildren()
    end)
end
function SetHIGH()
  game:GetService("RunService").RenderStepped:Connect(function()
    game:GetService("RunService").RenderStepped:Wait()
    game:GetService("RunService").RenderStepped:Wait()
    game:GetService("RunService").RenderStepped:Wait()
    game:GetService("RunService").RenderStepped:Wait()
    game:GetService("RunService").RenderStepped:Wait()
    game:GetService("RunService").RenderStepped:Wait()
    game:GetService("RunService").RenderStepped:Wait()
    game:GetService("RunService").RenderStepped:Wait()
end)
end
SetHIGH()
OPZ()

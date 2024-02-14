getgenv().AntiLag = true
local Set = 100
local SetFPSHigh = 9e9
function SetHighFPS(v)
  return setfpscap(v or Set, SetFPSHigh)
end
function SetHIGH()
  game:GetService("RunService").RenderStepped:Connect(function()
      SetHighFPS(100)
end)
end
SetHIGH()

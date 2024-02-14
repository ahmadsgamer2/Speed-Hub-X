getgenv().AntiLag = true
local Set = 100
local SetFPSHigh = 9e9
function SetHighFPS(v)
  return setfpscap(v or Set, SetFPSHigh)
end
task.spawn(function()
    while task.wait() do
      if getgenv().AntiLag then
        SetHighFPS(100)
      end
    end
  end)

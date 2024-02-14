getgenv().AntiLag = true
local Set = 100
local SetFPSHigh = 9e9
function SetHighFPS(v)
  return setfpscap(v or Set, SetFPSHigh)
end

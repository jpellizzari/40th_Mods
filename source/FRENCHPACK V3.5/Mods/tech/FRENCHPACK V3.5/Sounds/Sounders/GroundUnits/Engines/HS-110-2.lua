dofile("GroundUnits/Engines/Engine.lua")

HS_110_2 = engine:new()

--- engine
function HS_110_2:initNames()
  self.idle_name = "GndTech/LAV25EngineIdle"
  self.max_name = "GndTech/LAV25EngineMax"
  self.acc_start_name = "GndTech/StrykerEngineAccStart"
  self.acc_end_name = "GndTech/ShilkaEngineAccEnd"
end

function HS_110_2:calculateIdleGainEngine(EngineRPM)
  return -0.55 * EngineRPM + 1
end

function HS_110_2:calculateIdlePitchEngine(EngineRPM)
  return 0.2 * EngineRPM + 1
end

function HS_110_2:calculateMaxGainEngine(EngineRPM)
  return 0.75 * EngineRPM + 0.35
end

function HS_110_2:calculateMaxPitchEngine(EngineRPM)
  return EngineRPM + 1
end
--- engine
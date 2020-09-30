dofile("GroundUnits/Engines/Engine.lua")
dofile("GroundUnits/Engines/Turbine.lua")

v8x1500 = engine:new()
v8x1500turbine = turbine:new()

--- engine
function v8x1500:initNames()
  self.idle_name = "GndTech/LeclercEngineIdle"
  self.max_name = "GndTech/LeclercEngineMax"
  self.acc_start_name = "GndTech/L1EngineAccStart"
  self.acc_end_name = "GndTech/L1EngineAccEnd"
end

function v8x1500:calculateIdlePitchEngine(EngineRPM)
  return 0.625 * EngineRPM + 0.875
end

function v8x1500:calculateIdleGainEngine(EngineRPM)
  return 0.2 * EngineRPM + 1
end

function v8x1500:calculateMaxPitchEngine(EngineRPM)
  return 0.625 * EngineRPM + 0.785
end

function v8x1500:calculateMaxGainEngine(EngineRPM)
  return 0.75 * EngineRPM + 0.25
end
--- engine

--- turbine
function v8x1500turbine:initNames()
  self.turbine_loop = "GndTech/TurbineHyperbar"
end

function v8x1500turbine:calculateTurbineGain(TurbineRPM)
  return (math.exp(TurbineRPM ^ 3.0) - 1) / 4
end

function v8x1500turbine:calculateTurbinePitch(TurbineRPM)
  return  0.625 * TurbineRPM + 0.375
end
v8x1500turbine.turbine_accel_k = 0.2
v8x1500turbine.turbine_decel_k = 0.5
v8x1500.turbine = v8x1500turbine
--- turbine
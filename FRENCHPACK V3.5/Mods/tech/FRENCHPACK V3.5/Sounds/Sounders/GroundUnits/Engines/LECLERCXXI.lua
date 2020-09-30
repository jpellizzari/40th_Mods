dofile("GroundUnits/Engines/Engine.lua")
dofile("GroundUnits/Engines/Turbine.lua")

LECLERCXXI = engine:new()
LECLERCXXIturbine = turbine:new()

--- engine
function LECLERCXXI:initNames()
  self.idle_name = "GndTech/LeclercEngineIdle"
  self.max_name = "GndTech/LeclercEngineMax"
  self.acc_start_name = "GndTech/L1EngineAccStart"
  self.acc_end_name = "GndTech/L1EngineAccEnd"
end

function LECLERCXXI:calculateIdlePitchEngine(EngineRPM)
  return 0.625 * EngineRPM + 0.875
end

function LECLERCXXI:calculateIdleGainEngine(EngineRPM)
  return 0.2 * EngineRPM + 1
end

function LECLERCXXI:calculateMaxPitchEngine(EngineRPM)
  return 0.625 * EngineRPM + 0.785
end

function LECLERCXXI:calculateMaxGainEngine(EngineRPM)
  return 0.75 * EngineRPM + 0.25
end
--- engine

--- turbine
function LECLERCXXIturbine:initNames()
  self.turbine_loop = "GndTech/TurbineHyperbar"
end

function LECLERCXXIturbine:calculateTurbineGain(TurbineRPM)
  return (math.exp(TurbineRPM ^ 3.0) - 1) / 4
end

function LECLERCXXIturbine:calculateTurbinePitch(TurbineRPM)
  return  0.625 * TurbineRPM + 0.375
end
LECLERCXXIturbine.turbine_accel_k = 0.2
LECLERCXXIturbine.turbine_decel_k = 0.5
LECLERCXXI.turbine = LECLERCXXIturbine
--- turbine
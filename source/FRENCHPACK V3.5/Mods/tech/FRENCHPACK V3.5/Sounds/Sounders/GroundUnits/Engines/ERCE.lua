dofile("GroundUnits/Engines/Engine.lua")

ERCE = engine:new()

--- engine
function ERCE:initNames()
	self.idle_name = "GndTech/StrykerEngineIdle"
	self.max_name = "GndTech/StrykerEngineMax"
	self.acc_start_name = "GndTech/StrykerEngineAccStart"
	self.acc_end_name = "GndTech/StrykerEngineAccEnd"
end

function ERCE:calculateIdleGainEngine(EngineRPM)
	return 0.2 * EngineRPM + 1
end

function ERCE:calculateIdlePitchEngine(EngineRPM)
	return 0.8522 * EngineRPM + 0.8296
end

function ERCE:calculateMaxGainEngine(EngineRPM)
	return 0.625 * EngineRPM + 0.375
end

function ERCE:calculateMaxPitchEngine(EngineRPM)
	return 0.455 * EngineRPM + 0.6674
end
--- engine

dofile("GroundUnits/Engines/Engine.lua")

Jug = engine:new()

--- engine
function Jug:initNames()
	self.idle_name = "GndTech/BMPEngineIdle"
	self.max_name = "GndTech/StrykerEngineMax"
	self.acc_start_name = "GndTech/StrykerEngineAccStart"
	self.acc_end_name = "GndTech/StrykerEngineAccEnd"
end

function Jug:calculateIdleGainEngine(EngineRPM)
	return 10 * EngineRPM + 50
end

function Jug:calculateIdlePitchEngine(EngineRPM)
	return 0.8522 * EngineRPM + 0.7
end

function Jug:calculateMaxGainEngine(EngineRPM)
	return 10 * EngineRPM + 50
end

function Jug:calculateMaxPitchEngine(EngineRPM)
	return 0.455 * EngineRPM + 0.7
end
--- engine

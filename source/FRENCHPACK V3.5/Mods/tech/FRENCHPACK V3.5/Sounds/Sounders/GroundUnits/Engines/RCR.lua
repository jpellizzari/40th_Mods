dofile("GroundUnits/Engines/Engine.lua")

RCR = engine:new()

--- engine
function RCR:initNames()
	self.idle_name = "GndTech/BTR80EngineIdle"
	self.max_name = "GndTech/BTR80EngineMax"
	self.acc_start_name = "GndTech/StrykerEngineAccStart"
	self.acc_end_name = "GndTech/StrykerEngineAccEnd"
end

function RCR:calculateIdleGainEngine(EngineRPM)
	return 0.825 * EngineRPM + 2
end

function RCR:calculateIdlePitchEngine(EngineRPM)
	return 0.8522 * EngineRPM + 0.7
end

function RCR:calculateMaxGainEngine(EngineRPM)
	return 0.625 * EngineRPM + 4
end

function RCR:calculateMaxPitchEngine(EngineRPM)
	return 0.0 * EngineRPM + 0
end
--- engine

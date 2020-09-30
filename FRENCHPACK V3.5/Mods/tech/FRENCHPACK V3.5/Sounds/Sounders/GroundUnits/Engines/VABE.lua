dofile("GroundUnits/Engines/Engine.lua")

VABE = engine:new() 

--- engine
function VABE:initNames()
	self.idle_name = "GndTech/TPZEngineIdle"
	self.max_name = "GndTech/TPZEngineMax"
	self.acc_start_name = "GndTech/ShilkaEngineAccStart"
	self.acc_end_name = "GndTech/ShilkaEngineAccEnd"
end

function VABE:calculateIdlePitchEngine(EngineRPM)
	return 1.2436 * EngineRPM + 0.7564
end

function VABE:calculateIdleGainEngine(EngineRPM)
	return 0.6 * EngineRPM + 1
end

function VABE:calculateMaxPitchEngine(EngineRPM)
	return 0.5 * EngineRPM + 0.7
end

function VABE:calculateMaxGainEngine(EngineRPM)
	return 0.5 * EngineRPM + 0.5
end
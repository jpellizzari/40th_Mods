--VAB
dofile("Tools.lua")

dofile("GroundUnits/Engines/VABE.lua")
dofile("GroundUnits/Engines/Environment.lua")

host = ED_AudioAPI.createHost(ED_AudioAPI.ContextWorld, "main")

VABE:init(host)
--- environment
env = environment:new()
env.max_speed = 12.0
--- environment

function env:initNames()
	self.move_common = "GndTech/TruckMove"
	self.move_start = nil
	self.move_end = nil
	self.move_hit = "Damage/VehHit"
	self.move_water = "GndTech/GndWaterMove"
end


function onUpdate(params)
    updateHost(host, params)

    VABE:update(params)
	env:update(params)
end

-- Moteur:init(host)

-- --- environment
-- env = environment:new()
-- function env:initNames()
	-- -- self.move_common = "GndTech/Move_Tiger"
	-- -- self.move_start = "GndTech/TStartMove"
	-- -- self.move_end = "GndTech/TEndMove"
	-- self.move_hit = "Damage/VehHit"
	-- self.move_water = "GndTech/GndWaterMove"
-- end
-- env.max_speed = 11.11
-- env:init(host)
-- --- environment

-- function onUpdate(params)
	-- updateHost(host, params)
	
	-- Moteur:update(params)
	-- env:update(params)
-- end
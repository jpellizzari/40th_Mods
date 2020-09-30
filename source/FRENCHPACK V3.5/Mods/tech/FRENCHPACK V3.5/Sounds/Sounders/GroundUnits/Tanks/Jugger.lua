
dofile("Tools.lua")

dofile("GroundUnits/Engines/Jug.lua")
dofile("GroundUnits/Engines/Environment.lua")

host = ED_AudioAPI.createHost(ED_AudioAPI.ContextWorld, "main")

Jug:init(host)
--- environment
env = environment:newDefault(host)
env.max_speed = 20.0
--- environment


function onUpdate(params)
    updateHost(host, params)

    Jug:update(params)
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
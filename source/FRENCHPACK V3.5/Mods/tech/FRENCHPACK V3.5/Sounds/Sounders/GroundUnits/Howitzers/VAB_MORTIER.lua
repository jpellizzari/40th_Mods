--VAB
dofile("Tools.lua")

dofile("GroundUnits/Engines/VABE.lua")
dofile("GroundUnits/Engines/Environment.lua")

host = ED_AudioAPI.createHost(ED_AudioAPI.ContextWorld, "main")

VABE:init(host)
--- environment
env = environment:newDefault(host)
env.max_speed = 20.0
--- environment


function onUpdate(params)
    updateHost(host, params)

    VABE:update(params)
	env:update(params)
end

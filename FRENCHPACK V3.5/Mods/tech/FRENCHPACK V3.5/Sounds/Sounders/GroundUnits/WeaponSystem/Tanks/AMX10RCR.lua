dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")
dofile("GroundUnits/Engines/IFV/Marder_engine.lua")
dofile("GroundUnits/Engines/Environment.lua")

host = ED_AudioAPI.createHost(ED_AudioAPI.ContextWorld, "main")

Marder_eng:init(host)

--- environment
env = environment:new()
env.max_speed = 12.0

function env:initNames()
	self.move_common = "GndTech/TankMove"
	self.move_start = "GndTech/TStartMove"
	self.move_end = "GndTech/TEndMove"
	self.move_hit = "Damage/VehHit"
	self.move_water = "GndTech/GndWaterMove"
end

env:init(host)

AMX10RCR_weapons = weapons:new()
AMX10RCR_weapons:addTurret(1, "GndTech/TurretRotation_Electric")
AMX10RCR_weapons:addLauncher(1, 1, tank_gun_105mm)
AMX10RCR_weapons:addLauncher(1, 2, tank_gun_105mm)
AMX10RCR_weapons:addLauncher(1, 3, PKT)
AMX10RCR_weapons:addLauncher(2, 1, PKT) -- 7.62 machine gun

dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")

AMX30B2_weapons = weapons:new()

AMX30B2_weapons:addTurret(1, "GndTech/TurretRotation_Electric")
	
AMX30B2_weapons:addLauncher(1, 1, tank_gun_105mm) -- AP rounds
AMX30B2_weapons:addLauncher(1, 2, tank_gun_105mm) -- HE rounds
AMX30B2_weapons:addLauncher(1, 3, automatic_gun_RH202) -- coaxial 20 mm
AMX30B2_weapons:addLauncher(2, 1, machinegun_MG3) -- 7.62 machine gun

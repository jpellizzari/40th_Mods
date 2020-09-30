dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

AA20_weapons = weapons:new()

AA20_weapons:addTurret(1, "GndTech/TurretRotation_Electric")


AA20_weapons:addLauncher(1, 1, automatic_gun_L21A1)
AA20_weapons:addLauncher(1, 2, automatic_gun_L21A1)
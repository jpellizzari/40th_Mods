dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

M120_weapons = weapons:new()

M120_weapons:addTurret(1, "GndTech/TurretRotation_Electric")


M120_weapons:addLauncher(1, 1, automatic_gun_L21A1)
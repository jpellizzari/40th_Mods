dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

VAB_MORTIER_weapons = weapons:new()

VAB_MORTIER_weapons:addTurret(1, "GndTech/TurretRotation_Electric")


VAB_MORTIER_weapons:addLauncher(1, 1, automatic_gun_L21A1)
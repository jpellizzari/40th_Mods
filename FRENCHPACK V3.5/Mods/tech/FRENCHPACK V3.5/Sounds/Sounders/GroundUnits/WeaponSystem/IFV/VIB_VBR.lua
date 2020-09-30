dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

VIB_VBR_weapons = weapons:new()

VIB_VBR_weapons:addTurret(1, "GndTech/TurretRotation_Electric")


VIB_VBR_weapons:addLauncher(1, 1, automatic_gun_L21A1)
VIB_VBR_weapons:addLauncher(1, 2, automatic_gun_L21A1)
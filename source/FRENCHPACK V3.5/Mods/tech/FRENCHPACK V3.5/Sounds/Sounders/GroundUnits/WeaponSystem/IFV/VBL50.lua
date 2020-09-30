dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

VBL50_weapons = weapons:new()
VBL50_weapons:addTurret(1)
VBL50_weapons:addLauncher(1, 1, machinegun_12_7_utes)


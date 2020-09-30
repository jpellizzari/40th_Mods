dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

VAB_50_weapons = weapons:new()
VAB_50_weapons:addTurret(1)
VAB_50_weapons:addLauncher(1, 1, machinegun_12_7_M2)


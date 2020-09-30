dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

VBLANF1_weapons = weapons:new()
VBLANF1_weapons:addTurret(1)
VBLANF1_weapons:addLauncher(1, 1, PKT)


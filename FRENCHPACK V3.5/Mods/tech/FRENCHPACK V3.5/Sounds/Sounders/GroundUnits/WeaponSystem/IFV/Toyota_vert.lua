dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

Toyota_vert_weapons = weapons:new()
Toyota_vert_weapons:addTurret(1)
Toyota_vert_weapons:addLauncher(1, 1, machinegun_12_7_M2)


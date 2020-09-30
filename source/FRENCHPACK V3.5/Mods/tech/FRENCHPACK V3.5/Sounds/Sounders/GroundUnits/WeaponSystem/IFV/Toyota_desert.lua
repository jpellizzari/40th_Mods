dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

Toyota_desert_weapons = weapons:new()
Toyota_desert_weapons:addTurret(1)
Toyota_desert-weapons:addLauncher(1, 1, machinegun_12_7_M2)


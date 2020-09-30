dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")

Toyota_bleu_weapons = weapons:new()
Toyota_bleu_weapons:addTurret(1)
Toyota_bleu_weapons:addLauncher(1, 1, machinegun_12_7_M2)


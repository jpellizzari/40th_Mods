dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")

FDDM_weapons = weapons:new()

FDDM_weapons:addTurret(1, "empty")

FDDM_weapons:addTurret(2, "GndTech/SphericalHingeRotation")
FDDM_weapons:addLauncher(2, 1, machinegun_12_7_utes)

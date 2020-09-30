------------------------------------------------------------------------------------
-- Chassis declaration --
------------------------------------------------------------------------------------
dofile('Scripts/Database/Weapons/warheads.lua')
-- VAB Chassis
GT_t.CH_t.VAB = {
	life = 4.0,
	mass = 13000,
	length = 6.05,
	width = 2.49,
	max_road_velocity = 25,
	max_slope = 0.6,
	engine_power = 220,
	gear_count = 6,
	canSwim = true,
	canWade = true,
	max_vert_obstacle = 0.56,
	max_acceleration = 1.925926,
	min_turn_radius = 18,
	X_gear_1 = 1.925,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.361,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.46,
	armour_thickness = 0.010,
};

-- VIB Chassis
GT_t.CH_t.VIB = {
	life = 4.0,
	mass = 13000,
	length = 6.05,
	width = 2.49,
	max_road_velocity = 30.55,
	max_slope = 0.6,
	engine_power = 220,
	gear_count = 6,
	canSwim = false,
	canWade = true,
	max_vert_obstacle = 0.56,
	max_acceleration = 1.925926,
	min_turn_radius = 18,
	X_gear_1 = 1.925,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.361,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.46,
	armour_thickness = 0.010,
};

-- VBL Chassis
GT_t.CH_t.VBL = {
	life = 2.0,
	mass = 3800,
	length = 3.92,
	width = 2.02,
	max_road_velocity = 25,
	max_slope = 0.6,
	engine_power = 95,
	gear_count = 6,
	canSwim = true,
	canWade = true,
	max_vert_obstacle = 0.56,
	max_acceleration = 2.925926,
	min_turn_radius = 7.62,
	X_gear_1 = 1.925,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.361,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.46,
	armour_thickness = 0.010,
};


-- ERC Chassis
GT_t.CH_t.ERC = {
	life = 4.0,
	mass = 9000,
	length = 5.02,
	width = 2.49,
	max_road_velocity = 25,	
	
	max_slope = 0.6,
	engine_power = 170,
	gear_count = 6,
	canSwim = true,
	canWade = true,
	max_vert_obstacle = 1.0,
	max_acceleration = 2.3,
	min_turn_radius = 10,
	X_gear_1 = 1.925,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.361,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.46,
	armour_thickness = 0.010,
};

-- AMX10RCR Chassis
GT_t.CH_t.AMX10RCR = {
	life = 7.0,
	mass = 17000,
	length = 6.4,
	width = 2.8,
	max_road_velocity = 25,			
	fordingDepth = 1.8,
	max_slope = 0.7,
	engine_power = 560,
	gear_count = 6,
	canSwim = false,
	canWade = true,
	max_vert_obstacle = 1.15,
	max_acceleration = 2.5,
	min_turn_radius = 1,
	X_gear_1 = 1.673,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.673,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.TRACKS,
	r_max = 0.35,
	armour_thickness = 0.005,
};

-- AMX10RCR SEPAR Chassis

GT_t.CH_t.SEPAR = {
	life = 10.0,
	mass = 21000,
	length = 6.4,
	width = 2.8,
	max_road_velocity = 22,
	max_slope = 0.7,
	engine_power = 280,
	gear_count = 6,
	canSwim = false,
	canWade = true,
	max_vert_obstacle = 1.15,
	max_acceleration = 2.2,
	min_turn_radius = 1,
	X_gear_1 = 1.673,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.673,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.TRACKS,
	r_max = 0.35,
	armour_thickness = 0.005,
};

-- STATIC

GT_t.CH_t.STAT = {
	life = 1,
	mass = 5000,
	length = 5,
	width = 5,
	max_road_velocity = 0,
	max_slope = 0,
	engine_power = 0,
	max_vert_obstacle = 0,
	max_acceleration = 0,
	min_turn_radius = 0,
	X_gear_1 = 0,
	Y_gear_1 = 0,
	Z_gear_1 = 0,
	X_gear_2 = 0,
	Y_gear_2 = 0,
	Z_gear_2 = 0,
	gear_type = GT_t.GEAR_TYPES.STATIONARY,
	r_max = 0,
	r_track = 0,
	armour_thickness = 0.001,
}

--TRM2000 Chassis

GT_t.CH_t.TRM2000 = {
	life = 1.0,
	mass = 7000,
	length = 5.6,
	width = 2.4,
	max_road_velocity = 25,
	max_slope = 0.4,
	engine_power = 115,
	gear_count = 6,
	canSwim = false,
	canWade = true,
	max_vert_obstacle = 0.3,
	max_acceleration = 1.5,
	min_turn_radius = 15,
	X_gear_1 = 1.925,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.361,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.46,
	armour_thickness = 0.003,
};



-- AMX-30 Chassis
GT_t.CH_t.AMX30 = {
	life = 20,
	mass = 37000,
	length = 9.48,
	width = 3.1,
	max_road_velocity = 18.0555,
	max_slope = 0.60,
	canSwim = false,
	canWade = true,
	engine_power = 172.8,
	gear_count = 5,
	max_vert_obstacle = 0.90,
	max_acceleration = 3.0,
	min_turn_radius = 2.8,
--	X_gear_1 = 1.938,
	X_gear_1 = 5,
	Y_gear_1 = 0,
	Z_gear_1 = 1.436,
--	X_gear_2 = -2.4,
	X_gear_2 = -0.2,
	Y_gear_2 = 0,
	Z_gear_2 = 1.436,
	gear_type = GT_t.GEAR_TYPES.TRACKS,
	r_max = 0.35,
	r_track = 0.06,
	armour_thickness = 0.05,
	
}

-- AMX-30 Armour scheme
AMX30_hull_elevation = { {-90, 30, 1 }, { 30, 90, 0.6 }, } -- From -90° to 30°, coeff 1 ; from 30° to 90°, coeff .6
AMX30_hull_azimuth = { {0, 30, 2.633 }, { 30, 150, 1.967 }, { 150,180, 1 }, }
AMX30_turret_elevation = { {-90,18, 1 }, { 18,90, 0.5 }, }
AMX30_turret_azimuth = { {0,30,2.7}, {30,150,1.4}, {150,180,1}, }

AMX30_armour_scheme = {
									hull_elevation = AMX30_hull_elevation,
									hull_azimuth = AMX30_hull_azimuth,
									turret_elevation = AMX30_turret_elevation,
									turret_azimuth = AMX30_turret_azimuth
								};
-- Final armour value for each side is elevation_coeff * azimuth_coeff * chassis.armour_thickness

-- TRACMA Chassis
GT_t.CH_t.TRACMA = {
	life = 1,
	mass = 2370,
	length = 2.705,
	width = 1.200,
	max_road_velocity = 6.9444,
	max_slope = 0.40,
	canSwim = false,
	canWade = true,
	engine_power = 172.8,
	max_vert_obstacle = 0.6,
	max_acceleration = 3.0,
	min_turn_radius = 5.0,
	X_gear_1 = 2.411,
	Y_gear_1 = 0,
	Z_gear_1 = 1.04,
	X_gear_2 = -2.549,
	Y_gear_2 = 0,
	Z_gear_2 = 1.04,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 1.0,
	armour_thickness = 0.001,
}

------------------------------------------------------------------------------------
-- Weapons declaration --
------------------------------------------------------------------------------------

local ATGMMissiles_VelocityAdaptationCoeff = 340/295*340/295; -- woMissile.cpp: l. 906,907.

-- HOT-2 Missile
local HOT2 = {
  category = CAT_MISSILES,
  name = "HOT2",
  user_name = "HOT2",
  wsTypeOfWeapon = {
    wsType_Weapon,
    wsType_Missile,
    wsType_AS_Missile,
    WSTYPE_PLACEHOLDER
  },
  Escort = 1,
  Head_Type = 7,
  sigma = {
    0,
    0,
    0
  },
        M = 40.0,
        H_max = 2000.0,
        H_min = -1,
        Diam = 100.0,
        Cx_pil = 6,
        D_max = 4000.0,
        D_min = 75.0,
        Head_Form = 1,
        Life_Time = 16.5,
        Nr_max = 1.2,
        v_min = 105.0,
        v_mid = 250.0,
        Mach_max = 0.75*ATGMMissiles_VelocityAdaptationCoeff,
        t_b = 0.0,
        t_acc = 0.1,
        t_marsh = 14.5,
        Range_max = 4000.0,
        H_min_t = 0.0,
        Fi_start = 3.14152,
        Fi_rak = 3.14152,
        Fi_excort = 1.0,
        Fi_search = 99.9,
        OmViz_max = 99.9,
       warhead = {
		mass = 6.5,
		expl_mass = 2.6,
		other_factors = {
      1,
      1,
      1
    },
    obj_factors = {4, 4},
    concrete_factors = {
      1,
      1,
      1
    },
    cumulative_factor = 3,
    concrete_obj_factor = 0.5,
    cumulative_thickness = 0.9,
    piercing_mass = 1.3
  },
       exhaust = {
    0.3,
    0.3,
    0.3,
    0.05
  },
  X_back = -0.63,
  Y_back = 0,
  Z_back = 0,
  Reflection = 0.015,
  KillDistance = 0,
		shape_table_data = {
    {
      name = "HOT2",
      file = "HOT3",
      life = 1,
      fire = {0, 1},
      username = "HOT2",
      index = WSTYPE_PLACEHOLDER
    }
  }
}
declare_weapon(HOT2)

--MMP

local MMP = {
  category = CAT_MISSILES,
  name = "MMP",
  user_name = "MMP",
  wsTypeOfWeapon = {
    wsType_Weapon,
    wsType_Missile,
    wsType_AS_Missile,
    WSTYPE_PLACEHOLDER
  },
  Escort = 3,
  Head_Type = 4,
  sigma = {
    0,
    0,
    0
  },
        M = 40.0,
        H_max = 2000.0,
        H_min = -1,
        Diam = 100.0,
        Cx_pil = 2,
        D_max = 5000.0,
        D_min = 250.0,
        Head_Form = 1,
        Life_Time = 30,
        Nr_max = 5,
        v_min = 140.0,
        v_mid = 160.0,
        Mach_max = 0.70*ATGMMissiles_VelocityAdaptationCoeff,
        t_b = 0.0,
        t_acc = 10,
        t_marsh = 19,
        Range_max = 5000.0,
        H_min_t = 0.0,
		Fi_start 		= 0.5, --0.5, -- si 0 -> missile balistic -- angle de suivi et de vision au démarrage
		Fi_rak 			= 3.14152, -- limite angle cible
		Fi_excort 		= 0.5,
        Fi_search = 20,
        OmViz_max = 20,
       warhead = {
		mass = 13,
		expl_mass = 4,
		other_factors = {
      1,
      1,
      1
    },
    obj_factors = {4, 4},
    concrete_factors = {
      1,
      1,
      1
    },
    cumulative_factor = 4,
    concrete_obj_factor = 3,
    cumulative_thickness = 3,
    piercing_mass = 2.5
  },
       exhaust = {
    0.3,
    0.3,
    0.3,
    0.05
  },
  X_back = -0.63,
  Y_back = 0,
  Z_back = 0,
  Reflection = 0.015,
  KillDistance = 0,
		ModelData = {   58 ,  -- model params count
						1.1 ,   -- characteristic square (характеристическая площадь)
						
						-- параметры зависимости Сx
						0.003 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
						0.003 , -- Cx_k1 высота пика волнового кризиса
						0.003 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
						0.8, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
						2.5 , -- Cx_k4 крутизна спада за волновым кризисом 
						1.2 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))
						
						-- параметры зависимости Cy
						0.5 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
						0.2	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
						1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом  
						
						0.2 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
						0.0, --угловая скорость создаваймая моментом газовых рулей
						
					-- Engine data. Time, fuel flow, thrust.	
					--	t_statr		t_b		t_accel		t_march		t_inertial		t_break		t_end			-- Stage
						-1.0,		-1.0,	0.5,  		2,		0.0,			0.0,		1.0e9,         -- time of stage, sec
						 0.0,		0.0,	0.5,		0.1,		0.0,			0.0,		0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
						 0.0,		0.0,	6000.0,		3500.0,		0.0,			0.0,		0.0,           -- thrust, newtons
					
						 1.0e9, -- таймер самоликвидации, сек
						 25.0, -- время работы энергосистемы, сек
						 0, -- абсолютная высота самоликвидации, м
						 0, -- время задержки включения управления (маневр отлета, безопасности), сек
						 1.0e9, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
						 1.0e9, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м 
						 0.0,  -- синус угла возвышения траектории набора горки
						 30.0, -- продольное ускорения взведения взрывателя
						 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
						 1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
						 1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
						 2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						 0.0,
						  -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)
						 1.0,
						 1.0,
						 1.0,
						 0.2, 
						 0.6,
						 1.4,
						-3.0,
						0.5,
	}, 
		shape_table_data = {
    {
      name = "MMP",
      file = "MMP",
      life = 1,
      fire = {0, 1},
      username = "MMP",
      index = WSTYPE_PLACEHOLDER
    }
  }
}
declare_weapon(MMP)


--- MISTRAL

local Mistral_Sol = {
    category        = CAT_MISSILES,
    name            = "Mistral_Sol",
    user_name       = "Mistral_Sol",
    model           = 'MBDA_Mistral',
    mass            = 19.7,
	
    wsTypeOfWeapon  = {4,4,34,WSTYPE_PLACEHOLDER},
  Escort = 0,
  Head_Type = 1,
  sigma = {
    1,
    1,
    1
  },
  M = 19.7,
  H_max = 18000,
  H_min = -1,
  Diam = 90,
  Cx_pil = 1.29,
  D_max = 7000,
  D_min = 500,
  Head_Form = 0,
  Life_Time = 17,
  Nr_max = 30,
  v_min = 669.8,
  v_mid = 904.4,
  Mach_max = 2.66,
  t_b = 0,
  t_acc = 5,
  t_marsh = 6.8,
  Range_max = 14000,
  H_min_t = 0,
  Fi_start = 1,
  Fi_rak = 3.14152,
  Fi_excort = 1,
  Fi_search = 99.9,
  OmViz_max = 99.9,
  warhead = {
    mass = 3,
    expl_mass = 9,
    other_factors = {
      1,
      1,
      1
    },
    obj_factors = {1, 1},
    concrete_factors = {
      1,
      1,
      1
    },
    cumulative_factor = 0,
    concrete_obj_factor = 0,
    cumulative_thickness = 0,
    piercing_mass = 0.6,
    caliber = 90
  },
  Damage = 25,
  exhaust = {
    0.7,
    0.7,
    0.7,
    0.2
  },
  X_back = -1,
  Y_back = 0,
  Z_back = 0,
  Reflection = 0.0182,
  KillDistance = 7,
  SeekerSensivityDistance = 60000,
  ccm_k0 = 0.05,
  SeekerCooled = true,
  shape_table_data = {
    {
      name = "Mistral_Sol",
      file = "MBDA_Mistral",
      life = 1,
      fire = {0, 1},
      username = "Mistral_Sol",
      index = WSTYPE_PLACEHOLDER
    }
  },
  ModelData = {
    58,
    0.2,
    0.004,
    0.008,
    0.004,
    0.012,
    0.004,
    1.2,
    1.3,
    1.2,
    1.2,
    0.4,
    0,
    -1,
    -1,
    5,
    6.8,
    0,
    0,
    1000000000,
    0,
    0,
    1.163,
    0,
    0,
    0,
    0,
    0,
    0,
    3100,
    0,
    0,
    0,
    0,
    11.8,
    11.8,
    0,
    0.1,
    1000000000,
    1000000000,
    0,
    30,
    0,
    1.19,
    1,
    2,
    0,
    0,
    0,
    0,
    0,
    11000,
    7000,
    7000,
    0.2,
    1,
    1.4,
    -3,
    0.5
  }
}
declare_weapon(Mistral_Sol)



--T_20 munition
local T_20_HE = {
	category = CAT_SHELLS,
	user_name = _("T_20_HE"),
	model_name    = "tracer_bullet_yellow",
	v0    = 1060.0,
	Dv0   = 0.00508,
	Da0     = 0.0005,
	Da1     = 0.0,
	mass      = 0.110,
	explosive     = 0.210,
	life_time     = 7,
	caliber     = 20.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.0,0.78,0.60,0.15,1.80},
	k1        = 9.4e-09,
	tracer_off    = 4,
	scale_tracer  = 1,
	
	name = "T_20_HE",

	cartridge = 0,
	};
declare_weapon(T_20_HE);

local NT_762 = {
	category = CAT_SHELLS,
	user_name = _("NT_762"),
	model_name    = "",
	 v0    = 838,
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.00933,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 7.62,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08, -- ???
  tracer_on    = 0.00,
  tracer_off    = 0,
  scale_tracer  = 0,
  scale_smoke	= 0.0,
	
	name = "NT_762",

	cartridge = 0,
	};
declare_weapon(NT_762);

local NT_50 = {
	category = CAT_SHELLS,
	user_name = _("NT_50"),
	model_name    = "",
 v0    = 930.0,
  Dv0   = 0.0060,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.046,
  round_mass = 0.145,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.80},
  k1        = 1.5e-08,
  tracer_off    = 4,
  scale_tracer  = 1,
	
	name = "NT_50",

	cartridge = 0,
	};
declare_weapon(NT_50);


local T_20_AP = {
	category = CAT_SHELLS,
	user_name = _("T_20_AP"),
	model_name    = "tracer_bullet_white",
	v0    = 1300.0,
	Dv0   = 0.00508,
	Da0     = 0.0005,
	Da1     = 0.0,
	mass      = 0.110,
	explosive     = 0.0000,
	life_time     = 7,
	caliber     = 20.0,
	 subcalibre     = true,
	AP_cap_caliber = 10.0, 
	piercing_mass = 0.108,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.0,0.78,0.60,0.15,1.80},
	k1        = 9.4e-09,
	tracer_off    = 4,
	scale_tracer  = 1,
	
	name = "T_20_AP",

	cartridge = 0,
	};
declare_weapon(T_20_AP);




--ERC-90 AP

local OFL90 = {
	category = CAT_SHELLS,
	user_name = _("OFL90"),
	model_name    = "kinetic_type1",
	v0    = 1275.0,
	Dv0   = 0.00508,
	Da0     = 0.0005,
	Da1     = 0.0,
	mass      = 9.9,
	explosive     = 0.0000,
	life_time     = 7,
	caliber     = 90.0,
	 subcalibre     = true,
	AP_cap_caliber = 30.0, 
	piercing_mass = 3.33,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.0,0.78,0.60,0.15,1.80},
	k1        = 9.4e-09,
	tracer_off    = 4,
	scale_tracer  = 1,
	
	name = "OFL90",

	cartridge = 0,
	};
declare_weapon(OFL90);

-- ERC-90 HE
local OE90 = {
	category = CAT_SHELLS,
	user_name = _("OE90"),
	model_name    = "pula",
	v0    = 750.0,
	Dv0   = 0.00508,
	Da0     = 0.0005,
	Da1     = 0.0,
	mass      = 5.4,
	explosive     = 3.0,
	life_time     = 7,
	caliber     = 90.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.0,0.78,0.60,0.15,1.80},
	k1        = 9.4e-09,
	tracer_off    = 4,
	scale_tracer  = 1,
	
	name = "OE90",

	cartridge = 0,
	};
declare_weapon(OE90);

-- APS 10RCR
local OFL_105F3 = {
	category = CAT_SHELLS,
	user_name = _("OFL_105F3"),
	model_name    = "kinetic_type1",
	v0    = 1400.0,
	Dv0   = 0.0017,
	Da0     = 0.0003,
	Da1     = 0.0,
	mass      = 3.80,
	explosive     = 0,
	life_time     = 100,
	caliber     	 = 105.0,
	AP_cap_caliber = 27, --масса и диаметр "стрелы"
	subcalibre     = true,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.0,0.59,0.89,0.172,1.69},
	k1        = 3.0e-10,
	tracer_off    = 100,
	scale_tracer  = 0,
	rotation_freq = 0,
	
	name = "OFL_105F3",

	cartridge = 0,
	};
declare_weapon(OFL_105F3);

-- OE 10RCR
local OE_105 = {
	category = CAT_SHELLS,
	user_name = _("OE_105"),
	model_name    = "pula",
	v0    = 800.0,
	Dv0   = 0.0027,
	Da0     = 0.00036,
	Da1     = 0.0009,
	mass      = 12.0,
	explosive     = 7.2,
	life_time     = 100,
	caliber     	 = 105.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.3,0.60,0.75,0.16,2.20},
	k1        = 9.0e-10,
	tracer_off    = 100,
	scale_tracer  = 0,
	
	name = "OE_105",

	cartridge = 0,
	};
declare_weapon(OE_105);


-- CN-105 F1 Obus Flèche (AP)
local OFL_105 = {
	category = CAT_SHELLS,
	user_name = _("OFL 105"),
	model_name    = "kinetic_type1",
	v0    = 1500.0,
	Dv0   = 0.0017,
	Da0     = 0.0003,
	Da1     = 0.0,
	mass      = 3.80,
	explosive     = 0,
	life_time     = 100,
	caliber     	 = 105.0,
	AP_cap_caliber = 27, --масса и диаметр "стрелы"
	subcalibre     = true,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.0,0.59,0.89,0.172,1.69},
	k1        = 3.0e-10,
	tracer_off    = 100,
	scale_tracer  = 0,
	rotation_freq = 0,
	
	name = "OFL 105",

	cartridge = 0,
	};
declare_weapon(OFL_105);


-- CN-105 F1 Obus Charge Creuse (HE)
local OCC_105 = {
	category = CAT_SHELLS,
	user_name = _("OCC 105"),
	model_name    = "pula",
	v0    = 1000.0,
	Dv0   = 0.0027,
	Da0     = 0.00036,
	Da1     = 0.0009,
	mass      = 12.0,
	explosive     = 10.95,
	life_time     = 100,
	caliber     	 = 105.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.3,0.60,0.75,0.16,2.20},
	k1        = 9.0e-10,
	tracer_off    = 100,
	scale_tracer  = 0,
	
	name = "OCC 105",

	cartridge = 0,
	};
declare_weapon(OCC_105);


--------------------------------- Launchers

--HOT-2 VAB Launcher

GT_t.LN_t._HOT2 = {} 
GT_t.LN_t._HOT2.type = 33
GT_t.LN_t._HOT2.xc = 0.512
GT_t.LN_t._HOT2.distanceMin = 100
GT_t.LN_t._HOT2.distanceMax = 4000
GT_t.LN_t._HOT2.max_trg_alt = 3000
GT_t.LN_t._HOT2.reactionTime = 1
GT_t.LN_t._HOT2.launch_delay = 5
GT_t.LN_t._HOT2.radialDisperse = 1.4;
GT_t.LN_t._HOT2.dispertionReductionFactor = 0.993;
GT_t.LN_t._HOT2.missileControlInterval = 0.18;
GT_t.LN_t._HOT2.maxShootingSpeed = 10
GT_t.LN_t._HOT2.inclination_correction_upper_limit = math.rad(45);
GT_t.LN_t._HOT2.inclination_correction_bias = math.rad(1);
GT_t.LN_t._HOT2.show_external_missile = false
GT_t.LN_t._HOT2.sensor = {}
set_recursive_metatable(GT_t.LN_t._HOT2.sensor, GT_t.WSN_t[0])
GT_t.LN_t._HOT2.PL = {}
GT_t.LN_t._HOT2.PL[1] = {}
GT_t.LN_t._HOT2.PL[1].ammo_capacity = 12
GT_t.LN_t._HOT2.PL[1].portionAmmoCapacity = 8;
GT_t.LN_t._HOT2.PL[1].reload_time = 8 * 15;
GT_t.LN_t._HOT2.PL[1].automaticLoader = false;
GT_t.LN_t._HOT2.PL[1].shot_delay = 600
GT_t.LN_t._HOT2.PL[1].type_ammunition=HOT2.wsTypeOfWeapon;
GT_t.LN_t._HOT2.PL[1].name_ammunition=_("HOT2")
--GT_t.LN_t._HOT2.PL[1].type_ammunition={4,4,11,127};
--GT_t.LN_t._HOT2.PL[1].name_ammunition=_("9M14")

--MMP CRAB LAUNCHER

GT_t.LN_t._MMP = {} 
GT_t.LN_t._MMP.type = 33
GT_t.LN_t._MMP.xc = 0.512
GT_t.LN_t._MMP.distanceMin = 100
GT_t.LN_t._MMP.distanceMax = 5000
GT_t.LN_t._MMP.max_trg_alt = 3000
GT_t.LN_t._MMP.reactionTime = 1
GT_t.LN_t._MMP.launch_delay = 5
GT_t.LN_t._MMP.radialDisperse = 0.2;
GT_t.LN_t._MMP.dispertionReductionFactor = 0.993;
GT_t.LN_t._MMP.missileControlInterval = 0.1;
GT_t.LN_t._MMP.maxShootingSpeed = 10
GT_t.LN_t._MMP.inclination_correction_upper_limit = math.rad(45);
GT_t.LN_t._MMP.inclination_correction_bias = math.rad(1);
GT_t.LN_t._MMP.show_external_missile = false
GT_t.LN_t._MMP.sensor = {}
set_recursive_metatable(GT_t.LN_t._MMP.sensor, GT_t.WSN_t[0])
GT_t.LN_t._MMP.PL = {}
GT_t.LN_t._MMP.PL[1] = {}
GT_t.LN_t._MMP.PL[1].ammo_capacity = 2
GT_t.LN_t._MMP.PL[1].portionAmmoCapacity = 2;
GT_t.LN_t._MMP.PL[1].reload_time = 60;
GT_t.LN_t._MMP.PL[1].automaticLoader = false;
GT_t.LN_t._MMP.PL[1].shot_delay = 5
GT_t.LN_t._MMP.PL[1].type_ammunition=MMP.wsTypeOfWeapon;
GT_t.LN_t._MMP.PL[1].name_ammunition=_("MMP")
--GT_t.LN_t._HOT2.PL[1].type_ammunition={4,4,11,127};
--GT_t.LN_t._HOT2.PL[1].name_ammunition=_("9M14")




--ERC-90 CANON

GT_t.LN_t._90F4 = {} 
GT_t.LN_t._90F4.type = 2
GT_t.LN_t._90F4.xc = 0.585
GT_t.LN_t._90F4.distanceMin = 10
GT_t.LN_t._90F4.distanceMax = 4000
GT_t.LN_t._90F4.max_trg_alt = 3000
GT_t.LN_t._90F4.reactionTime = 10
GT_t.LN_t._90F4.launch_delay = 9
GT_t.LN_t._90F4.radialDisperse = 2.7;
GT_t.LN_t._90F4.dispertionReductionFactor = 0.988;
GT_t.LN_t._90F4.maxShootingSpeed = 5
GT_t.LN_t._90F4.beamWidth = math.rad(1);
GT_t.LN_t._90F4.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._90F4.inclination_correction_bias = math.rad(0.4);
GT_t.LN_t._90F4.sensor = {}
set_recursive_metatable(GT_t.LN_t._90F4.sensor, GT_t.WSN_t[4])
GT_t.LN_t._90F4.PL = {}
GT_t.LN_t._90F4.PL[1] = {}
GT_t.LN_t._90F4.PL[1].shot_delay = 9
GT_t.LN_t._90F4.PL[1].ammo_capacity = 12
--GT_t.LN_t._90F4.PL[1].portionAmmoCapacity = 8;
GT_t.LN_t._90F4.PL[1].reload_time = 600;
GT_t.LN_t._90F4.PL[1].type_ammunition=OFL90.wsTypeOfWeapon
GT_t.LN_t._90F4.PL[1].shell_name = {"OFL90"};
GT_t.LN_t._90F4.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._90F4.BR = { {pos = {1.2, 0, 0} } }
--GT_t.LN_t._90F4.PL[1].feedSlot = 1;


GT_t.LN_t._90F4H = {} 
GT_t.LN_t._90F4H.type = 2
GT_t.LN_t._90F4H.xc = 0.585
GT_t.LN_t._90F4H.distanceMin = 10
GT_t.LN_t._90F4H.distanceMax = 4000
GT_t.LN_t._90F4H.max_trg_alt = 3000
GT_t.LN_t._90F4H.reactionTime = 10
GT_t.LN_t._90F4H.launch_delay = 9
GT_t.LN_t._90F4H.radialDisperse = 2.7;
GT_t.LN_t._90F4H.dispertionReductionFactor = 0.988;
GT_t.LN_t._90F4H.maxShootingSpeed = 5
GT_t.LN_t._90F4H.beamWidth = math.rad(1);
GT_t.LN_t._90F4H.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._90F4H.inclination_correction_bias = math.rad(0.4);
GT_t.LN_t._90F4H.sensor = {}
set_recursive_metatable(GT_t.LN_t._90F4H.sensor, GT_t.WSN_t[4])
GT_t.LN_t._90F4H.PL = {}
GT_t.LN_t._90F4H.PL[1] = {}
GT_t.LN_t._90F4H.PL[1].shot_delay = 9
GT_t.LN_t._90F4H.PL[1].ammo_capacity = 8
--GT_t.LN_t._90F4H.PL[1].portionAmmoCapacity = 12;
GT_t.LN_t._90F4H.PL[1].reload_time = 600;
GT_t.LN_t._90F4H.PL[1].type_ammunition=OFL90.wsTypeOfWeapon
GT_t.LN_t._90F4H.PL[1].shell_name = {"OE90"};
GT_t.LN_t._90F4H.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._90F4H.BR = { {pos = {1.2, 0, 0} } }
--GT_t.LN_t._90F4H.PL[1].feedSlot = 1;



--10RCR

GT_t.LN_t._105RCR = {} 
GT_t.LN_t._105RCR.type = 2
GT_t.LN_t._105RCR.xc = 0.585
GT_t.LN_t._105RCR.distanceMin = 10
GT_t.LN_t._105RCR.distanceMax = 4000
GT_t.LN_t._105RCR.max_trg_alt = 3000
GT_t.LN_t._105RCR.reactionTime = 5
GT_t.LN_t._105RCR.launch_delay = 6
--GT_t.LN_t._105RCR.radialDisperse = 2.7;
--GT_t.LN_t._105RCR.dispertionReductionFactor = 0.988;
GT_t.LN_t._105RCR.maxShootingSpeed = 5
GT_t.LN_t._105RCR.beamWidth = math.rad(1);
GT_t.LN_t._105RCR.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._105RCR.inclination_correction_bias = math.rad(0.4);
GT_t.LN_t._105RCR.sensor = {}
set_recursive_metatable(GT_t.LN_t._105RCR.sensor, GT_t.WSN_t[7])
GT_t.LN_t._105RCR.PL = {}
GT_t.LN_t._105RCR.PL[1] = {}
GT_t.LN_t._105RCR.PL[1].shot_delay = 6
GT_t.LN_t._105RCR.PL[1].ammo_capacity = 28
--GT_t.LN_t._105RCR.PL[1].portionAmmoCapacity = 28;
GT_t.LN_t._105RCR.PL[1].reload_time = 20*28;
GT_t.LN_t._105RCR.PL[1].type_ammunition = OFL_105F3.wsTypeOfWeapon
GT_t.LN_t._105RCR.PL[1].shell_name = {"OFL_105F3"};
GT_t.LN_t._105RCR.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._105RCR.BR = { {pos = {1.2, 0, 0} } }



GT_t.LN_t._105RCRH = {} 
GT_t.LN_t._105RCRH.type = 2
GT_t.LN_t._105RCRH.xc = 0.585
GT_t.LN_t._105RCRH.distanceMin = 10
GT_t.LN_t._105RCRH.distanceMax = 4000
GT_t.LN_t._105RCRH.max_trg_alt = 3000
GT_t.LN_t._105RCRH.reactionTime = 5
GT_t.LN_t._105RCRH.launch_delay = 6
--GT_t.LN_t._105RCRH.radialDisperse = 2.7;
--GT_t.LN_t._105RCRH.dispertionReductionFactor = 0.988;
GT_t.LN_t._105RCRH.maxShootingSpeed = 5
GT_t.LN_t._105RCRH.beamWidth = math.rad(1);
GT_t.LN_t._105RCRH.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._105RCRH.inclination_correction_bias = math.rad(0.4);
GT_t.LN_t._105RCRH.sensor = {}
set_recursive_metatable(GT_t.LN_t._105RCRH.sensor, GT_t.WSN_t[7])
GT_t.LN_t._105RCRH.PL = {}
GT_t.LN_t._105RCRH.PL[1] = {}
GT_t.LN_t._105RCRH.PL[1].shot_delay = 6
GT_t.LN_t._105RCRH.PL[1].ammo_capacity = 12
--GT_t.LN_t._105RCRH.PL[1].portionAmmoCapacity = 12;
GT_t.LN_t._105RCRH.PL[1].reload_time = 20*12;
GT_t.LN_t._105RCRH.PL[1].type_ammunition=OE_105.wsTypeOfWeapon
GT_t.LN_t._105RCRH.PL[1].shell_name = {"OE_105"};
GT_t.LN_t._105RCRH.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._105RCRH.BR = { {pos = {1.2, 0, 0} } }





--- MISC MG

Def_mg_LN = {
    type = 9, --machinegun
    distanceMin = 0,
    reactionTime = 0.5,
    reflection_limit = 0.22,
    connectorFire = true,
    sensor = {},
    PL = {},
}
set_recursive_metatable(Def_mg_LN.sensor, GT_t.WSN_t[1]);

-- AAN F1 7.62 machine gun

GT_t.LN_t.AANF1 = {name = "7_62_AANF1", display_name = _("7_62_AANF1")}
GT_t.LN_t.AANF1.type=9;
set_recursive_metatable(GT_t.LN_t.AANF1, Def_mg_LN);
GT_t.LN_t.AANF1.distanceMax = 1000
GT_t.LN_t.AANF1.max_trg_alt = 500
set_recursive_metatable(GT_t.LN_t.AANF1.sensor, GT_t.WSN_t[7])
GT_t.LN_t.AANF1.PL[1] = {};
GT_t.LN_t.AANF1.PL[1].ammo_capacity = 200; --2200 total
GT_t.LN_t.AANF1.PL[1].portionAmmoCapacity = 200
GT_t.LN_t.AANF1.PL[1].shell_name = {"7_62x51", "NT_762", "NT_762", "NT_762", "NT_762"};
GT_t.LN_t.AANF1.PL[1].shot_delay = 60/900; -- 520 rpm
GT_t.LN_t.AANF1.PL[1].switch_on_delay = 15;
GT_t.LN_t.AANF1.PL[1].reload_time = 15;
for i = 2, 11 do
	GT_t.LN_t.AANF1.PL[i] = {};
	set_recursive_metatable(GT_t.LN_t.AANF1.PL[i], GT_t.LN_t.AANF1.PL[1]);
end;
GT_t.LN_t.AANF1.BR = { {pos = {1.2, 0, 0} } }



Def_mg_LN = {
    type = 3, --AA
    distanceMin = 0,
    reactionTime = 0.5,
    reflection_limit = 0.22,
    connectorFire = true,
    sensor = {},
    PL = {},
}
set_recursive_metatable(Def_mg_LN.sensor, GT_t.WSN_t[0]);

GT_t.LN_t.LECLERC50 = {name = "LECLERC50", display_name = _("LECLERC50")}
GT_t.LN_t.LECLERC50.type=3;
set_recursive_metatable(GT_t.LN_t.LECLERC50, Def_mg_LN);
GT_t.LN_t.LECLERC50.distanceMax = 1200
GT_t.LN_t.LECLERC50.max_trg_alt = 1000
set_recursive_metatable(GT_t.LN_t.LECLERC50.sensor, GT_t.WSN_t[4])
GT_t.LN_t.LECLERC50.PL[1] = {};
GT_t.LN_t.LECLERC50.PL[1].ammo_capacity = 150; --300 total
GT_t.LN_t.LECLERC50.PL[1].portionAmmoCapacity = 150
GT_t.LN_t.LECLERC50.PL[1].shell_name = {"M2_12_7_T", "NT_50", "NT_50", "NT_50", "NT_50"};
GT_t.LN_t.LECLERC50.PL[1].shot_delay = 60/700; 
GT_t.LN_t.LECLERC50.PL[1].switch_on_delay = 120;
GT_t.LN_t.LECLERC50.PL[1].reload_time = 120;
for i = 2, 2 do
	GT_t.LN_t.LECLERC50.PL[i] = {};
	set_recursive_metatable(GT_t.LN_t.LECLERC50.PL[i], GT_t.LN_t.LECLERC50.PL[1]);
end;

GT_t.LN_t.LECLERC50.BR = { {pos = {1.2, 0, 0} } }

--T20

Def_mg_LN = {
    type = 3, --AA
    distanceMin = 0,
    reactionTime = 0.5,
    reflection_limit = 0.22,
    connectorFire = true,
    sensor = {},
    PL = {},
}
set_recursive_metatable(Def_mg_LN.sensor, GT_t.WSN_t[4]);


GT_t.LN_t.AA20 = {name = "AA20", display_name = _("AA20")}
GT_t.LN_t.AA20.type=3;
set_recursive_metatable(GT_t.LN_t.AA20, Def_mg_LN);
GT_t.LN_t.AA20.distanceMax = 2000
GT_t.LN_t.AA20.max_trg_alt = 2000
set_recursive_metatable(GT_t.LN_t.AA20.sensor, GT_t.WSN_t[4])
GT_t.LN_t.AA20.PL[1] = {};
GT_t.LN_t.AA20.PL[1].ammo_capacity = 50; --2200 total
GT_t.LN_t.AA20.PL[1].portionAmmoCapacity = 50
GT_t.LN_t.AA20.PL[1].shell_name = {"T_20_HE"};
GT_t.LN_t.AA20.PL[1].shot_delay = 60/750; -- 520 rpm
GT_t.LN_t.AA20.PL[1].switch_on_delay = 15;
GT_t.LN_t.AA20.PL[1].reload_time = 15;

GT_t.LN_t.AA20.BR = { {pos = {1.2, 0, 0} } }

-- AA20AP

Def_mg_LN = {
    type = 3, --AA
    distanceMin = 0,
    reactionTime = 0.5,
    reflection_limit = 0.22,
    connectorFire = true,
    sensor = {},
    PL = {},
}
set_recursive_metatable(Def_mg_LN.sensor, GT_t.WSN_t[4]);


GT_t.LN_t.AA20AP = {name = "AA20AP", display_name = _("AA20AP")}
GT_t.LN_t.AA20AP.type=3;
set_recursive_metatable(GT_t.LN_t.AA20AP, Def_mg_LN);
GT_t.LN_t.AA20AP.distanceMax = 2000
GT_t.LN_t.AA20AP.max_trg_alt = 2000
set_recursive_metatable(GT_t.LN_t.AA20AP.sensor, GT_t.WSN_t[4])
GT_t.LN_t.AA20AP.PL[1] = {};
GT_t.LN_t.AA20AP.PL[1].ammo_capacity = 50; --2200 total
GT_t.LN_t.AA20AP.PL[1].portionAmmoCapacity = 50
GT_t.LN_t.AA20AP.PL[1].shell_name = {"T_20_AP"};
GT_t.LN_t.AA20AP.PL[1].shot_delay = 60/750; -- 520 rpm
GT_t.LN_t.AA20AP.PL[1].switch_on_delay = 15;
GT_t.LN_t.AA20AP.PL[1].reload_time = 15;

GT_t.LN_t.AA20AP.BR = { {pos = {1.2, 0, 0} } }



-----------------------------------------MISTRAL

GT_t.LN_t._MISTRALSOL = {} 
GT_t.LN_t._MISTRALSOL.type = 4;
GT_t.LN_t._MISTRALSOL.distanceMin = 200;
GT_t.LN_t._MISTRALSOL.distanceMax = 10000;
GT_t.LN_t._MISTRALSOL.reactionTime = 2;
GT_t.LN_t._MISTRALSOL.launch_delay = 1;
GT_t.LN_t._MISTRALSOL.radialDisperse = 0.0;
GT_t.LN_t._MISTRALSOL.dispertionReductionFactor = 0.0;
GT_t.LN_t._MISTRALSOL.maxShootingSpeed = 0.0;
GT_t.LN_t._MISTRALSOL.reflection_limit = 0.1;
GT_t.LN_t._MISTRALSOL.ECM_K = -1
GT_t.LN_t._MISTRALSOL.sensor = {};
set_recursive_metatable(GT_t.LN_t._MISTRALSOL.sensor, GT_t.WSN_t[0]);
-- GT_t.LN_t._MISTRALSOL.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._MISTRALSOL.PL = {};
GT_t.LN_t._MISTRALSOL.PL[1] = {};
GT_t.LN_t._MISTRALSOL.PL[1].ammo_capacity = 6;
GT_t.LN_t._MISTRALSOL.PL[1].type_ammunition=Mistral_Sol.wsTypeOfWeapon;
GT_t.LN_t._MISTRALSOL.PL[1].name_ammunition= {"Mistral_Sol"};
GT_t.LN_t._MISTRALSOL.PL[1].reload_time = 30;
GT_t.LN_t._MISTRALSOL.PL[1].shot_delay = 30;
GT_t.LN_t._MISTRALSOL.PL[1].automaticLoader = false;
GT_t.LN_t._MISTRALSOL.BR = {
                    {connector_name = "POINT_MISSILE",drawArgument = 4},

                };


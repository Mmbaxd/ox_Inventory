return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},
    
    --sn_tablet
    	['sn_tablet'] = {
		label = 'sn_tablet',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

['lockpick'] = {
    label = 'Lockpick',
    weight = 160,
    metadata = {
        durability = 100,
    },
    degrade = 20, 
},

['advancedlockpick'] = {
    label = 'Advanced Lockpick',
    weight = 120,  
    metadata = {
        durability = 100,
    },
    degrade = 10,  
},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	--mt_workshop
["engine_s"] = {
	label = "Engine S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_a"] = {
	label = "Engine A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_b"] = {
	label = "Engine B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_c"] = {
	label = "Engine C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_d"] = {
	label = "Engine D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_s"] = {
	label = "Transmission S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_a"] = {
	label = "Transmission A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_b"] = {
	label = "Transmission B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_c"] = {
	label = "Transmission C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_d"] = {
	label = "Transmission D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_s"] = {
	label = "Suspension S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_a"] = {
	label = "Suspension A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_b"] = {
	label = "Suspension B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_c"] = {
	label = "Suspension C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_d"] = {
	label = "Suspension D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_s"] = {
	label = "Brake S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_a"] = {
	label = "Brake A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_b"] = {
	label = "Brake B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_c"] = {
	label = "Brake C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_d"] = {
	label = "Brake D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_s"] = {
	label = "Turbo S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_a"] = {
	label = "Turbo A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_b"] = {
	label = "Turbo B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_c"] = {
	label = "Turbo C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_d"] = {
	label = "Turbo D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_s"] = {
	label = "Armour S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_a"] = {
	label = "Armour A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_b"] = {
	label = "Armour B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_c"] = {
	label = "Armour C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_d"] = {
	label = "Armour D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_repair_kit"] = {
	label = "Engine repair kit",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["body_repair_kit"] = {
	label = "Body repair kit",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["cosmetics"] = {
	label = "Cosmetics",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["mechanic_toolbox"] = {
	label = "Mechanics toolbox",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
	client = {
		export = 'mt_workshops.openToolboxMenu'
	}
},
["neons_controller"] = {
	label = "Neons controller",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
	client = {
		export = 'mt_workshops.openLightsController'
	}
},
["mods_list"] = {
	label = "Vehicle mods list",
	weight = 0,
	stack = true,
	close = true,
	description = "",
	client = {
		export = 'mt_workshops.openCosmeticsMenu'
	}
},
["extras_controller"] = {
	label = "Vehicle extras",
	weight = 0,
	stack = true,
	close = true,
	description = "",
	client = {
		export = 'mt_workshops.openExtrasMenu'
	}
},
--hospital items
	['crutch'] = {
		label = 'Crutch',
		weight = 100,
		stack = false,
		close = true,
	},

	['wheelchair'] = {
		label = 'Wheelchair',
		weight = 100,
		stack = false,
		close = true,
	},

	['stretcher'] = {
		label = 'Stretcher',
		weight = 100,
		stack = false,
		close = true,
	},

	['medical_kit'] = {
		label = 'Medical Kit',
		weight = 200,
		stack = false,
		close = false,
		description = 'A basic medical kit containing essential supplies for treating minor injuries and illnesses.',
	},

	['advanced_medical_kit'] = {
		label = 'Advanced Medical Kit',
		weight = 200,
		stack = false,
		close = false,
		description = 'A more advanced medical kit containing additional supplies and equipment for treating injuries and illnesses.',
	},

	['blood_bag_250'] = {
		label = 'Blood Bag 250ml',
		weight = 250,
		stack = true,
		close = false,
		description = 'A 250ml bag of blood used for blood transfusions.',
	},

	['blood_bag_500'] = {
		label = 'Blood Bag 500ml',
		weight = 500,
		stack = true,
		close = false,
		description = 'A 500ml bag of blood used for blood transfusions.',
	},

	['painkillers'] = {
		label = 'Painkillers',
		weight = 50,
		stack = true,
		close = false,
		description = 'A medication used to relieve pain and reduce fever.',
	},

	['adrenaline'] = {
		label = 'Adrenaline',
		weight = 50,
		stack = true,
		close = false,
	},

	['morphine'] = {
		label = 'Morphine',
		weight = 50,
		stack = true,
		close = false,
		description = 'A medication used to relieve pain and reduce fever.',
	},

	['suture_kit'] = {
		label = 'Suture Kit',
		weight = 100,
		stack = true,
		close = false,
		description = 'A medical device used to close wounds or surgical incisions.',
	},

	['icepack'] = {
		label = 'Ice Pack',
		weight = 100,
		stack = true,
		close = false,
		description = 'A bag of ice used to reduce swelling and numb pain.',
	},

	['splint'] = {
		label = 'Splint',
		weight = 100,
		stack = true,
		close = false,
		description = 'A device that is used to apply pressure to a limb.',
	},

	['defibrilator'] = {
		label = 'Defibrillator',
		weight = 500,
		stack = false,
		close = true,
	},

	['bodybag'] = {
		label = 'Body Bag',
		weight = 500,
		stack = true,
		close = false,
	},

	['gauze'] = {
		label = 'Gauze',
		weight = 20,
		stack = true,
		close = true,
		description = 'A thin, transparent fabric with a loose open weave, used for dressings, bandages, and surgical sponges.',
	},

	['bandage'] = {
		label = 'Bandage',
		description = 'Very good for stopping bleeding and small injuries',
		weight = 115,
		stack = true,
		close = true
	},

	['ointment'] = {
		label = 'Ointment',
		weight = 50,
		stack = true,
		close = true,
		description = 'A medical cream used to promote healing and prevent infection in minor cuts, scrapes, and burns.',
	},

	['disinfectant'] = {
		label = 'Disinfectant',
		weight = 50,
		stack = true,
		close = true,
		description = 'A liquid that kills bacteria and other microorganisms on surfaces.',
	},

	['cyclonamine'] = {
		label = 'Cyclonamine',
		weight = 50,
		stack = true,
		close = true,
	},

	['tourniquet'] = {
		label = 'Tourniquet',
		weight = 100,
		stack = true,
		close = true,
		description = 'A device that is used to apply pressure to a limb.',
	},

	['medicbag'] = {
		label = 'Medic Bag',
		weight = 500,
		stack = false,
		close = true,
		description = 'A bag containing medical supplies and equipment.',
	},

	['antipyretics'] = {
		label = 'Antipyretics',
		weight = 50,
		stack = true,
		close = true,
		description = 'A medication that reduces fever.',
	},

	['ambulance_gps'] = {
		label = 'Ambulance GPS',
		weight = 100,
		stack = false,
		close = true,
	},

      atm_receipt = {
        name = 'atm_receipt',
        label = 'ATM Receipt',
        weight = 0.1,
        type = 'item',
        image = 'atm_receipt.png',
        unique = true,
        useable = true,
        shouldClose = true,
        combinable = nil,
        description = 'A receipt from the ATM'
    },

	--prp fishing
	["basic_fishing_rod"] = {
    label = "Basic Fishing Rod",
    weight = 800
},
["sport_fishing_rod"] = {
    label = "Sport Fishing Rod",
    weight = 1000
},
["professional_fishing_rod"] = {
    label = "Professional Fishing Rod",
    weight = 1200
},
["prodigy_fishing_rod"] = {
    label = "Prodigy Fishing Rod",
    weight = 1400,
},
["aqua_fishing_rod"] = {
    label = "Aqua Fishing Rod",
    weight = 1500,
    closeUi = true
},
["sunset_fishing_rod"] = {
    label = "Sunset Fishing Rod",
    weight = 1500
},
["golden_fishing_rod"] = {
    label = "Golden Fishing Rod",
    weight = 1500
},

-- Bait
["fishing_bait_worm"] = {
    label = "Worm Bait",
    weight = 10,
},
["fishing_bait_lugworm"] = {
    label = "Lugworm Bait",
    weight = 10,
},
["fishing_bait_radiated"] = {
    label = "Radiated Bait",
    weight = 10,
},

["small_bullhead"] = {
    label = "Bullhead",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_bullhead"] = {
    label = "Bullhead",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_bullhead"] = {
    label = "Bullhead",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_carp"] = {
    label = "Carp",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_carp"] = {
    label = "Carp",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_carp"] = {
    label = "Carp",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_catfish"] = {
    label = "Catfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_catfish"] = {
    label = "Catfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_catfish"] = {
    label = "Catfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_perch"] = {
    label = "Perch",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_perch"] = {
    label = "Perch",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_perch"] = {
    label = "Perch",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_rainbow_trout"] = {
    label = "Rainbow Trout",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_rainbow_trout"] = {
    label = "Rainbow Trout",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_rainbow_trout"] = {
    label = "Rainbow Trout",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_northern_pike"] = {
    label = "Northern Pike",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_northern_pike"] = {
    label = "Northern Pike",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_northern_pike"] = {
    label = "Northern Pike",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},

-- Saltwater Fish
["small_atlantic_croaker"] = {
    label = "Atlantic Croaker",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_atlantic_croaker"] = {
    label = "Atlantic Croaker",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_atlantic_croaker"] = {
    label = "Atlantic Croaker",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_atlantic_mackerel"] = {
    label = "Atlantic Mackerel",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_atlantic_mackerel"] = {
    label = "Atlantic Mackerel",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_atlantic_mackerel"] = {
    label = "Atlantic Mackerel",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_flounder"] = {
    label = "Flounder",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_flounder"] = {
    label = "Flounder",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_flounder"] = {
    label = "Flounder",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_red_mullet"] = {
    label = "Red Mullet",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_red_mullet"] = {
    label = "Red Mullet",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_red_mullet"] = {
    label = "Red Mullet",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_sardine"] = {
    label = "Sardine",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_sardine"] = {
    label = "Sardine",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_sardine"] = {
    label = "Sardine",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_red_snapper"] = {
    label = "Red Snapper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_red_snapper"] = {
    label = "Red Snapper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_red_snapper"] = {
    label = "Red Snapper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_salmon"] = {
    label = "Salmon",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_salmon"] = {
    label = "Salmon",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_salmon"] = {
    label = "Salmon",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_striped_bass"] = {
    label = "Striped Bass",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_striped_bass"] = {
    label = "Striped Bass",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_striped_bass"] = {
    label = "Striped Bass",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_tuna"] = {
    label = "Tuna",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_tuna"] = {
    label = "Tuna",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_tuna"] = {
    label = "Tuna",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_breamfish"] = {
    label = "Bream Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_breamfish"] = {
    label = "Bream Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_breamfish"] = {
    label = "Bream Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_hake"] = {
    label = "Hake",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_hake"] = {
    label = "Hake",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_hake"] = {
    label = "Hake",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_barracuda"] = {
    label = "Barracuda",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_barracuda"] = {
    label = "Barracuda",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_barracuda"] = {
    label = "Barracuda",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_coralgrouper"] = {
    label = "Coral Grouper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_coralgrouper"] = {
    label = "Coral Grouper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_coralgrouper"] = {
    label = "Coral Grouper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_drumfish"] = {
    label = "Drum Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_drumfish"] = {
    label = "Drum Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_drumfish"] = {
    label = "Drum Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},

-- Jellyfish
["small_jellyfish"] = {
    label = "Blue Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_jellyfish"] = {
    label = "Blue Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_jellyfish"] = {
    label = "Blue Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_jellyfish_orange"] = {
    label = "Orange Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_jellyfish_orange"] = {
    label = "Orange Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_jellyfish_orange"] = {
    label = "Orange Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_jellyfish_red"] = {
    label = "Red Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_jellyfish_red"] = {
    label = "Red Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_jellyfish_red"] = {
    label = "Red Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_jellyfish_green"] = {
    label = "Green Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_jellyfish_green"] = {
    label = "Green Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_jellyfish_green"] = {
    label = "Green Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_jellyfish_pink"] = {
    label = "Pink Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_jellyfish_pink"] = {
    label = "Pink Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_jellyfish_pink"] = {
    label = "Pink Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_jellyfish_purple"] = {
    label = "Purple Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_jellyfish_purple"] = {
    label = "Purple Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_jellyfish_purple"] = {
    label = "Purple Jellyfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_jellyfish_rainbow"] = {
    label = "Rainbow Jellyfish",
    weight = 300,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_jellyfish_rainbow"] = {
    label = "Rainbow Jellyfish",
    weight = 300,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_jellyfish_rainbow"] = {
    label = "Rainbow Jellyfish",
    weight = 300,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},

-- Golden Fish
["small_golden_fish"] = {
    label = "Golden Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_golden_fish"] = {
    label = "Golden Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_golden_fish"] = {
    label = "Golden Fish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},

-- Radiated Fish
["small_atlantic_croaker_rad"] = {
    label = "Radiated Atlantic Croaker",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_atlantic_croaker_rad"] = {
    label = "Radiated Atlantic Croaker",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_atlantic_croaker_rad"] = {
    label = "Radiated Atlantic Croaker",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_barracuda_rad"] = {
    label = "Radiated Barracuda",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_barracuda_rad"] = {
    label = "Radiated Barracuda",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_barracuda_rad"] = {
    label = "Radiated Barracuda",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_breamfish_rad"] = {
    label = "Radiated Breamfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_breamfish_rad"] = {
    label = "Radiated Breamfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_breamfish_rad"] = {
    label = "Radiated Breamfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_bullhead_rad"] = {
    label = "Radiated Bullhead",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_bullhead_rad"] = {
    label = "Radiated Bullhead",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_bullhead_rad"] = {
    label = "Radiated Bullhead",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_carp_rad"] = {
    label = "Radiated Carp",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_carp_rad"] = {
    label = "Radiated Carp",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_carp_rad"] = {
    label = "Radiated Carp",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_catfish_rad"] = {
    label = "Radiated Catfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_catfish_rad"] = {
    label = "Radiated Catfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_catfish_rad"] = {
    label = "Radiated Catfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_coralgrouper_rad"] = {
    label = "Radiated Coral Grouper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_coralgrouper_rad"] = {
    label = "Radiated Coral Grouper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_coralgrouper_rad"] = {
    label = "Radiated Coral Grouper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_drumfish_rad"] = {
    label = "Radiated Drumfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_drumfish_rad"] = {
    label = "Radiated Drumfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_drumfish_rad"] = {
    label = "Radiated Drumfish",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_flounder_rad"] = {
    label = "Radiated Flounder",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_flounder_rad"] = {
    label = "Radiated Flounder",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_flounder_rad"] = {
    label = "Radiated Flounder",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_hake_rad"] = {
    label = "Radiated Hake",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_hake_rad"] = {
    label = "Radiated Hake",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_hake_rad"] = {
    label = "Radiated Hake",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_northern_pike_rad"] = {
    label = "Radiated Northern Pike",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_northern_pike_rad"] = {
    label = "Radiated Northern Pike",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_northern_pike_rad"] = {
    label = "Radiated Northern Pike",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_perch_rad"] = {
    label = "Radiated Perch",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_perch_rad"] = {
    label = "Radiated Perch",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_perch_rad"] = {
    label = "Radiated Perch",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_rainbow_trout_rad"] = {
    label = "Radiated Rainbow Trout",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_rainbow_trout_rad"] = {
    label = "Radiated Rainbow Trout",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_rainbow_trout_rad"] = {
    label = "Radiated Rainbow Trout",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_red_mullet_rad"] = {
    label = "Radiated Red Mullet",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_red_mullet_rad"] = {
    label = "Radiated Red Mullet",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_red_mullet_rad"] = {
    label = "Radiated Red Mullet",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_red_snapper_rad"] = {
    label = "Radiated Red Snapper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_red_snapper_rad"] = {
    label = "Radiated Red Snapper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_red_snapper_rad"] = {
    label = "Radiated Red Snapper",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_salmon_rad"] = {
    label = "Radiated Salmon",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_salmon_rad"] = {
    label = "Radiated Salmon",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_salmon_rad"] = {
    label = "Radiated Salmon",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_sardine_rad"] = {
    label = "Radiated Sardine",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_sardine_rad"] = {
    label = "Radiated Sardine",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_sardine_rad"] = {
    label = "Radiated Sardine",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_striped_bass_rad"] = {
    label = "Radiated Striped Bass",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_striped_bass_rad"] = {
    label = "Radiated Striped Bass",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_striped_bass_rad"] = {
    label = "Radiated Striped Bass",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["small_tuna_rad"] = {
    label = "Radiated Tuna",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["medium_tuna_rad"] = {
    label = "Radiated Tuna",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},
["large_tuna_rad"] = {
    label = "Radiated Tuna",
    weight = 225,
    buttons = {
        {
            label = "Cut Fish",
            action = function(slot)
                TriggerServerEvent("prp-fishing:server:cutFish", slot)
            end,
        }
    }
},

-- Fishing misc
["fishing_boot"] = {
    label = "Fishing Boot",
    weight = 1000
},

["fish_meat"] = {
    label = "Fish Meat",
    weight = 100
},

-- Fishing Trophies
["pr_trophy_fish_january"] = {
    label = "Fishing Trophy (January)",
    weight = 2000,
},
["pr_trophy_fish_february"] = {
    label = "Fishing Trophy (February)",
    weight = 2000,
},
["pr_trophy_fish_march"] = {
    label = "Fishing Trophy (March)",
    weight = 2000,
},
["pr_trophy_fish_april"] = {
    label = "Fishing Trophy (April)",
    weight = 2000,
},
["pr_trophy_fish_may"] = {
    label = "Fishing Trophy (May)",
    weight = 2000,
},
["pr_trophy_fish_june"] = {
    label = "Fishing Trophy (June)",
    weight = 2000,
},
["pr_trophy_fish_july"] = {
    label = "Fishing Trophy (July)",
    weight = 2000,
},
["pr_trophy_fish_august"] = {
    label = "Fishing Trophy (August)",
    weight = 2000,
},
["pr_trophy_fish_september"] = {
    label = "Fishing Trophy (September)",
    weight = 2000,
},
["pr_trophy_fish_october"] = {
    label = "Fishing Trophy (October)",
    weight = 2000,
},
["pr_trophy_fish_november"] = {
    label = "Fishing Trophy (November)",
    weight = 2000,
},
["pr_trophy_fish_december"] = {
    label = "Fishing Trophy (December)",
    weight = 2000,
},

--police
	['camera'] 						 = {['name'] = 'camera', 			  	  		['label'] = 'PD Camera', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'camera.png', 				['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Camera to take pretty pictures.'},
	['photo'] 				 		 = {['name'] = 'photo', 			  	  		['label'] = 'Saved Pic', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'photo.png', 				['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Brand new picture saved!'},

['evidence_laptop'] = {
    label = 'Evidence Laptop',
    description = 'Laptop for accessing DNA and fingerprint database',
    weight = 1500,
    stack = true,
    close = true,
    client = {
        export = 'evidences.evidence_laptop'
    }
},
['evidence_box'] = {
    label = 'Evidence Box',
    description = 'Box to store evidences',
    weight = 250,
    stack = false,
    close = false,
    buttons = {{
        label = 'Label',
        action = function(slot)
            exports.evidences:evidence_box(slot)
        end
    }}
},
['forensic_kit'] = {
    label = 'Forensic Kit',
    description = 'You need this kit to secure evidences. The case can be used ten times.',
    weight = 2500,
    close = false,
    stack = false,
    decay = true
},
['hydrogen_peroxide'] = {
    label = 'Hydrogen peroxide',
    weight = 500,
    stack = true,
    client = {
        export = 'evidences.hydrogen_peroxide'
    }
},
['fingerprint_scanner'] = {
    label = 'Fingerprint Scanner',
    description = 'With this, you can scan the fingerprint of the person opposite you. If the fingerprint matches a database entry, their identity will be displayed to you.',
    weight = 500,
    stack = false,
    close = true,
    consume = 0,
    client = {
        export = 'evidences.fingerprint_scanner',
    },
},
['collected_blood'] = {
    label = 'Collected Blood',
    weight = 200,
    stack = false,
    buttons = {{
        label = 'Copy DNA',
        action = function(slot)
            exports.evidences:copyEvidenceOwner(slot, "dna")
        end
    }}
},
['collected_saliva'] = {
    label = 'Collected Saliva',
    weight = 200,
    stack = false,
    buttons = {{
        label = 'Copy DNA',
        action = function(slot)
            exports.evidences:copyEvidenceOwner(slot, "dna")
        end
    }}
},
['collected_magazine'] = {
    label = 'Collected Magazin',
    weight = 200,
    stack = false
},
['collected_fingerprint'] = {
    label = 'Collected Fingerprint',
    weight = 5,
    stack = false,
    buttons = {{
        label = 'Copy Fingerprint',
        action = function(slot)
            exports.evidences:copyEvidenceOwner(slot, "fingerprint")
        end
    }}
},
['spy_microphone'] = {
    label = 'Spy Microphone',
    description = 'Microphone for observing nearby people',
    weight = 1500,
    stack = true,
    close = true,
    client = {
        export = 'evidences.spy_microphone'
    }
},
--vehicles keys

    ['carkey_bag'] = {
        label       = 'Bolsa de Chaves',
        weight      = 500,
        stack       = false,   -- ÚNICA por slot (não empilha)
        close       = true,
        description = 'Bolsa exclusiva para guardar chaves de veículo.',
        buttons     = {
            {
                label  = 'Gerenciar Chaves',
                action = function(slot)
                    TriggerServerEvent('pr_carkeys:server:manageBag', slot)
                end,
            },
        },
    },

    ['carkey_bag_large'] = {
        label       = 'Bolsa de Chaves Grande',
        weight      = 800,
        stack       = false,
        close       = true,
        description = 'Bolsa grande para guardar várias chaves de veículo.',
        buttons     = {
            {
                label  = 'Gerenciar Chaves',
                action = function(slot)
                    TriggerServerEvent('pr_carkeys:server:manageBag', slot)
                end,
            },
        },
    },

    -- ===== CHAVES =====
    ['carkey_permanent'] = {
        label       = 'Chave Original',
        weight      = 50,
        stack       = false,
        close       = true,
        description = 'Chave original de veículo. Permanente.',
        buttons     = {
            {
                label  = 'Configurar Chave',
                action = function(slot, item)
                    -- Passa o barcode direto da metadata — funciona do inventário e do stash
                    local barcode = item and item.metadata and item.metadata.barcode
                    if barcode then
                        TriggerServerEvent('pr_carkeys:server:manageKeyByBarcode', barcode)
                    end
                end,
            },
        },
    },

    ['carkey_copy'] = {
        label       = 'Chave Cópia',
        weight      = 50,
        stack       = false,
        close       = true,
        description = 'Cópia de chave de veículo.',
        buttons     = {
            {
                label  = 'Configurar Chave',
                action = function(slot, item)
                    local barcode = item and item.metadata and item.metadata.barcode
                    if barcode then
                        TriggerServerEvent('pr_carkeys:server:manageKeyByBarcode', barcode)
                    end
                end,
            },
        },
    },

    ['carkey_temp'] = {
        label       = 'Chave Temporária',
        weight      = 50,
        stack       = false,
        close       = true,
        description = 'Chave temporária. Expira após o período configurado.',
    },

    ['carkey_single'] = {
        label       = 'Chave Avulsa',
        weight      = 50,
        stack       = false,
        close       = true,
        description = 'Chave de uso único. Some após usar.',
    },
    
["builder_tablet"] = { label = "Builder Tablet", weight = 100, stack = false },
    
    -- start 0r-farming-v2 items
["watering_can"]    = { label = 'Watering Can', weight = 0.1, stack = true, },
["wheat_seed"]      = { label = 'Wheat Seed', weight = 0.1, stack = true, },
["wheat"]           = { label = 'Wheat', weight = 0.1, stack = true, },
["rose_seed"]       = { label = 'Rose Seed', weight = 0.1, stack = true, },
["rose"]            = { label = 'Rose', weight = 0.1, stack = true, },
["green_seed"]      = { label = 'Green Seed', weight = 0.1, stack = true, },
["green"]           = { label = 'Green', weight = 0.1, stack = true, },
["daisy_seed"]      = { label = 'Daisy Seed', weight = 0.1, stack = true, },
["daisy"]           = { label = 'Daisy', weight = 0.1, stack = true, },
["poppy_seed"]      = { label = 'Poppy Seed', weight = 0.1, stack = true, },
["poppy"]           = { label = 'Poppy', weight = 0.1, stack = true, },
["melon_seed"]      = { label = 'Melon Seed', weight = 0.1, stack = true, },
["melon"]           = { label = 'Melon', weight = 0.1, stack = true, },
["watermelon_seed"] = { label = 'Watermelon Seed', weight = 0.1, stack = true, },
["watermelon"]      = { label = 'Watermelon', weight = 0.1, stack = true, },
["pumpkin_seed"]    = { label = 'Pumpkin Seed', weight = 0.1, stack = true, },
["pumpkin"]         = { label = 'Pumpkin', weight = 0.1, stack = true, },
["farming_tablet"]  = { label = 'Farming Tablet', weight = 0.1, stack = false, },
["milk_bottle"]     = { label = 'Milk Bottle', weight = 0.1, stack = true, },
    


}
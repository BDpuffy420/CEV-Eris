/datum/job/ihc
	title = "Ironhammer Commander"
	flag = IHC
	head_position = 1
	department = "Ironhammer"
	department_flag = IRONHAMMER | COMMAND
	faction = "CEV Eris"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain"
	selection_color = "#ffdddd"
	idtype = /obj/item/weapon/card/id/hos
	req_admin_notify = 1
	economic_modifier = 10
	also_known_languages = list(LANGUAGE_CYRILLIC = 60, LANGUAGE_SERBIAN = 60)
	access = list(
		access_security, access_eva, access_sec_doors, access_brig, access_armory, access_medspec,
		access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
		access_moebius, access_engine, access_mining, access_moebius, access_construction, access_mailsorting,
		access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway,
		access_external_airlocks
	)

	stat_modifers = list(
		STAT_ROB = 30,
		STAT_TGH = 20,
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

	uniform = /obj/item/clothing/under/rank/ih_commander
	suit = /obj/item/clothing/suit/armor/hos
	hat = /obj/item/clothing/head/HoS
	pda = /obj/item/modular_computer/pda/heads/hos
	ear = /obj/item/device/radio/headset/heads/hos
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/stungloves
	glasses = /obj/item/clothing/glasses/sunglasses/sechud/tactical
	belt = /obj/item/weapon/gun/projectile/lamia
	put_in_backpack = list(\
		/obj/item/ammo_magazine/cl44/rubber,\
		/obj/item/ammo_magazine/cl44/rubber,\
		/obj/item/weapon/handcuffs,\
		/obj/item/device/lighting/toggleable/flashlight/seclite,\
		/obj/item/weapon/cell/small/high,\
		/obj/item/weapon/cell/small/high,\
		/obj/item/weapon/gun/energy/gun/martin,\
	)

	backpacks = list(
		/obj/item/weapon/storage/backpack/security,\
		/obj/item/weapon/storage/backpack/satchel_sec,\
		/obj/item/weapon/storage/backpack/satchel
	)

/obj/landmark/join/start/ihc
	name = "Ironhammer Commander"
	icon_state = "player-blue-officer"
	join_tag = /datum/job/ihc



/datum/job/gunserg
	title = "Ironhammer Gunnery Sergeant"
	flag = GUNSERG
	department = "Ironhammer"
	department_flag = IRONHAMMER
	faction = "CEV Eris"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Ironhammer Commander"
	selection_color = "#ffeeee"
	economic_modifier = 5
	also_known_languages = list(LANGUAGE_CYRILLIC = 25, LANGUAGE_SERBIAN = 25)
	access = list(
		access_security, access_moebius, access_moebius, access_engine, access_mailsorting,
		access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_morgue,
		access_external_airlocks
	)
	idtype = /obj/item/weapon/card/id/sec

	stat_modifers = list(
		STAT_ROB = 20,
		STAT_TGH = 20,
	)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

	uniform = /obj/item/clothing/under/rank/warden
	suit = /obj/item/clothing/suit/armor/vest/security
	hat = /obj/item/clothing/head/beret/sec/navy/warden
	pda = /obj/item/modular_computer/pda/security
	ear = /obj/item/device/radio/headset/headset_sec
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/stungloves
	glasses = /obj/item/clothing/glasses/sunglasses/sechud/tactical
	belt = /obj/item/weapon/gun/projectile/automatic/sol/rds
	put_in_backpack = list(\
		/obj/item/ammo_magazine/sol65/rubber,\
		/obj/item/ammo_magazine/sol65/rubber,\
		/obj/item/device/flash,\
		/obj/item/weapon/handcuffs,\
		/obj/item/device/lighting/toggleable/flashlight/seclite,\
		/obj/item/weapon/gun/energy/gun/martin,\
		/obj/item/weapon/cell/small/high,\
		/obj/item/weapon/cell/small/high,\
	)

	backpacks = list(
		/obj/item/weapon/storage/backpack/security,\
		/obj/item/weapon/storage/backpack/satchel_sec,\
		/obj/item/weapon/storage/backpack/satchel
	)

/obj/landmark/join/start/gunserg
	name = "Ironhammer Gunnery Sergeant"
	icon_state = "player-blue"
	join_tag = /datum/job/gunserg


/datum/job/inspector
	title = "Ironhammer Inspector"
	flag = INSPECTOR
	department = "Ironhammer"
	department_flag = IRONHAMMER
	faction = "CEV Eris"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Ironhammer Commander"
	selection_color = "#ffeeee"
	economic_modifier = 5
	also_known_languages = list(LANGUAGE_CYRILLIC = 50, LANGUAGE_SERBIAN = 50)
	access = list(
		access_security, access_moebius, access_moebius, access_engine, access_mailsorting,
		access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels,
		access_external_airlocks
	)
	idtype = /obj/item/weapon/card/id/det

	stat_modifers = list(
		STAT_BIO = 10,
		STAT_ROB = 10,
		STAT_TGH = 10,
	)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

	uniform = /obj/item/clothing/under/rank/inspector
	pda = /obj/item/modular_computer/pda/forensics
	ear = /obj/item/device/radio/headset/headset_sec
	shoes = /obj/item/clothing/shoes/reinforced
	gloves = /obj/item/clothing/gloves/stungloves
	hat = /obj/item/clothing/head/det
	suit = /obj/item/clothing/suit/storage/insp_trench
	hand = /obj/item/weapon/storage/briefcase/crimekit
	belt = /obj/item/weapon/gun/projectile/revolver/consul

	put_in_backpack = list(\
		/obj/item/ammo_magazine/sl44/rubber,\
		/obj/item/ammo_magazine/sl44/rubber,\
		/obj/item/weapon/handcuffs,\
		/obj/item/weapon/flame/lighter/zippo,\
		/obj/item/weapon/storage/box/evidence,\
		/obj/item/weapon/cell/small/high,\
		/obj/item/weapon/cell/small/high,\
		/obj/item/weapon/gun/energy/gun/martin
	)

/obj/landmark/join/start/inspector
	name = "Ironhammer Inspector"
	icon_state = "player-blue"
	join_tag = /datum/job/inspector


/datum/job/medspec
	title = "Ironhammer Medical Specialist"
	flag = MEDSPEC
	department = "Ironhammer"
	department_flag = IRONHAMMER
	faction = "CEV Eris"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Ironhammer Commander"
	selection_color = "#ffeeee"
	economic_modifier = 5
	also_known_languages = list(LANGUAGE_CYRILLIC = 5)
	access = list(
		access_security, access_moebius, access_sec_doors, access_medspec, access_morgue, access_maint_tunnels
	)
	idtype = /obj/item/weapon/card/id/medcpec

	stat_modifers = list(
		STAT_BIO = 20,
	)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

	uniform = /obj/item/clothing/under/rank/medspec
	pda = /obj/item/modular_computer/pda/forensics
	ear = /obj/item/device/radio/headset/headset_sec
	shoes = /obj/item/clothing/shoes/reinforced
	gloves = /obj/item/clothing/gloves/thick
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/medspec
	hand = /obj/item/weapon/storage/briefcase/crimekit
	belt = /obj/item/weapon/gun/projectile/olivaw

	put_in_backpack = list(\
		/obj/item/ammo_magazine/cl32/rubber,\
		/obj/item/ammo_magazine/cl32/rubber,\
		/obj/item/weapon/storage/box/evidence,\
	)

/obj/landmark/join/start/medspec
	name = "Ironhammer Medical Specialist"
	icon_state = "player-blue"
	join_tag = /datum/job/medspec


/datum/job/ihoper
	title = "Ironhammer Operative"
	flag = IHOPER
	department = "Ironhammer"
	department_flag = IRONHAMMER
	faction = "CEV Eris"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Ironhammer Commander"
	selection_color = "#ffeeee"
	economic_modifier = 4
	also_known_languages = list(LANGUAGE_CYRILLIC = 25, LANGUAGE_SERBIAN = 25)
	access = list(
		access_security, access_moebius, access_moebius, access_engine, access_mailsorting,
		access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks
	)
	idtype = /obj/item/weapon/card/id/sec

	stat_modifers = list(
		STAT_ROB = 10,
		STAT_TGH = 20,
	)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

	uniform = /obj/item/clothing/under/rank/security
	suit = /obj/item/clothing/suit/armor/vest/security
	hat = /obj/item/clothing/head/helmet
	glasses = /obj/item/clothing/glasses/sunglasses/sechud/tactical
	mask = /obj/item/clothing/mask/balaclava/tactical
	pda = /obj/item/modular_computer/pda/security
	ear = /obj/item/device/radio/headset/headset_sec
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/stungloves
	belt = /obj/item/weapon/gun/projectile/automatic/sol/rds

	put_in_backpack = list(\
		/obj/item/weapon/handcuffs,\
		/obj/item/weapon/handcuffs,\
		/obj/item/ammo_magazine/sol65/rubber,\
		/obj/item/ammo_magazine/sol65/rubber,\
		/obj/item/device/flash,\
		/obj/item/device/lighting/toggleable/flashlight/seclite,\
		/obj/item/weapon/gun/energy/gun/martin,\
		/obj/item/weapon/cell/small/high,\
		/obj/item/weapon/cell/small/high,\
	)

	backpacks = list(
		/obj/item/weapon/storage/backpack/security,\
		/obj/item/weapon/storage/backpack/satchel_sec,\
		/obj/item/weapon/storage/backpack/satchel
	)

/obj/landmark/join/start/ihoper
	name = "Ironhammer Operative"
	icon_state = "player-blue"
	join_tag = /datum/job/ihoper

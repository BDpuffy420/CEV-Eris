#define Clamp(x, y, z) 	(x <= y ? y : (x >= z ? z : x))
#define CLAMP01(x) 		(Clamp(x, 0, 1))


//MOB LEVEL

#define ismob(A) istype(A, /mob)

#define isobserver(A) istype(A, /mob/observer)

#define isghost(A) istype(A, /mob/observer/ghost)

#define isEye(A) istype(A, /mob/observer/eye)

#define isangel(A) istype(A, /mob/observer/eye/angel)

#define isnewplayer(A) istype(A, /mob/new_player)

#define isbst(A) istype(A, /mob/living/carbon/human/bst)
//++++++++++++++++++++++++++++++++++++++++++++++

#define isliving(A) istype(A, /mob/living)
//---------------------------------------------------

#define iscarbon(A) istype(A, /mob/living/carbon)

#define isalien(A) istype(A, /mob/living/carbon/alien)

#define isslime(A) istype(A, /mob/living/carbon/slime)

#define isbrain(A) istype(A, /mob/living/carbon/brain)

#define ishuman(A) istype(A, /mob/living/carbon/human)
//---------------------------------------------------

#define isanimal(A) istype(A, /mob/living/simple_animal)

#define iscorgi(A) istype(A, /mob/living/simple_animal/corgi)

#define ismouse(A) istype(A, /mob/living/simple_animal/mouse)
//---------------------------------------------------

#define issilicon(A) istype(A, /mob/living/silicon)

#define isAI(A) istype(A, /mob/living/silicon/ai)

#define ispAI(A) istype(A, /mob/living/silicon/pai)

#define isrobot(A) istype(A, /mob/living/silicon/robot)

#define isdrone(A) istype(A, /mob/living/silicon/robot/drone)

//-----------------Objects
#define isitem(A) istype(A, /obj/item)

#define istool(A) istype(A, /obj/item/weapon/tool)

#define isWrench(A) istype(A, /obj/item/weapon/tool/wrench)

#define isWelder(A) istype(A, /obj/item/weapon/tool/weldingtool)

#define isCoil(A) istype(A, /obj/item/stack/cable_coil)

#define isWirecutter(A) istype(A, /obj/item/weapon/tool/wirecutters)

#define isScrewdriver(A) istype(A, /obj/item/weapon/tool/screwdriver)

#define isMultitool(A) istype(A, /obj/item/weapon/tool/multitool)

#define isCrowbar(A) istype(A, /obj/item/weapon/tool/crowbar)

#define sequential_id(key) uniqueness_repository.Generate(/datum/uniqueness_generator/id_sequential, key)

#define random_id(key,min_id,max_id) uniqueness_repository.Generate(/datum/uniqueness_generator/id_random, key, min_id, max_id)


//---------------------------------------------------

#define CanInteract(user, state) (CanUseTopic(user, state) == STATUS_INTERACTIVE)

#define CanInteractWith(user, target, state) (target.CanUseTopic(user, state) == STATUS_INTERACTIVE)

#define CanPhysicallyInteract(user) CanInteract(user, GLOB.physical_state)

#define CanPhysicallyInteractWith(user, target) CanInteractWith(user, target, GLOB.physical_state)


#define isweakref(A) istype(A, /weakref)

//OBJECT LEVEL
#define isobj(A) istype(A, /obj)

#define isorgan(A) istype(A, /obj/item/organ/external)

#define isHUDobj(A) istype(A, /obj/screen)

#define islist(A) istype(A, /list)

#define attack_animation(A) if(istype(A)) A.do_attack_animation(src)

#define LAZYADD(L, I) if(!L) { L = list(); } L += I;

// Adds I to L, initalizing L if necessary, if I is not already in L
#define LAZYDISTINCTADD(L, I) if(!L) { L = list(); } L |= I;

#define sound_to(target, sound)                             target << sound
#define to_chat(target, message)                            target << message
#define to_world(message)                                   world << message
#define to_world_log(message)                               log_world(message)
#define show_browser(target, browser_content, browser_name) target << browse(browser_content, browser_name)
#define to_file(file_entry, source_var)                     file_entry << source_var
#define from_file(file_entry, target_var) 					file_entry >> target_var

#define any2ref(x) "\ref[x]"

#define MAP_IMAGE_PATH "nano/images/[maps_data.path]/"

#define map_image_file_name(z_level) "[maps_data.path]-[z_level].png"

#define QDEL_NULL_LIST(x) if(x) { for(var/y in x) { qdel(y) } ; x = null }

#define QDEL_NULL(x) if(x) { qdel(x) ; x = null }

// Spawns multiple objects of the same type
#define cast_new(type, num, args...) if((num) == 1) { new type(args) } else { for(var/i=0;i<(num),i++) { new type(args) } }

//Makes span tags easier
#define span(class, text) ("<span class='[class]'>[text]</span>")

#define JOINTEXT(X) jointext(X, null)

//Currently used in SDQL2 stuff
#define send_output(target, msg, control) target << output(msg, control)
#define send_link(target, url) target << link(url)

// Insert an object A into a sorted list using cmp_proc (/code/_helpers/cmp.dm) for comparison.
#define ADD_SORTED(list, A, cmp_proc) if(!list.len) {list.Add(A)} else {list.Insert(FindElementIndex(A, list, cmp_proc), A)}

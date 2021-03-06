/datum/storyevent/roleset/excelsior
	id = "excelsior"
	name = "excelsior"
	role_id = null

	//min_cost = 10
	//max_cost = 20

	base_quantity = 2 //They're a group antag, we want a few of em
	scaling_threshold = 8

	req_crew = 6


/datum/storyevent/roleset/excelsior/trigger_event()
	if(get_faction_by_id(FACTION_EXCELSIOR))
		return FALSE

	var/list/candidates = candidates_list(ROLE_EXCELSIOR_REV)
	if(candidates.len < 1)
		return FALSE

	var/obj/landmark/storyevent/midgame_stash_spawn/landmark = null

	var/list/L = list()
	for(var/obj/landmark/storyevent/midgame_stash_spawn/S in landmarks_list)
		L.Add(S)

	L = shuffle(L)

	for(var/obj/landmark/storyevent/midgame_stash_spawn/S in L)
		if(!S.is_visible())
			landmark = S
			break

	if(!landmark)
		return FALSE

	var/datum/mind/rev = null
	for(var/datum/mind/M in candidates)
		if(!(M.assigned_role in list(JOBS_SECURITY, JOBS_COMMAND)))	//Don't select head or sec as a first rev, but allow convert
			rev = M
			break

	if(!rev)
		return FALSE

	var/datum/antagonist/R = get_antag_instance(ROLE_EXCELSIOR_REV)

	var/datum/faction/revolutionary/excelsior/E = new
	E.create_objectives()

	if(!R.create_antagonist(rev,announce = FALSE))
		return FALSE

	E.add_leader(R)

	var/obj/item/weapon/implant/revolution/excelsior/implant = new(rev.current)
	implant.install(rev.current)

	var/turf/LM = landmark.get_loc()

	new /obj/item/weapon/disk/autolathe_disk/excelsior(LM)
	new /obj/item/weapon/circuitboard/autolathe(LM)
	new /obj/item/weapon/circuitboard/excelsior_teleporter(LM)

	rev.current << SPAN_NOTICE("Use your excelsior supply stash. [landmark.navigation]")
	rev.store_memory("Excelsior stash. [landmark.navigation]")

	return TRUE

/datum/storyevent/roleset/excelsior/create_objectives()
	return

/********
Synthetic
********/

/datum/job/cyborg
	total_positions = 3
	spawn_positions = 3
	supervisors = "your laws"
	minimal_player_age = 3
	allowed_ranks = list(
		/datum/mil_rank/argos/synthetic
	)

/datum/job/ai
	minimal_player_age = 7
	allowed_ranks = list(
		/datum/mil_rank/argos/synthetic
		)

/*******
Civilian
*******/

/datum/job/assistant
	title = "Passenger"
	total_positions = 12
	spawn_positions = 12
	supervisors = "the Executive Officer"
	economic_power = 6
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/argos/passenger
	alt_titles = list(
		"Journalist" = /decl/hierarchy/outfit/job/argos/passenger/journalist,
		"Historian",
		"Botanist",
		"Psychologist" = /decl/hierarchy/outfit/job/argos/passenger/psychologist,
		"Naturalist",
		"Ecologist",
		"Entertainer",
		"Sociologist",
		"Trainer")
	allowed_branches = list(/datum/mil_branch/misc)
	allowed_ranks = list(
		/datum/mil_rank/misc/civilian)

/datum/job/merchant
	title = "Merchant"
	department = "Civilian"
	department_flag = CIV
	total_positions = 2
	spawn_positions = 2
	availablity_chance = 30
	supervisors = "the invisible hand of the market"
	ideal_character_age = 30
	minimal_player_age = 0
	create_record = 0
	outfit_type = /decl/hierarchy/outfit/job/argos/merchant
	allowed_branches = list(
		/datum/mil_branch/misc,
		/datum/mil_branch/alien
	)
	allowed_ranks = list(
		/datum/mil_rank/misc/civilian,
		/datum/mil_rank/alien
	)
	latejoin_at_spawnpoints = 1
	access = list(access_merchant)
	announced = FALSE
	min_skill = list(   SKILL_FINANCE = SKILL_ADEPT,
	                    SKILL_PILOT	  = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 24
	required_language = null
	give_psionic_implant_on_join = FALSE
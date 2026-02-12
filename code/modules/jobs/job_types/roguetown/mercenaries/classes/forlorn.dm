/datum/advclass/mercenary/forlorn
	name = "Forlorn Hope Mercenary"
	tutorial = "You were a Templar of The Order of the Forlorn Hope, a holy order founded in the name of Noc and the banishment of the rot. \
	The Vakran Civil war has shattered the Order, raiding packs have torn apart your home like a rotting carcass... And so you wander \
	under Noc's holy moonlight, the last of a dying creed. Take up the banner and fight again in the name of the Ten, or use the pretense \
	of faith and zealotry to make ends meet by any means necessary."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/lupian,
		/datum/species/vulpkanin
	)
	outfit = /datum/outfit/job/roguetown/mercenary/forlorn
	class_select_category = CLASS_CAT_RACIAL
	min_pq = 2
	cmode_music = 'sound/music/combat_blackstar.ogg'
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_MEDIUMARMOR, TRAIT_NOPAINSTUN, TRAIT_STEELHEARTED) // Intentionally no silver blessing. No pain stun, you don't need to be a Psydonite to endure, not with what you've been through.
	subclass_stats = list(
		STATKEY_STR = 2,
		STATKEY_CON = 3,
		STATKEY_WIL = 3,
	)
	subclass_skills = list(
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/bows = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/crossbows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/maces = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/polearms = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/axes = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/alchemy = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/riding = SKILL_LEVEL_NOVICE,
	)
	extra_context = "This subclass gains Expert skill in their weapon of choice."

/datum/outfit/job/roguetown/mercenary/forlorn/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	neck = /obj/item/clothing/neck/roguetown/gorget/forlorncollar
	head = /obj/item/clothing/head/roguetown/helmet/heavy/volfplate
	pants = /obj/item/clothing/under/roguetown/splintlegs
	gloves = /obj/item/clothing/gloves/roguetown/fingerless_leather
	wrists = /obj/item/clothing/wrists/roguetown/splintarms
	belt = /obj/item/storage/belt/rogue/leather
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/light
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(
		/obj/item/rogueweapon/huntingknife,
		/obj/item/roguekey/mercenary,
		/obj/item/rogueweapon/scabbard/sheath,
		/obj/item/storage/belt/rogue/pouch/coins/poor
		)
	H.merctype = 5

/datum/outfit/job/roguetown/mercenary/forlorn
	has_loadout = TRUE

/datum/outfit/job/roguetown/mercenary/forlorn/choose_loadout(mob/living/carbon/human/H)
	. = ..()
	var/weapons = list("Warhammer",	"crossbow", )
	var/weapon_choice = input(H, "Choose your weapon.", "ARMS OF THE ORDER") as anything in weapons
	switch(weapon_choice)
		if("Warhammer & Shield")
			H.equip_to_slot_or_del(new /obj/item/rogueweapon/mace/warhammer/steel/silver, SLOT_BELT_R)
			H.equip_to_slot_or_del(new /obj/item/rogueweapon/shield/heater, SLOT_BACK_L)
			H.adjust_skillrank_up_to(/datum/skill/combat/maces, SKILL_LEVEL_EXPERT)
			H.adjust_skillrank_up_to(/datum/skill/combat/shields, SKILL_LEVEL_EXPERT)
		if("Longsword & Shield")
			H.equip_to_slot_or_del(new /obj/item/rogueweapon/sword/long/silver, SLOT_BELT_R)
			H.equip_to_slot_or_del(new /obj/item/rogueweapon/scabbard/sword, SLOT_BELT_L)
			H.equip_to_slot_or_del(new /obj/item/rogueweapon/shield/heater, SLOT_BACK_L)
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, SKILL_LEVEL_EXPERT)
			H.adjust_skillrank_up_to(/datum/skill/combat/shields, SKILL_LEVEL_EXPERT)
		if("Greataxe")
			H.equip_to_slot_or_del(new /obj/item/rogueweapon/greataxe/silver, SLOT_HANDS)
			H.equip_to_slot_or_del(new /obj/item/rogueweapon/scabbard/gwstrap, SLOT_BACK_L)
			H.adjust_skillrank_up_to(/datum/skill/combat/axes, SKILL_LEVEL_EXPERT)

/datum/advclass/mercenary/forlorn/illuminary
	name = "Forlorn Hope Illuminary"
	tutorial = "Once upon a time, you were blessed by the moon and stars, gifted of arcyne prowess, the finest young initiate to the Order. \
	Once upon a time, you were a mere peasant in a poor village, at night you'd look up to the moon and pray; there must be more to this world. \
	Once upon a time, you found yourself surrounded by death, the Monastery on fire, you couldn't live up to all they had hoped; and you learned \
	a valuable lesson all the same. \
	\
	To live in comfort is to know half of the truth. You were not special, you were nobody, you were ignorant. You know that now. You know this \
	world knows not of mercy, you know through fields of rot and death and desolation, that Once upon a time, when the end draws near you will \
	find yourself, met by moonlight, and pray; Let this be enough." 
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		/datum/species/lupian,
		/datum/species/vulpkanin
	)
	allowed_patrons = list(/datum/patron/divine/noc, /datum/patron/inhumen/zizo)
	outfit = /datum/outfit/job/roguetown/mercenary/forlorn
	class_select_category = CLASS_CAT_RACIAL
	min_pq = 2
	cmode_music = 'sound/music/combat_blackstar.ogg'
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_MAGEARMOR, TRAIT_ARCYNE_T3, TRAIT_NOPAINSTUN, TRAIT_STEELHEARTED)
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_WIL = 2,
		STATKEY_SPD = 2,
		STATKEY_CON = 1,
	)
	subclass_spellpoints = 15
	subclass_skills = list(
		/datum/skill/magic/arcane = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_MASTER,
		/datum/skill/misc/riding = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/alchemy = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/roguetown/mercenary/forlorn/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	neck = /obj/item/clothing/neck/roguetown/gorget/forlorncollar
	head = /obj/item/clothing/head/roguetown/helmet/heavy/volfplate
	pants = /obj/item/clothing/under/roguetown/splintlegs
	gloves = /obj/item/clothing/gloves/roguetown/fingerless_leather
	wrists = /obj/item/clothing/wrists/roguetown/splintarms
	belt = /obj/item/storage/belt/rogue/leather
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/light
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(
		/obj/item/roguekey/mercenary = 1,
		/obj/item/rogueweapon/huntingknife/idagger = 1,
		/obj/item/spellbook_unfinished/pre_arcyne = 1,
		/obj/item/rogueweapon/scabbard/sheath = 1,
		/obj/item/storage/belt/rogue/pouch/coins/poor
		)
	H.merctype = 5

	if(H.age == AGE_OLD)
		H.adjust_skillrank_up_to(/datum/skill/magic/arcane, 5, TRUE)
		H.change_stat(STATKEY_SPD, -1)
		H.change_stat(STATKEY_INT, 1)
		H.change_stat(STATKEY_PER, 1)
		H.mind?.adjust_spellpoints(4)
	if(H.mind) // FIX THIS
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/giants_strength)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/longstrider)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/guidance)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/haste)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/fortitude)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/forcewall/greater)


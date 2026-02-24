package clawsAndWeavers

#Fraction: {
	id: 	string
	name: 	string
	units: 	[...#Unit]
}

#Weavers : #Fraction & {
	id: 	"fraction.weavers"
	name: 	"Weavers"
	units: 	[...#Unit]
}

#Claws : #Fraction & {
	id: 	"fraction.claws"
	name: 	"Claws"
	units: 	[...#Unit]
}

#Unit: {
	id:           string
	name: 		  string
	value:        int
	health:       int
	actionPoints: int
	speed:        int
	defense:      int
	weapons: [...#Weapon]
	skills?: [...#Skill]
	cards: [...#CardWithCount]
	...
}

#Weaver: #Unit & {
	fraction: "Weavers"
	heartType: "buzzing" | "melted" | "wavy" | "pale"
	flowLimit: int
}

#Claw: #Unit & {
	fraction: "Claws"
}

#MeleeWeapon: {
	id: 		string
	weaponType: "melee"
	name:       string
	range:      1
	damage:     #Damage
}

#RangedWeapon: {
	id: 		string
	weaponType: "ranged"
	name:       string
	range:      int
	damage:     #Damage
}

#Weapon: #MeleeWeapon | #RangedWeapon

#Skill: {
	id: 		 string
	name:        string
	description: string
	type: "passive" | "active"
	subskills: [...#Skill]
}

#CardWithCount: {
	card:  #Card
	count: int
}

#Card: {
	id: 		 string
	name:        string
	description: string
	teachesSkill?: #Skill
}

#Damage: {
	type:              "unavoidable" | "avoidable"
	value:             #DiceRoll
	additionalDamage?: int
}

// Represents i.e count:2 die:4 means 2d4
#DiceRoll: {
	count: int & >0
	die:   4 | 20 // We only have d4 and d20 in game
}

#Terrains: {
	type: "packedEarth" | "grass" | "bushes" | "rocks" | "sand" | "water" | "snow" | "ice" | "swamp" | "lava" | "magma" 
	effects : [...#TerrainEffect]
	name: string
}

#TerrainEffect: {
	type: "hard" | "wet" | "sticky" | "masking" | "solid" | "hideout" | "slippery" | "burning"
	name: 			string
	description: string
}

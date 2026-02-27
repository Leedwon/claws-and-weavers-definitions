package clawsAndWeavers

fractions: [
	#Claws & {
		units: [
			adeptSzponow,
			szpon,
			fanatycznyTraper,
			fanatyk,
		]
	},
	#Weavers & {
		units: [
			buzujacyProfesorTermodynamiki,
			bladyStudent,
			stopionyStudent,
			utalentowanyMlodzieniecPale,
			utalentowanyMlodzieniecWavy,
			utalentowanyMlodzieniecMelted,
			utalentowanyMlodzieniecBuzzing,
		]
	},
]

adeptSzponow: #Claw & {
	id:           "claws.adeptszponow"
	name:         "Adept Szponów"
	value:        75
	health:       12
	actionPoints: 2
	speed:        8
	defense:      2
	weapons: [krotkiMieczAdepta]
	cards: [
		{
			card:  pomozMiDominatorz
			count: 1
		},
		{
			card:  bojeSieDominatorze
			count: 2
		},
	]
	skills: [
		bojeSieMistrzu,
		celujWeMnie,
	]
}

krotkiMieczAdepta: #MeleeWeapon & {
	id:   "claws.krotkimieczadepta"
	name: "krotki miecz adepta"
	damage: {
		type: "avoidable"
		value: {
			count: 2
			die:   4
		}
	}
}

pomozMiDominatorz: #Card & {
	id:          "claws.pomozmidominatorze"
	name:        "Pomoz mi dominatorze!"
	description: " Zużyj tę kartę zamiast żetonu fanatyzmu."
}

bojeSieDominatorze: #Card & {
	id:          "clas.bojesiedominatorze"
	name:        "Boje sie dominatorze"
	description: " Gdy wroga jednostka deklaruje zużycie punktu akcji, przed rozpatrzeniem tej akcji, przyjazna jednostka mająca tę wrogą jednostkę w Polu Wzroku, może przenieść swój żeton fanatyzmu na inną przyjazną jednostkę w Polu Wzroku."
}

bojeSieMistrzu: #Skill & {
	id:          "claws.bojesiemistrzu"
	name:        "Boje się mistrzu!"
	description: "Jako akcję możesz przekazać żeton fanatyzmu innej przyjaznej jednostce  w polu wzroku i zasięgu 6."
	type:        "active"
}

celujWeMnie: #Skill & {
	id:          "claws.celujwemnie"
	name:        "Celuj we mnie!"
	description: "Gdy wroga jednostka w polu wzroku deklaruje zużycie punktu akcji przed rozpatrzeniem tej akcji, zużyj żeton fanatyzmu, by rzucić w nią kamieniem (1d4, automatyczne trafienie). Jeśli jesteś w zasięgu i polu wzroku deklarowanej akcji przez wrogą jednostkę, jednostka musi zaatakować lub użyć umiejętności na tobie."
	type:        "active"
}

szpon: #Claw & {
	id:           "claws.szpon"
	name:         "Szpon"
	value:        100
	health:       14
	actionPoints: 3
	speed:        6
	defense:      2

	weapons: [
		zakonnyMieczSzpona,
		kuszaPodrecznaSzpona,
	]

	cards: [
		{
			card:  dominatorMnieProwadzi
			count: 1
		},
		{
			card:  metalKtoryJestDaremOdDominatora
			count: 2
		},
	]

	skills: [
		jaskolczeOstrze,
		sygnafor,
	]
}

zakonnyMieczSzpona: #MeleeWeapon & {
	id:         "claws.zakonnymiecz.szpon"
	weaponType: "melee"
	name:       "Zakonny miecz"
	range:      1
	damage: {
		type: "avoidable"
		value: {
			count: 2
			die:   4
		}
	}
}

kuszaPodrecznaSzpona: #RangedWeapon & {
	id:         "claws.kuszapodreczna.szpon"
	weaponType: "ranged"
	name:       "Kusza podręczna"
	range:      2
	damage: {
		type: "avoidable"
		value: {
			count: 1
			die:   4
		}
	}
}

jaskolczeOstrze: #Skill & {
	id:          "claws.szpon.jaskolczeostrze"
	name:        "Jaskółcze Ostrze"
	description: "Klinga zakonnego miecza jest stworzona z Jaskółczej Stali i trafienie nią daje efekty Jaskółczej Stali."
	type:        "passive"
}

sygnafor: #Skill & {
	id:          "claws.szpon.sygnafor"
	name:        "Sygnafor"
	description: "Jako akcja możesz na stałe zmienić tryb działania pierścienia. Blokowanie jest domyślnym trybem."
	type:        "active"
	subskills: [
		blokowanie,
		wykrywanie,
	]
}

blokowanie: #Skill & {
	id:          "claws.szpon.blokowanie"
	name:        "Blokowanie"
	description: "Pole, na którym stoi jednostka, jest liczone jako posiadające następujące Efekty Pola: Pokryte Jaskółczą Stalą oraz Maskujące."
	type:        "passive"
}

wykrywanie: #Skill & {
	id:          "claws.szpon.wykrywanie"
	name:        "Wykrywanie"
	description: "Gdy wroga jednostka deklaruje że czerpie lub wykorzystuje umiejętność wymagającą przepływu w odległości maksymalnie 6 kafelków, po rozpatrzeniu deklarowanej akcji, jednostka może wykorzystać żeton fanatyzmu by wykonać darmową akcję ruchu o wartości 2 punkty Szybkości lub wykonać atak w zwarciu na jednostkę wykorzystującą przepływ."
	type:        "active"
}

dominatorMnieProwadzi: #Card & {
	id:          "claws.card.dominatormnieprowadzi"
	name:        "Dominator mnie prowadzi!"
	description: "Zużyj żeton fanatyzmu zamiast Punktu Akcji."
}

metalKtoryJestDaremOdDominatora: #Card & {
	id:          "claws.card.metalktoryjestdaremoddominatora"
	name:        "Metal, który jest darem od Dominatora"
	description: "Gdy przyjazna jednostka deklaruje zużycie punktu akcji w celu ataku lub trafi atakiem, zużyj żeton fanatyzmu, aby jej broń była pokryta jaskółczą stalą w czasie tego ataku."
}

fanatycznyTraper: #Claw & {
	id:           "claws.fanatycznytraper"
	name:         "Fanatyczny Traper"
	value:        75
	health:       9
	actionPoints: 3
	speed:        8
	defense:      0

	weapons: [
		sztyletTrapera,
		krotkiZakonnyLukTrapera,
	]

	cards: [
		{
			card:  dominatorzeZlapieIchDlaCiebie
			count: 1
		},
		{
			card:  widzeHeretyka
			count: 2
		},
	]

	skills: [
		pulapkiNaHeretykow,
	]
}

sztyletTrapera: #MeleeWeapon & {
	id:         "claws.sztylet.traper"
	weaponType: "melee"
	name:       "Sztylet"
	range:      1
	damage: {
		type: "avoidable"
		value: {
			count: 1
			die:   4
		}
	}
}

krotkiZakonnyLukTrapera: #RangedWeapon & {
	id:         "claws.krotkizakonnyluk.traper"
	weaponType: "ranged"
	name:       "Krótki zakonny łuk"
	range:      3
	damage: {
		type: "avoidable"
		value: {
			count: 1
			die:   4
		}
	}
}

pulapkiNaHeretykow: #Skill & {
	id:          "claws.traper.pulapkinaheretykow"
	name:        "Pułapki na heretyków!"
	type:        "active"
	description: "Jednostka posiada do rozstawienia 2 kafelki ukrytej pułapki: 1 aktywna, 1 nieaktywna. Jako akcję możesz wystawić 1 pułapkę na pustym kafelku sąsiadującym z tą jednostką."
}

dominatorzeZlapieIchDlaCiebie: #Card & {
	id:          "claws.card.dominatorzezlapieichdlaciebie"
	name:        "Dominatorze, złapie ich dla ciebie!"
	description: "Gdy przyjazna jednostka deklaruje zużycie punktu akcji, zużyj punkt fanatyzmu, by ustawić nieaktywną pułapkę na pustym kafelku sąsiadującym z tą jednostką."
}

widzeHeretyka: #Card & {
	id:          "claws.card.widzeheretyka"
	name:        "Widzę Heretyka!"
	description: "Na początku aktywacji zużyj punkt fanatyzmu, by dać do końca tury broni dystansowej aktywowanej jednostki: +1 szansy na trafienie."
}

fanatyk: #Claw & {
	id:           "claws.fanatyk"
	name:         "Fanatyk"
	value:        50
	health:       8
	actionPoints: 2
	speed:        9
	defense:      0

	weapons: [kolczastyBiczPokutny]

	cards: [
		{card: zbawieniePoprzezCierpienie, count: 1},
		{card: panMnieWybral, count: 2},
	]
}

kolczastyBiczPokutny: #MeleeWeapon & {
	id:         "claws.weapon.kolczastybiczpokutny"
	weaponType: "melee"
	name:       "Kolczasty bicz pokutny"
	range:      1
	damage: {
		type:             "avoidable"
		value:            {count: 1, die: 4}
		additionalDamage: 1
	}
}

zbawieniePoprzezCierpienie: #Card & {
	id:          "claws.card.zbawieniepoprzezcierpienie"
	name:        "ZBAWIENIE POPRZEZ CIERPIENIE!"
	description: "Na początku aktywacji zużyj punkt fanatyzmu by zaatakować w zwarciu samego siebie (automatycznie trafienie), a następnie przeciwnika."
}

panMnieWybral: #Card & {
	id:          "claws.card.panmniewybral"
	name:        "PAN MNIE WYBRAŁ!"
	description: "Po zadeklarowaniu szarży zużyj punkt fanatyzmu, by w tej akcji móc szarżować przez kafelki zwiększające Poziom Wysokość. Koszt tej szarży wynosi 1 punkt akcji."
}

buzujacyProfesorTermodynamiki: #Weaver & {
	id:           "weavers.buzujacyprofesortermodynamiki"
	name:         "Buzujący Profesor Termodynamiki"
	value:        100
	health:       14
	actionPoints: 3
	speed:        6
	defense:      1

	heartType: "buzzing"
	flowLimit: 20

	weapons: [krotkiNozProfesora]

	cards: [
		{card: zlotaKulaPociskPostepu, count: 1},
		{card: zlotaKulaZaawansowanaPiromancja, count: 1},
		{card: krysztalKwarcowyPomaranczowy, count: 1},
	]

	skills: [
		pociskPostepu,
		piromancja,
	]
}

krotkiNozProfesora: #MeleeWeapon & {
	id:         "weavers.weapon.krotkinozprofesora"
	weaponType: "melee"
	name:       "Krótki nóż profesora"
	range:      1
	damage: {
		type:  "avoidable"
		value: {count: 1, die: 4}
	}
}

pociskPostepu: #Skill & {
	id:          "weavers.skill.pociskpostepu"
	name:        "Pocisk postępu"
	type:        "active"
	description: "Zużyj punkt akcji oraz minimum 4pt przepływu aby wykonać atak dystansowy o zasięgu 2 oraz 1 punkcie obrażeń nieuchronnych. Za każde zużyte 4 punkty przepływu otrzymuje: +1 do trafienia, +1 do zasięgu, 1d4 obrażeń nieuchronnych."
}

piromancja: #Skill & {
	id:          "weavers.skill.piromancja"
	name:        "Piromancja"
	type:        "active"
	description: "Zużyj punkt akcji aby wykorzystać 1 punkt przepływu i podpalić kafelek w zasięgu wzroku i dystansie 2."
}

zlotaKulaPociskPostepu: #Card & {
	id:          "weavers.card.zlotakula.pociskpostepu"
	name:        "Złota Kula"
	description: "Zużyj punkt akcji, by dać na stałe jednostce z buzującym lub stopionym sercem przepływu umiejętność: Pocisk postępu (wariant wzmocniony)."
	teachesSkill: #Skill & {
		id:          "weavers.skill.pociskpostepu.zlotakula"
		name:        "Pocisk postępu"
		type:        "active"
		description: "Zużyj punkt akcji oraz minimum 4pt przepływu aby wykonać atak dystansowy o zasięgu 2 oraz 1 punkcie obrażeń nieuchronnych. Za każde zużyte 4 punkty przepływu otrzymuje: +2 do trafienia, +1 do zasięgu, 1d4+1 obrażeń nieuchronnych."
	}
}

zlotaKulaZaawansowanaPiromancja: #Card & {
	id:          "weavers.card.zlotakula.zaawansowanapiromancja"
	name:        "Złota Kula"
	description: "Zużyj punkt akcji, by dać na stałe jednostce z buzującym lub stopionym sercem przepływu umiejętność: Zaawansowana piromancja."
	teachesSkill: #Skill & {
		id:          "weavers.skill.zaawansowanapiromancja.zlotakula"
		name:        "Zaawansowana piromancja"
		type:        "active"
		description: "Za każde zużyte 4 punkty przepływu podpal kafelek w zasięgu wzroku oraz dystansie 2 i zadaj 1d4 obrażeń przepływowych stojącej na nim jednostce."
	}
}

krysztalKwarcowyPomaranczowy: #Card & {
	id:          "weavers.card.krysztalkwarcowy.pomaranczowy"
	name:        "Kryształ kwarcowy - Pomarańczowy"
	description: "Na początku aktywacji użyj tej karty, aby dać aktywowanej jednostce z buzującym lub stopionym sercem przepływu 4 punkty przepływu."
}

bladyStudent: #Weaver & {
	id:           "weavers.bladystudent"
	name:         "Blady Student"
	value:        75
	health:       8
	actionPoints: 3
	speed:        6
	defense:      1

	heartType: "pale"
	flowLimit: 20

	weapons: [pierscienZKolcem]

	cards: [
		{card: checDoNauki, count: 1},
		{card: krysztalKwarcowyFioletowy, count: 2},
	]

	skills: [
		naprawaTkanki,
	]
}

pierscienZKolcem: #MeleeWeapon & {
	id:         "weavers.weapon.pierscienzkolcem"
	weaponType: "melee"
	name:       "Pierścień z kolcem"
	range:      1
	damage: {
		type:  "avoidable"
		value: {count: 1, die: 4}
	}
}

naprawaTkanki: #Skill & {
	id:          "weavers.skill.naprawatkanki"
	name:        "Naprawa tkanki"
	type:        "active"
	description: "Zużyj punkt akcji aby za każde zużyte 4 punkty przepływu wyleczyć 1d4+1 zdrowia sąsiadującej jednostce."
}

checDoNauki: #Card & {
	id:          "weavers.card.checdoNauki"
	name:        "Chęć do nauki"
	description: "Jako akcja dobierz z talii 4 karty i zostaw na ręce jedną z nich."
}

krysztalKwarcowyFioletowy: #Card & {
	id:          "weavers.card.krysztalkwarcowy.fioletowy"
	name:        "Kryształ kwarcowy - Fioletowy"
	description: "Na początku aktywacji użyj tej karty, aby dać aktywowanej jednostce z bladym lub stopionym sercem przepływu 4 punkty przepływu."
}

stopionyStudent: #Weaver & {
	id:           "weavers.stopionystudent"
	name:         "Stopiony Student"
	value:        75
	health:       7
	actionPoints: 3
	speed:        7
	defense:      0

	heartType: "melted"
	flowLimit: 20

	weapons: [nozStudenta]

	cards: [
		{card: checDoNauki, count: 1},
		{card: krysztalKwarcowyBialy, count: 2},
	]

	skills: [
		torbaStopionego,
	]
}

nozStudenta: #MeleeWeapon & {
	id:         "weavers.weapon.nozstudenta"
	weaponType: "melee"
	name:       "Nóż studenta"
	range:      1
	damage: {
		type:  "avoidable"
		value: {count: 1, die: 4}
	}
}

torbaStopionego: #Skill & {
	id:          "weavers.skill.torbastopionego"
	name:        "Torba Stopionego"
	type:        "active"
	description: "Zużyj punkt akcji aby dobrać dwie karty i jedną odrzuć."
}

krysztalKwarcowyBialy: #Card & {
	id:          "weavers.card.krysztalkwarcowy.bialy"
	name:        "Kryształ kwarcowy -ą Biały"
	description: "Na początku aktywacji użyj tej karty, aby dać aktywowanej jednostce z dowolnym sercem przepływu 2 punkty przepływu."
}

rozbitaButelka: #MeleeWeapon & {
	id:         "weavers.weapon.rozbitabutelka"
	weaponType: "melee"
	name:       "Rozbita butelka"
	range:      1
	damage: {
		type:  "avoidable"
		value: {count: 1, die: 4}
	}
}

utalentowanyMlodzieniecPale: #Weaver & {
	id:           "weavers.utalentowanymlodzieniec.pale"
	name:         "Blady Utalentowany Młodzieniec"
	value:        50
	health:       8
	actionPoints: 2
	speed:        8
	defense:      0

	heartType: "pale"
	flowLimit: 20

	weapons: [rozbitaButelka]

	cards: [
		{card: krysztalKwarcowyFioletowy, count: 3},
	]

	skills: []
}

utalentowanyMlodzieniecWavy: #Weaver & {
	id:           "weavers.utalentowanymlodzieniec.wavy"
	name:         "Falujący Utalentowany Młodzieniec"
	value:        50
	health:       8
	actionPoints: 2
	speed:        8
	defense:      0

	heartType: "wavy"
	flowLimit: 20

	weapons: [rozbitaButelka]

	cards: [
		{card: krysztalKwarcowyNiebieski, count: 3},
	]

	skills: []
}

krysztalKwarcowyNiebieski: #Card & {
	id:          "weavers.card.krysztalkwarcowy.niebieski"
	name:        "Kryształ kwarcowy - Niebieski"
	description: "Na początku aktywacji użyj tej karty, aby dać aktywowanej jednostce z falującym lub stopionym sercem przepływu 4 punkty przepływu."
}

utalentowanyMlodzieniecMelted: #Weaver & {
	id:           "weavers.utalentowanymlodzieniec.melted"
	name:         "Stopiony Utalentowany Młodzieniec"
	value:        50
	health:       8
	actionPoints: 2
	speed:        8
	defense:      0

	heartType: "melted"
	flowLimit: 20

	weapons: [rozbitaButelka]

	cards: [
		{card: krysztalKwarcowyBialy, count: 3},
	]

	skills: []
}

utalentowanyMlodzieniecBuzzing: #Weaver & {
	id:           "weavers.utalentowanymlodzieniec.buzzing"
	name:         "Buzujący Utalentowany Młodzieniec"
	value:        50
	health:       8
	actionPoints: 2
	speed:        8
	defense:      0

	heartType: "buzzing"
	flowLimit: 20

	weapons: [rozbitaButelka]

	cards: [
		{card: krysztalKwarcowyPomaranczowy, count: 3},
	]

	skills: []
}

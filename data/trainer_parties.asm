TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw Juggler1Data
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw PunkData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw LarsData
	dw TobiasData
	dw LtSurgeData
	dw MaxineData
	dw HughData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData
	dw LoggerData
	dw WyldaData

; if first byte != FF, then
	; first byte is level (of all pokemon on this team) ; MOD: UNUSED FOR NOW
	; all the next bytes are pokemon species
	; null-terminated
	; MOD: -------------------
	; must list 8 species, encounter picks 3 random from the list (repeats allowed!)
	; a surprise every time!
	; three sets per trainer allow for evolving mons to be evolved at appropriate points. 
	;
	; Slot1: L8-15, for 0-1 badges. unevolved mons 
	; Slot2: L16-23, for 2 badges. 3-stage mons evolved once. 2-stage stone mons evolved.
	; Slot3: L24-30, for 3 badges. 2-stage evolved, 3-stage still middle
	; Slot4: L30+, for 4+ badges. all mons fully evolved.
	
; if first byte == FF, then
	; first byte is FF (obviously)
	; every next two bytes are a level and species
	; null-terminated
	; MOD: THIS IS HOW YOU FORCE A SPECIFIC TEAM, I use this for gym leaders and set rival fights.
	; any set-party sets should come AFTER the randomly generated pools

	
YoungsterData: ;common field mons
	
	db 1,RATTATA,	EKANS,	PIDGEY,		ZUBAT,	SANDSHREW,	METAPOD,	NIDORAN_M,	NIDORAN_F,0
	db 1,RATTATA,	EKANS,	PIDGEOTTO,	ZUBAT,	SANDSHREW,	BUTTERFREE,	NIDORINO,	NIDORINA,0
	db 1,RATICATE,	ARBOK,	PIDGEOTTO,	GOLBAT,	SANDSLASH,	BUTTERFREE,	NIDORINO,	NIDORINA,0
	db 1,RATICATE,	ARBOK,	PIDGEOT,	GOLBAT,	SANDSLASH,	BUTTERFREE,	NIDOKING,	NIDOQUEEN,0

BugCatcherData: ; bugs

	db 1,KAKUNA,	METAPOD,	VENONAT,	PINSIR,		SCYTHER,	KABUTO,		KRABBY,		PARAS,0
	db 1,BEEDRILL,	BUTTERFREE,	VENONAT,	PINSIR,		SCYTHER,	KABUTO,		KRABBY,		PARAS,0
	db 1,BEEDRILL,	BUTTERFREE, VENOMOTH,	PINSIR,		SCYTHER,	KABUTOPS,	KINGLER,	PARASECT,0
	db 1,BEEDRILL,	BUTTERFREE, VENOMOTH,	PINSIR,		SCYTHER,	KABUTOPS,	KINGLER,	PARASECT,0
	
LassData: ;common "cute" mons

	db 1,NIDORAN_F,	CATERPIE,	PIKACHU,	CLEFAIRY,	ODDISH,		JIGGLYPUFF,		PONYTA,		SEEL,0
	db 1,NIDORINA,	BUTTERFREE,	RAICHU,		CLEFAIRY,	GLOOM,		JIGGLYPUFF,		PONYTA,		SEEL,0
	db 1,NIDORINA,	BUTTERFREE,	RAICHU,		CLEFABLE,	GLOOM,		WIGGLYTUFF,		RAPIDASH,	DEWGONG,0
	db 1,NIDOQUEEN,	BUTTERFREE,	RAICHU,		CLEFABLE,	VILEPLUME,	WIGGLYTUFF,		RAPIDASH,	DEWGONG,0

SailorData: ; nautical/island themed mons

	db 1,MACHOP,	SHELLDER,	TENTACOOL, 	EXEGGCUTE, 	STARYU, 	KRABBY, 	OMANYTE,	MANKEY,0
	db 1,MACHOKE,	SHELLDER,	TENTACOOL, 	EXEGGCUTE, 	STARYU, 	KRABBY, 	OMANYTE,	MANKEY,0
	db 1,MACHOKE,	CLOYSTER,	TENTACRUEL, EXEGGUTOR, 	STARMIE, 	KINGLER, 	OMASTAR,	PRIMEAPE,0
	db 1,MACHAMP,	CLOYSTER,	TENTACRUEL, EXEGGUTOR, 	STARMIE, 	KINGLER, 	OMASTAR,	PRIMEAPE,0

JrTrainerMData: ; MOD: ADVENTURER (m), varied elemental teams (set A)

	db 1,NIDORAN_M,	MANKEY,		CUBONE, 	MAGNEMITE, 	DROWZEE, 	POLIWAG, 	BELLSPROUT,	GROWLITHE,0
	db 1,NIDORINO,	MANKEY,		CUBONE, 	MAGNEMITE, 	DROWZEE, 	POLIWHIRL, 	WEEPINBELL,	GROWLITHE,0
	db 1,NIDORINO,	PRIMEAPE,	MAROWAK,	MAGNETON, 	HYPNO, 		POLIWHIRL, 	WEEPINBELL,	ARCANINE,0
	db 1,NIDOKING,	PRIMEAPE,	MAROWAK,	MAGNETON, 	HYPNO, 		POLIWRATH, 	VICTREEBEL,	ARCANINE,0
	
JrTrainerFData: ; MOD: ADVENTURER (f), varied elemental teams (set B)

	db 1,NIDORAN_F,	DODUO,		DIGLETT, 	VOLTORB, 	MEOWTH, 	PSYDUCK, 	ODDISH,		VULPIX,0
	db 1,NIDORINA,	DODUO,		DIGLETT, 	VOLTORB, 	MEOWTH, 	PSYDUCK, 	GLOOM,		VULPIX,0
	db 1,NIDORINA,	DODRIO,		DUGTRIO,	ELECTRODE, 	PERSIAN, 	GOLDUCK, 	GLOOM,		NINETALES,0
	db 1,NIDOQUEEN,	DODRIO,		DUGTRIO,	ELECTRODE, 	PERSIAN, 	GOLDUCK, 	VILEPLUME,	NINETALES,0
	
PokemaniacData: ; oddball mons, psychic leaning

	db 1,JYNX,		ABRA,		LICKITUNG, 	SLOWPOKE,   MR_MIME, 	FARFETCHD, 	TANGELA,	DITTO,0
	db 1,JYNX,		KADABRA,	LICKITUNG, 	SLOWPOKE,   MR_MIME, 	FARFETCHD, 	TANGELA,	DITTO,0
	db 1,JYNX,		KADABRA,	LICKITUNG, 	SLOWBRO, 	MR_MIME, 	SNORLAX, 	TANGELA,	DITTO,0
	db 1,JYNX,		ALAKAZAM,	LICKITUNG, 	SLOWBRO, 	MR_MIME, 	SNORLAX, 	TANGELA,	DITTO,0
	
SuperNerdData: ; Weird dual-types 

	db 1,SLOWPOKE,	ODDISH,		GASTLY, 	EXEGGCUTE, 	OMANYTE, 	KOFFING, 	VENONAT,	PORYGON,0
	db 1,SLOWPOKE,	GLOOM,		HAUNTER, 	EXEGGCUTE, 	OMANYTE, 	KOFFING, 	VENONAT,	PORYGON,0
	db 1,SLOWBRO,	GLOOM,		HAUNTER, 	EXEGGUTOR, 	OMASTAR, 	WEEZING, 	VENOMOTH,	PORYGON,0
	db 1,SLOWBRO,	VILEPLUME,	GENGAR, 	EXEGGUTOR, 	OMASTAR, 	WEEZING, 	VENOMOTH,	PORYGON,0
	
HikerData: ; mountain/cave mons

	db 1,GEODUDE,	GROWLITHE,	ONIX, 		MACHOP, 	RHYHORN, 	DIGLETT, 	EKANS,		ZUBAT,0
	db 1,GRAVELER,	GROWLITHE,	ONIX, 		MACHOKE, 	RHYHORN, 	DIGLETT, 	EKANS,		ZUBAT,0
	db 1,GRAVELER,	ARCANINE,	ONIX, 		MACHOKE, 	RHYDON, 	DUGTRIO, 	ARBOK,		GOLBAT,0
	db 1,GOLEM,		ARCANINE,	ONIX, 		MACHAMP, 	RHYDON, 	DUGTRIO, 	ARBOK,		GOLBAT,0
	
BikerData: ; "tough" mons?

	db 1,KOFFING,	SNORLAX,	GEODUDE, 	KRABBY, 	SCYTHER, 	ELECTABUZZ, 	MAGMAR,	TAUROS,0
	db 1,KOFFING,	SNORLAX,	GRAVELER, 	KRABBY, 	SCYTHER, 	ELECTABUZZ, 	MAGMAR,	TAUROS,0
	db 1,WEEZING,	SNORLAX,	GRAVELER, 	KINGLER, 	SCYTHER, 	ELECTABUZZ, 	MAGMAR,	TAUROS,0
	db 1,WEEZING,	SNORLAX,	GOLEM, 		KINGLER, 	SCYTHER, 	ELECTABUZZ, 	MAGMAR,	TAUROS,0

BurglarData: ; thieving tools

	db 1,GASTLY,	KOFFING,	DIGLETT, 	GROWLITHE, 	VOLTORB, 	DROWZEE, 	TANGELA,	DITTO,0
	db 1,HAUNTER,	KOFFING,	DIGLETT, 	GROWLITHE, 	VOLTORB, 	DROWZEE, 	TANGELA,	DITTO,0
	db 1,HAUNTER,	WEEZING,	DUGTRIO, 	ARCANINE, 	ELECTRODE, 	HYPNO, 		TANGELA,	DITTO,0
	db 1,GENGAR,	WEEZING,	DUGTRIO, 	ARCANINE, 	ELECTRODE, 	HYPNO, 		TANGELA,	DITTO,0
	
EngineerData: ; electric, metal, utility types

	db 1,MAGNEMITE,	VOLTORB,	DITTO, 		ABRA, 		PORYGON, 	MR_MIME, 	ELECTABUZZ,	KRABBY,0
	db 1,MAGNEMITE,	VOLTORB,	DITTO, 		KADABRA, 	PORYGON, 	MR_MIME, 	ELECTABUZZ,	KRABBY,0
	db 1,MAGNETON,	ELECTRODE,	DITTO, 		KADABRA, 	PORYGON, 	MR_MIME, 	ELECTABUZZ,	KINGLER,0
	db 1,MAGNETON,	ELECTRODE,	DITTO, 		ALAKAZAM, 	PORYGON, 	MR_MIME, 	ELECTABUZZ,	KINGLER,0
	
JugglerData:
Juggler1Data: ;circular mons

	db 1,EXEGGCUTE,	GASTLY,		VOLTORB, 	OMANYTE, 	POLIWAG, 	GEODUDE, 	KOFFING,	JIGGLYPUFF,0
	db 1,EXEGGCUTE,	HAUNTER,	VOLTORB, 	OMANYTE, 	POLIWHIRL, 	GRAVELER, 	KOFFING,	JIGGLYPUFF,0
	db 1,EXEGGUTOR,	HAUNTER,	ELECTRODE, 	OMASTAR, 	POLIWHIRL, 	GRAVELER, 	WEEZING,	WIGGLYTUFF,0
	db 1,EXEGGUTOR,	GENGAR,		ELECTRODE, 	OMASTAR, 	POLIWRATH, 	GOLEM, 		WEEZING,	WIGGLYTUFF,0

FisherData: ; fish mon

	db 1,GOLDEEN,	SHELLDER,	SLOWPOKE, 	TENTACOOL, 	MAGIKARP, 	KRABBY, 	OMANYTE,	KABUTO,0
	db 1,GOLDEEN,	SHELLDER,	SLOWPOKE, 	TENTACOOL, 	GYARADOS, 	KRABBY, 	OMANYTE,	KABUTO,0
	db 1,SEAKING,	CLOYSTER,	SLOWBRO, 	TENTACRUEL, GYARADOS, 	KINGLER, 	OMASTAR,	KABUTOPS,0
	db 1,SEAKING,	CLOYSTER,	SLOWBRO, 	TENTACRUEL, GYARADOS, 	KINGLER, 	OMASTAR,	KABUTOPS,0
	
SwimmerData: ; sea mon that are less like fish (so many water types omg)

	db 1,HORSEA,	SHELLDER,	LAPRAS, 	STARYU, 	OMANYTE, 	PSYDUCK, 	TENTACOOL,	SQUIRTLE,0
	db 1,HORSEA,	SHELLDER,	LAPRAS, 	STARYU, 	OMANYTE, 	PSYDUCK, 	TENTACOOL,	WARTORTLE,0
	db 1,SEADRA,	CLOYSTER,	LAPRAS, 	STARMIE, 	OMASTAR, 	GOLDUCK, 	TENTACRUEL,	WARTORTLE,0
	db 1,SEADRA,	CLOYSTER,	LAPRAS, 	STARMIE, 	OMASTAR, 	GOLDUCK, 	TENTACRUEL,	BLASTOISE,0
	
CueBallData: ; MOD: Mystic, elemental mons and spirits

	db 1,VAPOREON,	BULBASAUR,	JOLTEON, 	CHARMANDER, FLAREON, 	SQUIRTLE, 	GASTLY,		ABRA,0
	db 1,VAPOREON,	IVYSAUR,	JOLTEON, 	CHARMELEON, FLAREON, 	WARTORTLE, 	HAUNTER,	KADABRA,0
	db 1,VAPOREON,	IVYSAUR,	JOLTEON, 	CHARMELEON, FLAREON, 	WARTORTLE, 	HAUNTER,	KADABRA,0
	db 1,VAPOREON,	VENUSAUR,	JOLTEON, 	CHARIZARD, 	FLAREON, 	BLASTOISE, 	GENGAR,		ALAKAZAM,0
	
GamblerData: ; lucky/random/money mons

	db 1,MEOWTH,	MEOWTH,		CLEFAIRY, 	CLEFAIRY, 	CHANSEY, 	CHANSEY, 	EEVEE,		VOLTORB,0
	db 1,MEOWTH,	FLAREON,	CLEFAIRY, 	VAPOREON, 	CHANSEY, 	CHANSEY, 	JOLTEON,	VOLTORB,0
	db 1,PERSIAN,	FLAREON,	CLEFABLE, 	VAPOREON, 	CHANSEY, 	CHANSEY, 	JOLTEON,	ELECTRODE,0
	db 1,PERSIAN,	FLAREON,	CLEFABLE, 	VAPOREON, 	CHANSEY, 	CHANSEY, 	JOLTEON,	ELECTRODE,0
	
BeautyData: ; idk hrh

	db 1,MEOWTH,	ODDISH,		JYNX, 		GOLDEEN, 	DODUO, 		PONYTA, 	NIDORAN_F,		VULPIX,0
	db 1,MEOWTH,	GLOOM,		JYNX, 		GOLDEEN, 	DODUO, 		PONYTA, 	NIDORINA,		VULPIX,0
	db 1,PERSIAN,	GLOOM,		JYNX, 		SEAKING, 	DODRIO, 	RAPIDASH, 	NIDORINA,		NINETALES,0
	db 1,PERSIAN,	VILEPLUME,	JYNX, 		SEAKING, 	DODRIO, 	RAPIDASH, 	NIDOQUEEN,		NINETALES,0

PsychicData: ; TODO: mod to cultist/witch

	db 1,ABRA,		GASTLY,		STARYU, 	DROWZEE, 	PARAS, 		MR_MIME, 	TENTACOOL,		SLOWPOKE,0
	db 1,KADABRA,	HAUNTER,	STARYU, 	DROWZEE, 	PARAS, 		MR_MIME, 	TENTACOOL,		SLOWPOKE,0
	db 1,KADABRA,	HAUNTER,	STARMIE,	HYPNO, 		PARASECT, 	MR_MIME, 	TENTACRUEL,		SLOWBRO,0
	db 1,ALAKAZAM,	GENGAR,		STARMIE,	HYPNO, 		PARASECT, 	MR_MIME, 	TENTACRUEL,		SLOWBRO,0
	
PunkData: ;MOD: ToughGuy, intimidating mons 

	db 1,SANDSHREW,	KAKUNA,		EKANS, 		MACHOP, 	SPEAROW, 	PINSIR, 	SQUIRTLE,		CUBONE,0
	db 1,SANDSHREW,	BEEDRILL,	EKANS, 		MACHOKE, 	SPEAROW, 	PINSIR, 	WARTORTLE,		CUBONE,0
	db 1,SANDSLASH,	BEEDRILL,	ARBOK, 		MACHOKE, 	FEAROW, 	PINSIR, 	WARTORTLE,		MAROWAK,0
	db 1,SANDSLASH,	BEEDRILL,	ARBOK, 		MACHAMP, 	FEAROW, 	PINSIR, 	BLASTOISE,		MAROWAK,0
	
TamerData: ;TODO: mod to explorer, safari mons

	db 1,SANDSHREW,	EKANS,		RHYHORN, 	PARAS, 		GROWLITHE, 	MEOWTH, 	TAUROS,		KANGASKHAN,0
	db 1,SANDSHREW,	EKANS,		RHYHORN, 	PARAS, 		GROWLITHE, 	MEOWTH, 	TAUROS,		KANGASKHAN,0
	db 1,SANDSLASH,	ARBOK,		RHYDON, 	PARASECT, 	ARCANINE, 	PERSIAN, 	TAUROS,		KANGASKHAN,0
	db 1,SANDSLASH,	ARBOK,		RHYDON, 	PARASECT, 	ARCANINE, 	PERSIAN, 	TAUROS,		KANGASKHAN,0
	
BirdKeeperData: ;birds

	db 1,PIDGEY,	SPEAROW,	FARFETCHD, 	DODUO, 		PSYDUCK, 	SPEAROW, 	FARFETCHD,	DODUO,0
	db 1,PIDGEOTTO,	SPEAROW,	FARFETCHD, 	DODUO, 		PSYDUCK, 	SPEAROW, 	FARFETCHD,	DODUO,0
	db 1,PIDGEOT,	FEAROW,		FARFETCHD, 	DODRIO, 	GOLDUCK,	FEAROW, 	FARFETCHD, 	DODRIO,0 
	db 1,PIDGEOT,	FEAROW,		FARFETCHD, 	DODRIO, 	GOLDUCK,	ARTICUNO, 	ZAPDOS, 	MOLTRES,0 ; hrh
	
BlackbeltData: ; punching/kicking mons

	db 1,HITMONLEE,	HITMONCHAN,	PINSIR,		POLIWAG,	MANKEY, 	MACHOP, 	KANGASKHAN, MACHOP,0
	db 1,HITMONLEE,	HITMONCHAN,	PINSIR,		POLIWHIRL,	MANKEY, 	MACHOKE, 	KANGASKHAN,	MACHOKE,0
	db 1,HITMONLEE,	HITMONCHAN,	PINSIR,		POLIWHIRL,	PRIMEAPE, 	MACHOKE, 	KANGASKHAN, MACHOKE,0
	db 1,HITMONLEE,	HITMONCHAN,	PINSIR,		POLIWRATH,	PRIMEAPE, 	MACHAMP, 	KANGASKHAN, MACHAMP,0
	
Green1Data: ; RIVAL

	db $FF,9,VULPIX,9,POLIWAG,9,MACHOP,9,DROWZEE,9,GASTLY,9,DRATINI,0 ; 0 badge
	db $FF,15,NINETALES,15,GYARADOS,15,MACHOKE,15,KADABRA,15,HAUNTER,15,DRAGONAIR,0 ; 1 badge
	db $FF,25,NINETALES,25,GYARADOS,25,MACHAMP,25,ALAKAZAM,25,GENGAR,25,DRAGONAIR,0 ; 2 badges
	db $FF,30,NINETALES,30,GYARADOS,30,MACHAMP,30,ALAKAZAM,30,GENGAR,30,DRAGONITE,0 ; 3+ badges

	; starter battles
	db $FF,5,SQUIRTLE,0
	db $FF,5,BULBASAUR,0
	db $FF,5,CHARMANDER,0
	
	; viridian early encounter, doubles down on countering your starter to make sure you caught something else
	db $FF,7,SQUIRTLE,7,POLIWAG,0
	db $FF,7,BULBASAUR,7,PIKACHU,0
	db $FF,7,CHARMANDER,7,PIDGEY,0

ProfOakData: ; oak is a tryhard

	db $FF,30,TAUROS,30,EXEGGUTOR,30,SNORLAX,30,CHANSEY,30,STARMIE,30,ALAKAZAM,0 ;
	
ChiefData:
ScientistData:	 ;science helper mons mons
	db 1,MAGNEMITE,	VOLTORB,	MAGMAR, 	GRIMER, 	ELECTABUZZ, PORYGON, 	MR_MIME,	DITTO,0
	db 1,MAGNEMITE,	VOLTORB,	MAGMAR, 	GRIMER, 	ELECTABUZZ, PORYGON, 	MR_MIME,	DITTO,0
	db 1,MAGNETON,	ELECTRODE,	MAGMAR, 	MUK, 		ELECTABUZZ, PORYGON, 	MR_MIME,	DITTO,0
	db 1,MAGNETON,	ELECTRODE,	MAGMAR, 	MUK, 		ELECTABUZZ, PORYGON, 	MR_MIME,	DITTO,0
	
GiovanniData: ;TODO: mod to Atticus, Fuchsia gym leader

	db $FF,10,TAUROS,10,SCYTHER,10,RHYHORN,10,CHANSEY,10,KANGASKHAN,10,PONYTA,0 ; 0 badge
	db $FF,18,TAUROS,18,SCYTHER,18,RHYHORN,18,CHANSEY,18,KANGASKHAN,18,PONYTA,0 ; 1 badge
	db $FF,25,TAUROS,25,SCYTHER,25,RHYDON,25,CHANSEY,25,KANGASKHAN,25,RAPIDASH,0 ; 2 badges
	db $FF,30,TAUROS,30,SCYTHER,30,RHYDON,30,CHANSEY,30,KANGASKHAN,30,RAPIDASH,0 ; 3+ badges
	
RocketData: ; TODO: replace with Myth Hunter

	db 1,DRATINI,	MAGIKARP,	FARFETCHD, 	LICKITUNG, 	LAPRAS, 	OMANYTE, 	KABUTO,		AERODACTYL,0
	db 1,DRAGONAIR,	GYARADOS,	KANGASKHAN, CHANSEY, 	LAPRAS, 	OMANYTE, 	KABUTO,		AERODACTYL,0
	db 1,DRAGONAIR,	GYARADOS,	ARTICUNO, 	ZAPDOS, 	MOLTRES,	OMASTAR, 	KABUTOPS,	AERODACTYL,0
	db 1,DRAGONITE,	GYARADOS,	ARTICUNO, 	ZAPDOS, 	MOLTRES,	OMASTAR, 	KABUTOPS,	AERODACTYL,0
	
CooltrainerMData: ; serious mons (set 1)

	db 1,BULBASAUR,	CHARMANDER,	SQUIRTLE, 	DRATINI,	KABUTO, 	HITMONCHAN, TAUROS,	RHYHORN,0
	db 1,IVYSAUR,	CHARMELEON,	WARTORTLE,	DRAGONAIR,	KABUTO, 	HITMONCHAN, TAUROS,	RHYHORN,0
	db 1,IVYSAUR,	CHARMELEON,	WARTORTLE,	DRAGONAIR,	KABUTOPS, 	HITMONCHAN, TAUROS,	RHYDON,0
	db 1,VENUSAUR,	CHARIZARD,	BLASTOISE,	DRAGONITE,	KABUTOPS, 	HITMONCHAN, TAUROS,	RHYDON,0
	
CooltrainerFData: ; serious mons (set 2)

	db 1,JOLTEON,	FLAREON,	VAPOREON, 	DROWZEE,	BELLSPROUT, HITMONLEE, JYNX,	GEODUDE,0
	db 1,JOLTEON,	FLAREON,	VAPOREON,	DROWZEE,	WEEPINBELL, HITMONLEE, JYNX,	GRAVELER,0
	db 1,JOLTEON,	FLAREON,	VAPOREON,	HYPNO,		WEEPINBELL, HITMONLEE, JYNX,	GRAVELER,0
	db 1,JOLTEON,	FLAREON,	VAPOREON,	HYPNO,		VICTREEBEL, HITMONLEE, JYNX,	GOLEM,0
	
WyldaData: ; Viridian gym leader, growth-themed

	db $FF,10,BEEDRILL,10,PARAS,10,EXEGGCUTE,10,ODDISH,10,BULBASAUR,10,BELLSPROUT,0 ; 0 badge
	db $FF,18,BEEDRILL,18,PARAS,18,EXEGGCUTE,18,GLOOM,18,IVYSAUR,18,WEEPINBELL,0 ; 1 badge
	db $FF,25,BEEDRILL,25,PARASECT,25,EXEGGUTOR,25,VILEPLUME,25,VENUSAUR,25,VICTREEBEL,0 ; 2 badges
	db $FF,30,BEEDRILL,30,PARASECT,30,EXEGGUTOR,30,VILEPLUME,30,VENUSAUR,30,VICTREEBEL,0 ; 3+ badges
	
LoggerData: ; mod: woodsman

	db 1,MACHOP,	MANKEY,		KOFFING,	GRIMER,	PARAS,		FARFETCHD,	CHARMANDER,	GROWLITHE,0
	db 1,MACHOKE,	MANKEY,		KOFFING,	GRIMER,	PARAS,		FARFETCHD,	CHARMELEON,	GROWLITHE,0
	db 1,MACHOKE,	PRIMEAPE,	WEEZING,	MUK,	PARASECT,	FARFETCHD,	CHARMELEON,	ARCANINE,0
	db 1,MACHAMP,	PRIMEAPE,	WEEZING,	MUK,	PARASECT,	FARFETCHD,	CHARIZARD,	ARCANINE,0
	
LarsData: ; Pewter gym leader, mountain themed
	db $FF,10,DIGLETT,10,NIDORAN_M,10,GEODUDE,10,MACHOP,10,RHYHORN,10,ONIX,0 ; 0 badge
	db $FF,18,DUGTRIO,18,NIDORINO,18,GRAVELER,18,MACHOKE,18,RHYHORN,18,ONIX,0  ; 1 badge
	db $FF,25,DUGTRIO,25,NIDOKING,25,GOLEM,25,MACHAMP,25,RHYDON,25,ONIX,0 ; 2 badges
	db $FF,30,DUGTRIO,30,NIDOKING,30,GOLEM,30,MACHAMP,30,RHYDON,30,ONIX,0 ; 3+ badges
	
TobiasData: ; Cerulean gym leader, speed themed
	db $FF,10,VOLTORB,10,ELECTABUZZ,10,AERODACTYL,10,DODUO,10,TAUROS,10,PONYTA,0 ; 0 badge
	db $FF,18,VOLTORB,18,ELECTABUZZ,18,AERODACTYL,18,DODUO,18,TAUROS,18,PONYTA,0 ; 1 badge
	db $FF,25,ELECTRODE,25,JOLTEON,25,AERODACTYL,25,DODRIO,25,PERSIAN,25,RAPIDASH,0 ; 2 badges
	db $FF,30,ELECTRODE,30,JOLTEON,30,AERODACTYL,30,DODRIO,30,PERSIAN,30,RAPIDASH,0 ; 3+ badges
	
LtSurgeData: ; Vermilion gym leader, TODO: mod to Tori, mermaid performer
	db $FF,10,SHELLDER,10,STARYU,10,GYARADOS,10,OMANYTE,10,HORSEA,10,SEEL,0 ; 0 badge
	db $FF,18,SHELLDER,18,STARYU,18,GYARADOS,18,OMANYTE,18,HORSEA,18,SEEL,0 ; 1 badge
	db $FF,25,CLOYSTER,25,STARMIE,25,GYARADOS,25,OMASTAR,25,SEADRA,25,DEWGONG,0 ; 2 badges
	db $FF,30,CLOYSTER,30,STARMIE,30,GYARADOS,30,OMASTAR,30,SEADRA,30,DEWGONG,0 ; 3+ badges
	
MaxineData:; Celadon gym leader, TODO: mod to Maxine, chief research scientist 
	db $FF,10,DITTO,10,VOLTORB,10,KOFFING,10,MAGNEMITE,10,GRIMER,10,PORYGON,0 ; 0 badge
	db $FF,18,DITTO,18,VOLTORB,18,KOFFING,18,MAGNEMITE,18,GRIMER,18,PORYGON,0 ; 1 badge
	db $FF,25,DITTO,25,ELECTRODE,25,WEEZING,25,MAGNETON,25,MUK,25,PORYGON,0 ; 2 badges	
	db $FF,30,DITTO,30,ELECTRODE,30,WEEZING,30,MAGNETON,30,MUK,30,PORYGON,0 ; 3+ badges	
	
HughData: ; Saffron gym leader, TODO: mod to Hugh, mayor of pkmn/human city
	db $FF,10,HITMONCHAN,10,JYNX,10,HITMONLEE,10,MR_MIME,10,MACHOP,10,ABRA,0 ; 0 badge
	db $FF,18,HITMONCHAN,18,JYNX,18,HITMONLEE,18,MR_MIME,18,MACHOKE,18,KADABRA,0 ; 1 badge
	db $FF,25,HITMONCHAN,25,JYNX,25,HITMONLEE,25,MR_MIME,25,MACHAMP,25,ALAKAZAM,0 ; 2 badges	
	db $FF,30,HITMONCHAN,30,JYNX,30,HITMONLEE,30,MR_MIME,30,MACHAMP,30,ALAKAZAM,0 ; 3+ badges	
	
BlaineData: ; Lavender town gym leader, TODO: mod to Aster, occultist
	db $FF,10,STARYU,10,EKANS,10,ODDISH,10,TENTACOOL,10,ABRA,10,GASTLY,0 ; 0 badge
	db $FF,18,STARMIE,18,ARBOK,18,GLOOM,18,TENTACRUEL,18,KADABRA,18,HAUNTER,0 ; 1 badge
	db $FF,25,STARMIE,25,ARBOK,25,VILEPLUME,25,TENTACRUEL,25,ALAKAZAM,25,GENGAR,0 ; 2 badges
	db $FF,30,STARMIE,30,ARBOK,30,VILEPLUME,30,TENTACRUEL,30,ALAKAZAM,30,GENGAR,0 ; 3+ badges
	
GentlemanData: ;idc

	db 1,GROWLITHE,	MAGMAR,	PIKACHU, 	SNORLAX,	POLIWAG,  	ODDISH, 	VULPIX,		PONYTA,0
	db 1,GROWLITHE,	MAGMAR,	PIKACHU, 	SNORLAX,	POLIWHIRL,  GLOOM, 		VULPIX,		PONYTA,0
	db 1,ARCANINE,	MAGMAR,	RAICHU, 	SNORLAX,	POLIWHIRL,  GLOOM,		NINETALES,	RAPIDASH,0
	db 1,ARCANINE,	MAGMAR,	RAICHU, 	SNORLAX,	POLIWRATH,  VILEPLUME,	NINETALES,	RAPIDASH,0
	
SabrinaData: ; TODO: something with this slot
Green2Data:  ; TODO: something with this slot
Green3Data:  ; TODO: something with this slot
LoreleiData: ; TODO: something with this slot
AgathaData:  ; TODO: something with this slot	
LanceData:   ; TODO: something with this slot
BrunoData:   ; TODO: replace with something interesting 
	db 1,MEW,	MEW,	MEW, 	MEW,	MEW, 	MEW, MEW,	MEW,0
	db 1,MEW,	MEW,	MEW, 	MEW,	MEW, 	MEW, MEW,	MEW,0
	db 1,MEW,	MEW,	MEW, 	MEW,	MEW, 	MEW, MEW,	MEW,0
	
ChannelerData: ; cultist

	db 1,GASTLY,	GASTLY,		GASTLY, 	EKANS,	DITTO, 	TENTACOOL,	STARYU,		OMANYTE,0
	db 1,HAUNTER,	GASTLY,		HAUNTER, 	EKANS,	DITTO, 	TENTACOOL,	STARYU,		OMANYTE,0
	db 1,HAUNTER,	HAUNTER,	HAUNTER, 	ARBOK,	DITTO, 	TENTACRUEL,	STARMIE,	OMASTAR,0
	db 1,GENGAR,	GENGAR,		GENGAR, 	ARBOK,	DITTO, 	TENTACRUEL,	STARMIE,	OMASTAR,0
	
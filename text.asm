INCLUDE "charmap.asm"

INCLUDE "constants/text_constants.asm"

TEXT_1  EQU $20
TEXT_2  EQU TEXT_1 + 1
TEXT_3  EQU TEXT_2 + 1
TEXT_4  EQU TEXT_3 + 1
TEXT_5  EQU TEXT_4 + 1
TEXT_6  EQU TEXT_5 + 1
TEXT_7  EQU TEXT_6 + 1
TEXT_8  EQU TEXT_7 + 1
TEXT_9  EQU TEXT_8 + 1
TEXT_10 EQU TEXT_9 + 1
TEXT_11 EQU TEXT_10 + 1

POKEDEX_TEXT EQU TEXT_11 + 1
MOVE_NAMES   EQU POKEDEX_TEXT + 1

INCLUDE "macros.asm"

INCLUDE "hram.asm"


SECTION "Text 1", ROMX ; BANK $20

_CardKeySuccessText1::
	text "Bingo!@@"

_CardKeySuccessText2::
	text ""
	line "The CARD KEY"
	cont "opened the door!"
	done

_CardKeyFailText::
	text "Darn! It needs a"
	line "CARD KEY!"
	done

_TrainerNameText::
	TX_RAM wcd6d
	text ": @@"

_NoNibbleText::
	text "Not even a nibble!"
	prompt

_NothingHereText::
	text "Looks like there's"
	line "nothing here."
	prompt

_ItsABiteText::
	text "Oh!"
	line "It's a bite!"
	prompt

_ExclamationText::
	text "!"
	done

_GroundRoseText::
	text "uu"
	done

_BoulderText::
	text "This requires"
	line "STRENGTH to move!"
	done

_MartSignText::
	text "All your item"
	line "needs fulfilled!"
	cont "#MART"
	done

_PokeCenterSignText::
	text "Heal Your #MON!"
	line "#MON CENTER"
	done

_FoundItemText::
	text "<PLAYER> found"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_NoMoreRoomForItemText::
	text "No more room for"
	line "items!"
	done

_OaksAideHiText::
	text "Hi! Remember me?"
	line "I help PROF. OAK"
	cont "with field tasks!"
	
	para "He wants to check"
	line "in on the project"
	cont "he sent you on!"

	para "If you've got @"
	TX_NUM hOaksAideRequirement, 1, 3
	text ""
	line "kinds of #MON,"
	cont "I've got a"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text " to"
	cont "help you out!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " kinds of"
	cont "#MON?"
	done

_OaksAideUhOhText::
	text "Let's see..."
	line "Only @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text "?"
	cont "Come on, you"
	cont "can do better!"

	para "I want to see"
	line "you get at"
	cont "least @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " kinds"
	cont "if you want the"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideComeBackText::
	text "Oh. I see."

	para "When you get @"
	TX_NUM hOaksAideRequirement, 1, 3
	text ""
	line "kinds, come back"
	cont "for a @"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideHereYouGoText::
	text "Nice work,"
	line "<PLAYER>!"

	para "Here you go!"
	prompt

_OaksAideGotItemText::
	text "<PLAYER> got the"
	line "@"
	TX_RAM wOaksAideRewardItemName
	text "!@@"

_OaksAideNoRoomText::
	text "Oh! I see you"
	line "don't have any"
	cont "room for the"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

INCLUDE "text/maps/ViridianForest.asm"
INCLUDE "text/maps/MtMoon1F.asm"
INCLUDE "text/maps/MtMoonB1F.asm"
INCLUDE "text/maps/MtMoonB2F.asm"
INCLUDE "text/maps/SSAnne1F.asm"
INCLUDE "text/maps/SSAnne2F.asm"
INCLUDE "text/maps/SSAnne3F.asm"
INCLUDE "text/maps/SSAnneBow.asm"
INCLUDE "text/maps/SSAnneKitchen.asm"
INCLUDE "text/maps/SSAnneCaptainsRoom.asm"
INCLUDE "text/maps/SSAnne1FRooms.asm"
INCLUDE "text/maps/SSAnne2FRooms.asm"
INCLUDE "text/maps/SSAnneB1FRooms.asm"
INCLUDE "text/maps/VictoryRoad3F.asm"
INCLUDE "text/maps/RocketHideoutB1F.asm"
INCLUDE "text/maps/RocketHideoutB2F.asm"
INCLUDE "text/maps/RocketHideoutB3F.asm"
INCLUDE "text/maps/RocketHideoutB4F.asm"
INCLUDE "text/maps/RocketHideoutElevator.asm"
INCLUDE "text/maps/SilphCo2F.asm"
INCLUDE "text/maps/SilphCo3F.asm"
INCLUDE "text/maps/SilphCo4F.asm"
INCLUDE "text/maps/SilphCo5F.asm"


SECTION "Text 2", ROMX ; BANK $21

INCLUDE "text/maps/SilphCo5F_2.asm"
INCLUDE "text/maps/SilphCo6F.asm"
INCLUDE "text/maps/SilphCo7F.asm"
INCLUDE "text/maps/SilphCo8F.asm"
INCLUDE "text/maps/SilphCo9F.asm"
INCLUDE "text/maps/SilphCo10F.asm"
INCLUDE "text/maps/SilphCo11F.asm"
INCLUDE "text/maps/PokemonMansion2F.asm"
INCLUDE "text/maps/PokemonMansion3F.asm"
INCLUDE "text/maps/PokemonMansionB1F.asm"
INCLUDE "text/maps/SafariZoneEast.asm"
INCLUDE "text/maps/SafariZoneNorth.asm"
INCLUDE "text/maps/SafariZoneWest.asm"
INCLUDE "text/maps/SafariZoneCenter.asm"
INCLUDE "text/maps/SafariZoneCenterRestHouse.asm"
INCLUDE "text/maps/SafariZoneSecretHouse.asm"
INCLUDE "text/maps/SafariZoneWestRestHouse.asm"
INCLUDE "text/maps/SafariZoneEastRestHouse.asm"
INCLUDE "text/maps/SafariZoneNorthRestHouse.asm"
INCLUDE "text/maps/CeruleanCaveB1F.asm"
INCLUDE "text/maps/VictoryRoad1F.asm"
INCLUDE "text/maps/LancesRoom.asm"
INCLUDE "text/maps/HallOfFame.asm"
INCLUDE "text/maps/ChampionsRoom.asm"
INCLUDE "text/maps/LoreleisRoom.asm"
INCLUDE "text/maps/BrunosRoom.asm"
INCLUDE "text/maps/AgathasRoom.asm"
INCLUDE "text/maps/RockTunnelB1F.asm"


SECTION "Text 3", ROMX ; BANK $22

INCLUDE "text/maps/RockTunnelB1F_2.asm"
INCLUDE "text/maps/SeafoamIslandsB4F.asm"

_AIBattleWithdrawText::
	TX_RAM wTrainerName
	text " with-"
	line "drew @"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_AIBattleUseItemText::
	TX_RAM wTrainerName
	text ""
	line "used @"
	TX_RAM wcd6d
	text ""
	cont "on @"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	TX_RAM wcf4b
	text " went"
	line "to @"
	TX_RAM wGrassRate
	text "."
	done

_TradeForText::
	text "For <PLAYER>'s"
	line "@"
	TX_RAM wcf4b
	text ","
	done

_TradeSendsText::
	TX_RAM wGrassRate
	text " sends"
	line "@"
	TX_RAM wcd6d
	text "."
	done

_TradeWavesFarewellText::
	TX_RAM wGrassRate
	text " waves"
	line "farewell as"
	done

_TradeTransferredText::
	TX_RAM wcd6d
	text " is"
	line "transferred."
	done

_TradeTakeCareText::
	text "Take good care of"
	line "@"
	TX_RAM wcd6d
	text "."
	done

_TradeWillTradeText::
	TX_RAM wGrassRate
	text " will"
	line "trade @"
	TX_RAM wcd6d
	text ""
	done

_TradeforText::
	text "for <PLAYER>'s"
	line "@"
	TX_RAM wcf4b
	text "."
	done

_PlaySlotMachineText::
	text "uu"
	done

_OutOfCoinsSlotMachineText::
	text "uu"
	done

_BetHowManySlotMachineText::
	text "uu"
	done

_StartSlotMachineText::
	text "uu"
	done

_NotEnoughCoinsSlotMachineText::
	text "uu"
	prompt

_OneMoreGoSlotMachineText::
	text "uu"
	done

_LinedUpText::
	text "uu"
	done

_NotThisTimeText::
	text "Not this time!"
	prompt

_YeahText::
	text "Yeah!@@"

_DexSeenOwnedText::
	text "#DEX   Seen:@"
	TX_NUM wDexRatingNumMonsSeen, 1, 3
	text ""
	line "         Owned:@"
	TX_NUM wDexRatingNumMonsOwned, 1, 3
	db "@"

_DexRatingText::
	text "#DEX Rating", $6d
	done

_GymStatueText1::
	TX_RAM wGymCityName
	text ""
	line "#MON GYM"
	cont "LEADER: @"
	TX_RAM wGymLeaderName
	text ""

	para "WINNING TRAINERS:"
	line "<RIVAL>"
	done

_GymStatueText2::
	TX_RAM wGymCityName
	text ""
	line "#MON GYM"
	cont "LEADER: @"
	TX_RAM wGymLeaderName
	text ""

	para "WINNING TRAINERS:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "#MON CENTERs"
	line "in KANTO don't"
	cont "mess around!"
	
	para "I'm in and out in"
	line "seconds. No chit-"
	cont "chat. It's great!"
	done

_PewterCityPokecenterGuyText::
	text "There's a guy"
	line "that sells rocks"
	cont "up the road, at"
	cont "the MT. MOON"
	cont "#MON CENTER."
	
	para "If I could get"
	line "away with being"
	cont "a rock salesman"
	cont "then I wouldn't"
	cont "be here!"
	done

_CeruleanPokecenterGuyText::
	text "Being a TRAINER"
	line "looks tough."
	
	para "You gotta like,"
	line "take care of a"
	cont "living creature."
	
	para "Feed it..."
    line "train it..."
	
	para "And then some of"
	line "these maniacs get"
	cont "like, 6 of them."
	
	para "I mean, what?!"
	line "Right?!"
	
	para "I can barely keep"
	line "a schedule!"
	
	done

_LavenderPokecenterGuyText::
	text "CUBONEs wear"
	line "skulls, right?"

	para "That's pretty"
	line "metal. Imagine if"
	cont "you wore a skull."
	
	para "How would it fit"
	line "though? What a"
	cont "mystery."
	done

_MtMoonPokecenterBenchGuyText::
	text "Gotta' catch 'em"
	line "all, they said."
	
	para "It will be fun,"
	line "they said."
	done

_RockTunnelPokecenterGuyText::
	text "I heard people"
	line "get lost and die"
	cont "in ROCK TUNNEL."
	
	para "Oh, you're going"
	line "there, too?"
	cont "Hahah... well,"
	cont "you'll be fine!"
	
	para "Probably!"
	done

_UnusedBenchGuyText1::
	text "uu1"
	done

_UnusedBenchGuyText2::
	text "uu2"
	done

_UnusedBenchGuyText3::
	text "uu3"
	done

_VermilionPokecenterGuyText::
	text "I wish I could"
	line "catch #MON,"
	cont "but I can't."
	
	para "Why? Because I'm"
	line "a quitter. Don't"
	cont "be like me!"
	done

_CeladonCityPokecenterGuyText::
	text "We really need"
	line "roads. #MON"
	cont "get in the way!"
	
	para "Have you been to"
	line "the zone between"
	cont "SAFFRON? #MON"
	cont "just run around"
	cont "town... like"
	cont "animals!"
	
	para "... I mean, I"
	line "guess they are,"
	cont "but..."
	done

_FuchsiaCityPokecenterGuyText::
	text "Haven't I seen"
	line "you before? Ever"
	cont "been on TV?"
	
	para "Maybe that was"
	line "someone else."
	
	para "I guess it'd"
	line "have to have"
	cont "been someone"
	cont "else if it"
	cont "wasn't you."
	
	para "Anyway, thanks"
	line "for chatting."
	done

_CinnabarPokecenterGuyText::
	text "Wouldn't it be"
	line "awful if the volcano"
	cont "errupted? Good"
	cont "thing that will"
	cont "never happen."
	done

_SaffronCityPokecenterGuyText1::
	text "#MON trainers"
	line "must have cool"
	cont "catchphrases."
	
	para "What's yours?"
	
	para "Mine would be..."
	
	para "IT'S #MON"
	line "TIME!!!"
	done

_SaffronCityPokecenterGuyText2::
	text "Sorry buddy, this"
	line "space is reserved."
	done

_CeladonCityHotelText::
	text "My sis brought me"
	line "on this vacation!"
	done

_BookcaseText::
	text "Crammed full of"
	line "#MON books!"
	done

_NewBicycleText::
	text "A shiny new"
	line "BICYCLE!"
	done

_PushStartText::
	text "There are some"
	line "samples being"
	cont "scienced here."
	
	para "You're not a"
	line "scientist, so"
	cont "that's the best"
	cont "description you"
	cont "can muster."
	done

_SaveOptionText::
	text "It's a map of KANTO"
	line "with different"
	cont "areas in various"
	cont "colors."
	
	para "It seems to be"
	line "based on #MON"
	cont "population."
	done

_StrengthsAndWeaknessesText::
	text "All #MON types"
	line "have strong and"
	cont "weak points"
	cont "against others."
	done

_TimesUpText::
	text "PA: Ding-dong!"

	para "Time's up!"
	prompt

_GameOverText::
	text "PA: Your SAFARI"
	line "GAME is over!"
	done

_CinnabarGymQuizIntroText::
	text "Quiz Time!"
	prompt

_CinnabarQuizQuestionsText1::
	text "q1"
	done

_CinnabarQuizQuestionsText2::
	text "q2"
	done

_CinnabarQuizQuestionsText3::
	text "q3"
	done

_CinnabarQuizQuestionsText4::
	text "q4"
	done

_CinnabarQuizQuestionsText5::
	text "q5"
	done

_CinnabarQuizQuestionsText6::
	text "q6"
	done

_CinnabarGymQuizCorrectText::
	text "You're absolutely"
	line "correct!"

	para "Go on through!@@"

_CinnabarGymQuizIncorrectText::
	text "Sorry! Bad call!"
	prompt

_MagazinesText::
	text "#MON magazines!"

	para "#MON notebooks!"

	para "#MON graphs!"
	done

_BillsHouseMonitorText::
	text "TELEPORTER is"
	line "displayed on the"
	cont "PC monitor."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> initiated"
	line "TELEPORTER's Cell"
	cont "Separator!@@"

_BillsHousePokemonListText1::
	text "BILL's favorite"
	line "#MON list!"
	prompt

_BillsHousePokemonListText2::
	text "Which #MON do"
	line "you want to see?"
	done

_OakLabEmailText::
	text "There's an e-mail"
	line "message here!"

	para "..."

	para "Wait, why am I"
	line "reading OAK's"
	cont "emails?!"
	done

_GameCornerCoinCaseText::
	text "uu"
	done

_GameCornerNoCoinsText::
	text "uu"
	done

_GameCornerOutOfOrderText::
	text "uu"
	done

_GameCornerOutToLunchText::
	text "uu"
	done

_GameCornerSomeonesKeysText::
	text "uu"
	done

_JustAMomentText::
	text "Just a moment."
	done

TMNotebookText::
	text "..."

_TurnPageText::
	text "Turn the page?"
	done

_ViridianSchoolNotebookText5::
	text "GIRL: Hey! Don't"
	line "look at my notes!@@"

_ViridianSchoolNotebookText1::
	text "..." 
	prompt

_ViridianSchoolNotebookText2::
	text "..." 
	prompt

_ViridianSchoolNotebookText3::
	text "..." 
	prompt

_ViridianSchoolNotebookText4::
	text "..." 
	prompt

_EnemiesOnEverySideText::
	text "Enemies on every"
	line "side!"
	done

_WhatGoesAroundComesAroundText::
	text "What goes around"
	line "comes around!"
	done

_FightingDojoText::
	text "FIGHTING DOJO"
	done

_IndigoPlateauHQText::
	text "INDIGO PLATEAU"
	line "#MON LEAGUE HQ"
	done

_RedBedroomSNESText::
	text "uu"
	done

_Route15UpstairsBinocularsText::
	text "Looked into the"
	line "binoculars..."

	para "A large, shining"
	line "bird is flying"
	cont "toward the sea."
	done

_AerodactylFossilText::
	text "AERODACTYL Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

_KabutopsFossilText::
	text "KABUTOPS Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

_LinkCableHelpText1::
	text "..." 
	prompt
	prompt

_LinkCableHelpText2::
	text "..."
	done

_LinkCableInfoText1::
	text "..." 
	prompt

_LinkCableInfoText2::
	text "..." 
	prompt

_LinkCableInfoText3::
	text "..." 
	prompt

_ViridianSchoolBlackboardText1::
	text "..." 
	prompt

_ViridianSchoolBlackboardText2::
	text "..."
	done

_ViridianBlackboardSleepText::
	text "..." 
	prompt

_ViridianBlackboardPoisonText::
	text "..." 
	prompt

_ViridianBlackboardPrlzText::
	text "..." 
	prompt

_ViridianBlackboardBurnText::
	text "..." 
	prompt

_ViridianBlackboardFrozenText::
	text "..." 
	prompt

_VermilionGymTrashText::
	text "Nope, there's"
	line "only trash here."
	done

_VermilionGymTrashSuccessText1::
	text "Hey! There's a"
	line "switch under the"
	cont "trash!"
	cont "Turn it on!"

	para "The 1st electric"
	line "lock opened!@@"

_VermilionGymTrashSuccessText2::
	text "Hey! There's"
	line "another switch"
	cont "under the trash!"
	cont "Turn it on!"
	prompt

_VermilionGymTrashSuccessText3::
	text "The 2nd electric"
	line "lock opened!"

	para "The motorized door"
	line "opened!@@"

_VermilionGymTrashFailText::
	text "Nope! There's"
	line "only trash here."
	cont "Hey! The electric"
	cont "locks were reset!@@"

_FoundHiddenItemText::
	text "<PLAYER> found"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_HiddenItemBagFullText::
	text "But, <PLAYER> has"
	line "no more room for"
	cont "other items!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> found"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@@"

_FoundHiddenCoins2Text::
	text "<PLAYER> found"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@@"

_DroppedHiddenCoinsText::
	text "uu"
	done

_IndigoPlateauStatuesText1::
	text "INDIGO PLATEAU"
	prompt

_IndigoPlateauStatuesText2::
	text "The ultimate goal"
	line "of trainers!"
	cont "#MON LEAGUE HQ"
	done

_IndigoPlateauStatuesText3::
	text "The highest"
	line "#MON authority"
	cont "#MON LEAGUE HQ"
	done

_PokemonBooksText::
	text "Crammed full of"
	line "#MON books!"
	done

_DiglettSculptureText::
	text "It's a sculpture"
	line "of DIGLETT."
	done

_ElevatorText::
	text "This is an"
	line "elevator."
	done

_TownMapText::
	text "A TOWN MAP.@@"

_PokemonStuffText::
	text "Wow! Tons of"
	line "#MON stuff!"
	done

_OutOfSafariBallsText::
	text "PA: Ding-dong!"

	para "You are out of"
	line "SAFARI BALLs!"
	prompt

_WildRanText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	text ""
	line "ran!"
	prompt

_EnemyRanText::
	text "Enemy @"
	TX_RAM wEnemyMonNick
	text ""
	line "ran!"
	prompt

_HurtByPoisonText::
	text "<USER>"
	line "suffers poison!"
	prompt

_HurtByBurnText::
	text "<USER>'s"
	line "burn stings!"
	prompt

_HurtByLeechSeedText::
	text "LEECH SEED saps"
	line "<USER>!"
	prompt

_EnemyMonFaintedText::
	text "Enemy @"
	TX_RAM wEnemyMonNick
	text ""
	line "fainted!"
	prompt

_MoneyForWinningText::
	text "<PLAYER> got ¥@"
	TX_BCD wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text ""
	line "for winning!"
	prompt

_TrainerDefeatedText::
	text "<PLAYER> defeated"
	line "@"
	TX_RAM wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	TX_RAM wBattleMonNick
	text ""
	line "fainted!"
	prompt

_UseNextMonText::
	text "Use next #MON?"
	done

_Sony1WinText::
	text "<RIVAL>: Come on,"
	line "<PLAYER>. I need"
	cont "SOMEONE to keep"
	cont "me sharp."
	
	para "Maybe this whole"
	line "#MON thing"
	cont "isn't for you."

	prompt

_PlayerBlackedOutText2::
	text "All of <PLAYER>'s"
	line "#MON have"
	cont "been defeated!"

	para "<PLAYER> escaped"
	line "the battle!"
	prompt

_LinkBattleLostText::
	text "<PLAYER> lost to"
	line "@"
	TX_RAM wTrainerName
	text "!"
	prompt

_TrainerAboutToUseText::
	TX_RAM wTrainerName
	text " is"
	line "about to use"
	cont"@"
	TX_RAM wEnemyMonNick
	text "!"

	para "Will <PLAYER>"
	line "change #MON?"
	done

_TrainerSentOutText::
	TX_RAM wTrainerName
	text " sent"
	line "out @"
	TX_RAM wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "Unable to battle!"
	prompt

_CantEscapeText::
	text "The #MON"
	line "continued chase!"
	cont "Can't escape!"
	prompt

_NoRunningText::
	text "I can't give up!"
	line "Not now!"
	prompt

_GotAwayText::
	text "Got away safely!"
	prompt

_ItemsCantBeUsedHereText::
	text "Items can't be"
	line "used here."
	prompt

_AlreadyOutText::
	TX_RAM wBattleMonNick
	text " is"
	line "already out!"
	prompt

_MoveNoPPText::
	text "No PP left for"
	line "this move!"
	prompt

_MoveDisabledText::
	text "The move is"
	line "disabled!"
	prompt

_NoMovesLeftText::
	TX_RAM wBattleMonNick
	text " is"
	line "exhausted!"
	done

_MultiHitText::
	text "Hit the enemy"
	line "@"
	TX_NUM wPlayerNumHits,1,1
	text " times!"
	prompt

_ScaredText::
	TX_RAM wBattleMonNick
	text " is too"
	line "scared to move!"
	prompt

_GetOutText::
	text "GHOST: Get out..."
	line "Get out..."
	prompt

_FastAsleepText::
	text "<USER>"
	line "is fast asleep!"
	prompt

_WokeUpText::
	text "<USER>"
	line "woke up!"
	prompt

_IsFrozenText::
	text "<USER>"
	line "is frozen solid!"
	prompt

_FullyParalyzedText::
	text "<USER>'s"
	line "fully paralyzed!"
	prompt

_FlinchedText::
	text "<USER>"
	line "flinched!"
	prompt

_MustRechargeText::
	text "<USER>"
	line "must recharge!"
	prompt

_DisabledNoMoreText::
	text "<USER>'s"
	line "disabled no more!"
	prompt

_IsConfusedText::
	text "<USER>"
	line "is confused!"
	prompt

_HurtItselfText::
	text "It hurt itself in"
	line "its confusion!"
	prompt

_ConfusedNoMoreText::
	text "<USER>'s"
	line "confused no more!"
	prompt

_SavingEnergyText::
	text "<USER>"
	line "is saving energy!"
	prompt

_UnleashedEnergyText::
	text "<USER>"
	line "unleashed energy!"
	prompt

_ThrashingAboutText::
	text "<USER>'s"
	line "thrashing about!"
	done

_AttackContinuesText::
	text "<USER>'s"
	line "attack continues!"
	done

_CantMoveText::
	text "<USER>"
	line "can't move!"
	prompt

_MoveIsDisabledText::
	text "<USER>'s"
	line "@"
	TX_RAM wcd6d
	text " is"
	cont "disabled!"
	prompt

_MonName1Text::
	text "<USER>@@"

_Used1Text::
	text ""
	line "used @@"

_Used2Text::
	text ""
	line "used @@"

_InsteadText::
	text "instead,"
	cont "@@"

_CF4BText::
	TX_RAM wcf4b
	text "@"

_ExclamationPoint1Text::
	text "!"
	done

_ExclamationPoint2Text::
	text "!"
	done

_ExclamationPoint3Text::
	text "!"
	done

_ExclamationPoint4Text::
	text "!"
	done

_ExclamationPoint5Text::
	text "!"
	done

_AttackMissedText::
	text "<USER>'s"
	line "attack missed!"
	prompt

_KeptGoingAndCrashedText::
	text "<USER>"
	line "kept going and"
	cont "crashed!"
	prompt

_UnaffectedText::
	text "<TARGET>'s"
	line "unaffected!"
	prompt

_DoesntAffectMonText::
	text "It doesn't affect"
	line "<TARGET>!"
	prompt

_CriticalHitText::
	text "Critical hit!"
	prompt

_OHKOText::
	text "One-hit KO!"
	prompt

_LoafingAroundText::
	TX_RAM wBattleMonNick
	text " is"
	line "loafing around."
	prompt

_BeganToNapText::
	TX_RAM wBattleMonNick
	text " began"
	line "to nap!"
	prompt

_WontObeyText::
	TX_RAM wBattleMonNick
	text " won't"
	line "obey!"
	prompt

_TurnedAwayText::
	TX_RAM wBattleMonNick
	text " turned"
	line "away!"
	prompt

_IgnoredOrdersText::
	TX_RAM wBattleMonNick
	text ""
	line "ignored orders!"
	prompt

_SubstituteTookDamageText::
	text "The SUBSTITUTE"
	line "took damage for"
	cont "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "<TARGET>'s"
	line "SUBSTITUTE broke!"
	prompt

_BuildingRageText::
	text "<USER>'s"
	line "RAGE is building!"
	prompt

_MirrorMoveFailedText::
	text "The MIRROR MOVE"
	next "failed!"
	prompt

_HitXTimesText::
	text "Hit @"
	TX_NUM wEnemyNumHits, 1, 1
	text " times!"
	prompt

_GainedText::
	TX_RAM wcd6d
	text " gained"
	line "@@"

_WithExpAllText::
	text "with EXP.ALL,"
	cont "@@"

_BoostedText::
	text "a boosted"
	cont "@@"

_ExpPointsText::
	TX_NUM wExpAmountGained, 2, 4
	text " EXP. Points!"
	prompt

_GrewLevelText::
	TX_RAM wcd6d
	text " grew"
	line "to level @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

_WildMonAppearedText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	text ""
	line "appeared!"
	prompt

_HookedMonAttackedText::
	text "The hooked"
	line "@"
	TX_RAM wEnemyMonNick
	text ""
	cont "attacked!"
	prompt

_EnemyAppearedText::
	TX_RAM wEnemyMonNick
	text ""
	line "appeared!"
	prompt

_TrainerWantsToFightText::
	TX_RAM wTrainerName
	text " wants"
	line "to battle!"
	prompt

_UnveiledGhostText::
	text "SILPH SCOPE"
	line "unveiled the"
	cont "GHOST's identity!"
	prompt

_GhostCantBeIDdText::
	text "Darn! The GHOST"
	line "can't be ID'd!"
	prompt

_GoText::
	text "I choose you!"
    line "@@"

_DoItText::
	text "Now's our chance,"
	line "@@"

_GetmText::
	text "It's all up to"
	line "you, @@"

_EnemysWeakText::
	text "Let's wrap this up!"
	line "Go @@"

_PlayerMon1Text::
	TX_RAM wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	TX_RAM wBattleMonNick
	text " @@"
	
_PlayerMon2TextNoSp::
	TX_RAM wBattleMonNick
	text "@@"

_EnoughText::
	text "! Nice"
	line "try! @@"

_OKExclamationText::
	text "! That'll"
	line "do! @@"

_GoodText::
	text ", you"
	line "did great!@@"

_ComeBackText::
	text " Return!"
	done

_SuperEffectiveText::
	text "It's super"
	line "effective!"
	prompt

_NotVeryEffectiveText::
	text "It's not very"
	line "effective..."
	prompt

_SafariZoneEatingText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	text ""
	line "is eating!"
	prompt

_SafariZoneAngryText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	text ""
	line "is angry!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> picked up"
	line "¥@"
	TX_BCD wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!"
	prompt

_ClearSaveDataText::
	text "Clear all saved"
	line "data?"
	done

_WhichFloorText::
	text "Which floor do"
	line "you want? "
	done

_PartyMenuNormalText::
	text "Choose a #MON."
	done

_PartyMenuItemUseText::
	text "Use item on which"
	line "#MON?"
	done

_PartyMenuBattleText::
	text "Bring out which"
	line "#MON?"
	done

_PartyMenuUseTMText::
	text "Use TM on which"
	line "#MON?"
	done

_PartyMenuSwapMonText::
	text "Move #MON"
	line "where?"
	done

_PotionText::
	TX_RAM wcd6d
	text ""
	line "recovered by @"
	TX_NUM wHPBarHPDifference, 2, 3
	text "!"
	done

_AntidoteText::
	TX_RAM wcd6d
	text " was"
	line "cured of poison!"
	done

_ParlyzHealText::
	TX_RAM wcd6d
	text "'s"
	line "rid of paralysis!"
	done

_BurnHealText::
	TX_RAM wcd6d
	text "'s"
	line "burn was healed!"
	done

_IceHealText::
	TX_RAM wcd6d
	text " was"
	line "defrosted!"
	done

_AwakeningText::
	TX_RAM wcd6d
	text ""
	line "woke up!"
	done

_FullHealText::
	TX_RAM wcd6d
	text "'s"
	line "health returned!"
	done

_ReviveText::
	TX_RAM wcd6d
	text ""
	line "is revitalized!"
	done

_RareCandyText::
	TX_RAM wcd6d
	text " grew"
	line "to level @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

_TurnedOnPC1Text::
	text "<PLAYER> logged in"
	line "to the PC."
	prompt

_AccessedBillsPCText::
_AccessedSomeonesPCText::
	text "Logged in to your"
	line "#MON STORAGE."
	prompt

_AccessedMyPCText::
	text "Logged in to your"
	line "ITEM STORAGE."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

_WhatDoYouWantText::
	text "What do you want"
	line "to do?"
	done

_WhatToDepositText::
	text "What do you want"
	line "to deposit?"
	done

_DepositHowManyText::
	text "How many?"
	done

_ItemWasStoredText::
	TX_RAM wcd6d
	text " was"
	line "stored via PC."
	prompt

_NothingToDepositText::
	text "You have nothing"
	line "to deposit."
	prompt

_NoRoomToStoreText::
	text "No room left to"
	line "store items."
	prompt

_WhatToWithdrawText::
	text "What do you want"
	line "to withdraw?"
	done

_WithdrawHowManyText::
	text "How many?"
	done

_WithdrewItemText::
	text "Withdrew"
	line "@"
	TX_RAM wcd6d
	text "."
	prompt

_NothingStoredText::
	text "There is nothing"
	line "stored."
	prompt

_CantCarryMoreText::
	text "You can't carry"
	line "any more items."
	prompt

_WhatToTossText::
	text "What do you want"
	line "to toss away?"
	done

_TossHowManyText::
	text "How many?"
	done

_AccessedHoFPCText::
	text "Accessed #MON"
	line "LEAGUE's site."
	prompt

_SwitchOnText::
	text "Switch on!"
	prompt

_WhatText::
	text "What?"
	done

_DepositWhichMonText::
	text "Deposit which"
	line "#MON?"
	done

_MonWasStoredText::
	TX_RAM wcf4b
	text " was"
	line "stored in Box @"
	TX_RAM wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "You can't deposit"
	line "the last #MON!"
	prompt

_BoxFullText::
	text "Oops! This Box is"
	line "full of #MON."
	prompt

_MonIsTakenOutText::
	TX_RAM wcf4b
	text " is"
	line "taken out."
	cont "Got @"
	TX_RAM wcf4b
	text "."
	prompt

_NoMonText::
	text "What? There are"
	line "no #MON here!"
	prompt

_CantTakeMonText::
	text "You can't take"
	line "any more #MON."

	para "Deposit #MON"
	line "first."
	prompt

_ReleaseWhichMonText::
	text "Release which"
	line "#MON?"
	done

_OnceReleasedText::
	text "Once released,"
	line "@"
	TX_RAM wcf4b
	text " is"
	cont "gone forever. OK?"
	done

_MonWasReleasedText::
	TX_RAM wcf4b
	text " was"
	line "released outside."
	cont "Bye @"

_CF4BExclamationText::
	TX_RAM wcf4b
	text "!"
	prompt

_RequireCoinCaseText::
	text "uu@@"

_ExchangeCoinsForPrizesText::
	text "uu"
	prompt

_WhichPrizeText::
	text "Which prize do"
	line "you want?"
	done

_HereYouGoText::
	text "Here you go!@@"

_SoYouWantPrizeText::
	text "So, you want"
	line "@"
	TX_RAM wcd6d
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "uu@@"

_OopsYouDontHaveEnoughRoomText::
	text "Oops! You don't"
	line "have enough room.@@"

_OhFineThenText::
	text "Oh, fine then.@@"

_GetDexRatedText::
	text "Hey <PLAYER>!"
	line "How is the"
	cont "project going?"
	
	para "Care to show me"
	line "your #DEX?"
	done

_ClosedOaksPCText::
	text "Ended call."
	done

_AccessedOaksPCText::
	text "Calling PROF."
	line "OAK..."

	para "..."
	prompt

_WhereWouldYouLikeText::
	text "Where would you"
	line "like to go?"
	done

_PleaseWaitText::
	text "OK, please wait"
	line "just a moment."
	done

_LinkCanceledText::
	text "The link was"
	line "canceled."
	done

INCLUDE "text/oakspeech.asm"

_DoYouWantToNicknameText::
	text "Should @"
	TX_RAM wcd6d
	text " " 
	line "have a nickname?"
	done

_YourNameIsText::
	text "I knew it!"
	line "Honored to meet"
	cont "you, <PLAYER>!"
	prompt

_HisNameIsText::
	text "Correct. You and"
	line "<RIVAL> have"
	cont "quite a storied"
	cont "history, if I'm"
	cont "not mistaken."
	prompt

_WillBeTradedText::
	TX_RAM wNameOfPlayerMonToBeTraded
	text " and"
	line "@"
	TX_RAM wcd6d
	text " will"
	cont "be traded."
	done

_Char00Text::
	TX_NUM hSpriteIndexOrTextID,1,2
	text " ERROR."
	done

_Char55Text::
	text $4B,"@@"

INCLUDE "text/maps/DiglettsCaveRoute2.asm"
INCLUDE "text/maps/ViridianForestNorthGate.asm"
INCLUDE "text/maps/Route2TradeHouse.asm"
INCLUDE "text/maps/Route2Gate.asm"
INCLUDE "text/maps/ViridianForestSouthGate.asm"
INCLUDE "text/maps/MtMoonPokecenter.asm"
INCLUDE "text/maps/SaffronGates.asm"
INCLUDE "text/maps/Daycare.asm"


SECTION "Text 4", ROMX ; BANK $23

INCLUDE "text/maps/Daycare_2.asm"
INCLUDE "text/maps/UndergroundPathRoute6.asm"
INCLUDE "text/maps/UndergroundPathRoute7.asm"
INCLUDE "text/maps/UndergroundPathRoute7Copy.asm"
INCLUDE "text/maps/UndergroundPathRoute8.asm"
INCLUDE "text/maps/RockTunnelPokecenter.asm"
INCLUDE "text/maps/RockTunnel1F.asm"
INCLUDE "text/maps/PowerPlant.asm"
INCLUDE "text/maps/Route11Gate1F.asm"
INCLUDE "text/maps/Route11Gate2F.asm"
INCLUDE "text/maps/DiglettsCaveRoute11.asm"
INCLUDE "text/maps/Route12Gate1F.asm"
INCLUDE "text/maps/Route12Gate2F.asm"
INCLUDE "text/maps/Route12SuperRodHouse.asm"
INCLUDE "text/maps/Route15Gate1F.asm"
INCLUDE "text/maps/Route15Gate2F.asm"
INCLUDE "text/maps/Route16Gate1F.asm"
INCLUDE "text/maps/Route16Gate2F.asm"
INCLUDE "text/maps/Route16FlyHouse.asm"
INCLUDE "text/maps/Route18Gate1F.asm"
INCLUDE "text/maps/Route18Gate2F.asm"
INCLUDE "text/maps/Route22Gate.asm"
INCLUDE "text/maps/VictoryRoad2F.asm"
INCLUDE "text/maps/BillsHouse.asm"
INCLUDE "text/maps/Route1.asm"
INCLUDE "text/maps/Route2.asm"
INCLUDE "text/maps/Route3.asm"
INCLUDE "text/maps/Route4.asm"
INCLUDE "text/maps/Route5.asm"
INCLUDE "text/maps/Route6.asm"
INCLUDE "text/maps/Route7.asm"
INCLUDE "text/maps/Route8.asm"
INCLUDE "text/maps/Route9.asm"
INCLUDE "text/maps/Route10.asm"
INCLUDE "text/maps/Route11.asm"


SECTION "Text 5", ROMX ; BANK $24

INCLUDE "text/maps/Route11_2.asm"
INCLUDE "text/maps/Route12.asm"
INCLUDE "text/maps/Route13.asm"
INCLUDE "text/maps/Route14.asm"
INCLUDE "text/maps/Route15.asm"
INCLUDE "text/maps/Route16.asm"
INCLUDE "text/maps/Route17.asm"
INCLUDE "text/maps/Route18.asm"
INCLUDE "text/maps/Route19.asm"
INCLUDE "text/maps/Route20.asm"
INCLUDE "text/maps/Route21.asm"
INCLUDE "text/maps/Route22.asm"
INCLUDE "text/maps/Route23.asm"
INCLUDE "text/maps/Route24.asm"


SECTION "Text 6", ROMX ; BANK $25

INCLUDE "text/maps/Route24_2.asm"
INCLUDE "text/maps/Route25.asm"

_FileDataDestroyedText::
	text "The file data is"
	line "destroyed!"
	prompt

_WouldYouLikeToSaveText::
	text "Would you like to"
	line "SAVE the game?"
	done

_GameSavedText::
	text "<PLAYER> saved"
	line "the game!"
	done

_OlderFileWillBeErasedText::
	text "The older file"
	line "will be erased to"
	cont "save. Okay?"
	done

_WhenYouChangeBoxText::
	text "When you change a"
	line "#MON BOX, data"
	cont "will be saved."

	para "Is that okay?"
	done

_ChooseABoxText::
	text "Choose a"
	line "<pkmn> BOX.@@"

_EvolvedText::
	TX_RAM wcf4b
	text " evolved"
	done

_IntoText::
	text ""
	line "into @"
	TX_RAM wcd6d
	text "!"
	done

_StoppedEvolvingText::
	text "Huh? @"
	TX_RAM wcf4b
	text ""
	line "stopped evolving!"
	prompt

_IsEvolvingText::
	text "What? @"
	TX_RAM wcf4b
	text ""
	line "is evolving!"
	done

_FellAsleepText::
	text "<TARGET>"
	line "fell asleep!"
	prompt

_AlreadyAsleepText::
	text "<TARGET>'s"
	line "already asleep!"
	prompt

_PoisonedText::
	text "<TARGET>"
	line "was poisoned!"
	prompt

_BadlyPoisonedText::
	text "<TARGET>'s"
	line "badly poisoned!"
	prompt

_BurnedText::
	text "<TARGET>"
	line "was burned!"
	prompt

_FrozenText::
	text "<TARGET>"
	line "was frozen solid!"
	prompt

_FireDefrostedText::
	text "Fire defrosted"
	line "<TARGET>!"
	prompt

_MonsStatsRoseText::
	text "<USER>'s"
	line "@"
	TX_RAM wcf4b
	text "@@"

_GreatlyRoseText::
	text $4c, "greatly@@"

_RoseText::
	text " rose!"
	prompt

_MonsStatsFellText::
	text "<TARGET>'s"
	line "@"
	TX_RAM wcf4b
	text "@@"

_GreatlyFellText::
	text $4c, "greatly@@"

_FellText::
	text " fell!"
	prompt

_RanFromBattleText::
	text "<USER>"
	line "ran from battle!"
	prompt

_RanAwayScaredText::
	text "<TARGET>"
	line "ran away scared!"
	prompt

_WasBlownAwayText::
	text "<TARGET>"
	line "was blown away!"
	prompt

_ChargeMoveEffectText::
	text "<USER>@@"

_MadeWhirlwindText::
	text ""
	line "made a whirlwind!"
	prompt

_TookInSunlightText::
	text ""
	line "took in sunlight!"
	prompt

_LoweredItsHeadText::
	text ""
	line "lowered its head!"
	prompt

_SkyAttackGlowingText::
	text ""
	line "is glowing!"
	prompt

_FlewUpHighText::
	text ""
	line "flew up high!"
	prompt

_DugAHoleText::
	text ""
	line "dug a hole!"
	prompt

_NightTerrorText::
	text ""
	line "vanished?!"
	prompt

_BecameConfusedText::
	text "<TARGET>"
	line "became confused!"
	prompt

_MimicLearnedMoveText::
	text "<USER>"
	line "learned"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_MoveWasDisabledText::
	text "<TARGET>'s"
	line "@"
	TX_RAM wcd6d
	text " was"
	cont "disabled!"
	prompt

_NothingHappenedText::
	text "Nothing happened!"
	prompt

_NoEffectText::
	text "No effect!"
	prompt

_ButItFailedText::
	text "But, it failed! "
	prompt

_DidntAffectText::
	text "It didn't affect"
	line "<TARGET>!"
	prompt

_IsUnaffectedText::
	text "<TARGET>"
	line "is unaffected!"
	prompt

_ParalyzedMayNotAttackText::
	text "<TARGET>'s"
	line "paralyzed! It may"
	cont "not attack!"
	prompt

_SubstituteText::
	text "It created a"
	line "SUBSTITUTE!"
	prompt

_HasSubstituteText::
	text "<USER>"
	line "has a SUBSTITUTE!"
	prompt

_TooWeakSubstituteText::
	text "Too weak to make"
	line "a SUBSTITUTE!"
	prompt

_CoinsScatteredText::
	text "Coins scattered"
	line "everywhere!"
	prompt

_GettingPumpedText::
	text "<USER>'s"
	line "getting pumped!"
	prompt

_WasSeededText::
	text "<TARGET>"
	line "was seeded!"
	prompt

_EvadedAttackText::
	text "<TARGET>"
	line "evaded attack!"
	prompt

_HitWithRecoilText::
	text "<USER>'s"
	line "hit with recoil!"
	prompt

_ConvertedTypeText::
	text "Converted type to"
	line "<TARGET>'s!"
	prompt

_StatusChangesEliminatedText::
	text "All STATUS changes"
	line "are eliminated!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "started sleeping!"
	done

_FellAsleepBecameHealthyText::
	text "<USER>"
	line "fell asleep and"
	cont "became healthy!"
	done

_RegainedHealthText::
	text "<USER>"
	line "regained health!"
	prompt

_SecondWindText::
	text "<USER>"
	line "recharged PP!"
	prompt

_TransformedText::
	text "<USER>"
	line "transformed into"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_LightScreenProtectedText::
	text "<USER>'s"
	line "protected against"
	cont "special attacks!"
	prompt

_ReflectGainedArmorText::
	text "<USER>"
	line "gained armor!"
	prompt

_ShroudedInMistText::
	text "<USER>'s"
	line "shrouded in mist!"
	prompt

_SuckedHealthText::
	text "Sucked health from"
	line "<TARGET>!"
	prompt

_DreamWasEatenText::
	text "<TARGET>'s"
	line "dream was eaten!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done

INCLUDE "text/maps/RedsHouse1F.asm"
INCLUDE "text/maps/BluesHouse.asm"
INCLUDE "text/maps/OaksLab.asm"
INCLUDE "text/maps/ViridianPokecenter.asm"
INCLUDE "text/maps/ViridianMart.asm"
INCLUDE "text/maps/ViridianSchoolHouse.asm"
INCLUDE "text/maps/ViridianNicknameHouse.asm"
INCLUDE "text/maps/ViridianGym.asm"
INCLUDE "text/maps/Museum1F.asm"
INCLUDE "text/maps/Museum2F.asm"
INCLUDE "text/maps/PewterGym.asm"


SECTION "Text 7", ROMX ; BANK $26

INCLUDE "text/maps/PewterGym_2.asm"
INCLUDE "text/maps/PewterNidoranHouse.asm"
INCLUDE "text/maps/PewterMart.asm"
INCLUDE "text/maps/PewterSpeechHouse.asm"
INCLUDE "text/maps/PewterPokecenter.asm"
INCLUDE "text/maps/CeruleanTrashedHouse.asm"
INCLUDE "text/maps/CeruleanTradeHouse.asm"
INCLUDE "text/maps/CeruleanPokecenter.asm"
INCLUDE "text/maps/CeruleanGym.asm"
INCLUDE "text/maps/BikeShop.asm"
INCLUDE "text/maps/CeruleanMart.asm"
INCLUDE "text/maps/CeruleanBadgeHouse.asm"
INCLUDE "text/maps/LavenderPokecenter.asm"
INCLUDE "text/maps/PokemonTower1F.asm"
INCLUDE "text/maps/PokemonTower2F.asm"
INCLUDE "text/maps/PokemonTower3F.asm"
INCLUDE "text/maps/PokemonTower4F.asm"
INCLUDE "text/maps/PokemonTower5F.asm"
INCLUDE "text/maps/PokemonTower6F.asm"
INCLUDE "text/maps/PokemonTower7F.asm"
INCLUDE "text/maps/MrFujisHouse.asm"
INCLUDE "text/maps/LavenderMart.asm"
INCLUDE "text/maps/LavenderCuboneHouse.asm"
INCLUDE "text/maps/NameRatersHouse.asm"
INCLUDE "text/maps/VermilionPokecenter.asm"
INCLUDE "text/maps/PokemonFanClub.asm"
INCLUDE "text/maps/VermilionMart.asm"
INCLUDE "text/maps/VermilionGym.asm"


SECTION "Text 8", ROMX ; BANK $27

INCLUDE "text/maps/VermilionGym_2.asm"
INCLUDE "text/maps/VermilionPidgeyHouse.asm"
INCLUDE "text/maps/VermilionDock.asm"
INCLUDE "text/maps/VermilionOldRodHouse.asm"
INCLUDE "text/maps/CeladonMart1F.asm"
INCLUDE "text/maps/CeladonMart2F.asm"
INCLUDE "text/maps/CeladonMart3F.asm"
INCLUDE "text/maps/CeladonMart4F.asm"
INCLUDE "text/maps/CeladonMartRoof.asm"
INCLUDE "text/maps/CeladonMansion1F.asm"
INCLUDE "text/maps/CeladonMansion2F.asm"
INCLUDE "text/maps/CeladonMansion3F.asm"
INCLUDE "text/maps/CeladonMansionRoof.asm"
INCLUDE "text/maps/CeladonMansionRoofHouse.asm"
INCLUDE "text/maps/CeladonPokecenter.asm"
INCLUDE "text/maps/CeladonGym.asm"
INCLUDE "text/maps/GameCorner.asm"
INCLUDE "text/maps/CeladonMart5F.asm"
INCLUDE "text/maps/GameCornerPrizeRoom.asm"
INCLUDE "text/maps/CeladonDiner.asm"
INCLUDE "text/maps/CeladonChiefHouse.asm"
INCLUDE "text/maps/CeladonHotel.asm"
INCLUDE "text/maps/FuchsiaMart.asm"
INCLUDE "text/maps/FuchsiaBillsGrandpasHouse.asm"
INCLUDE "text/maps/FuchsiaPokecenter.asm"
INCLUDE "text/maps/WardensHouse.asm"
INCLUDE "text/maps/SafariZoneGate.asm"
INCLUDE "text/maps/FuchsiaGym.asm"


SECTION "Text 9", ROMX ; BANK $28

INCLUDE "text/maps/FuchsiaGym_2.asm"
INCLUDE "text/maps/FuchsiaMeetingRoom.asm"
INCLUDE "text/maps/FuchsiaGoodRodHouse.asm"
INCLUDE "text/maps/PokemonMansion1F.asm"
INCLUDE "text/maps/CinnabarGym.asm"
INCLUDE "text/maps/CinnabarLab.asm"
INCLUDE "text/maps/CinnabarLabTradeRoom.asm"
INCLUDE "text/maps/CinnabarLabMetronomeRoom.asm"
INCLUDE "text/maps/CinnabarLabFossilRoom.asm"
INCLUDE "text/maps/CinnabarPokecenter.asm"
INCLUDE "text/maps/CinnabarMart.asm"
INCLUDE "text/maps/IndigoPlateauLobby.asm"
INCLUDE "text/maps/CopycatsHouse1F.asm"
INCLUDE "text/maps/CopycatsHouse2F.asm"
INCLUDE "text/maps/FightingDojo.asm"
INCLUDE "text/maps/SaffronGym.asm"
INCLUDE "text/maps/SaffronPidgeyHouse.asm"
INCLUDE "text/maps/SaffronMart.asm"
INCLUDE "text/maps/SilphCo1F.asm"
INCLUDE "text/maps/SaffronPokecenter.asm"
INCLUDE "text/maps/MrPsychicsHouse.asm"

_PokemartGreetingText::
	text "Hi there!"
	next "May I help you?"
	done

_PokemonFaintedText::
	TX_RAM wcd6d
	text ""
	line "fainted!"
	done

_PlayerBlackedOutText::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_RepelWoreOffText::
	text "REPEL's effect"
	line "wore off."
	done

_PokemartBuyingGreetingText::
	text "Take your time."
	done

_PokemartTellBuyPriceText::
	TX_RAM wcf4b
	text "?"
	line "That will be"
	cont "¥@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text ". OK?"
	done

_PokemartBoughtItemText::
	text "Here you are!"
	line "Thank you!"
	prompt

_PokemartNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

_PokemartItemBagFullText::
	text "You can't carry"
	line "any more items."
	prompt

_PokemonSellingGreetingText::
	text "What would you"
	line "like to sell?"
	done

_PokemartTellSellPriceText::
	text "I can pay you"
	line "¥@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text " for that."
	done

_PokemartItemBagEmptyText::
	text "You don't have"
	line "anything to sell."
	prompt

_PokemartUnsellableItemText::
	text "I can't put a"
	line "price on that."
	prompt

_PokemartThankYouText::
	text "Thank you!"
	done

_PokemartAnythingElseText::
	text "Is there anything"
	line "else I can do?"
	done

_LearnedMove1Text::
	TX_RAM wLearnMoveMonName
	text " learned"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_WhichMoveToForgetText::
	text "Which move should"
	next "be forgotten?"
	done

_AbandonLearningText::
	text "Abandon learning"
	line "@"
	TX_RAM wcf4b
	text "?"
	done

_DidNotLearnText::
	TX_RAM wLearnMoveMonName
	text ""
	line "did not learn"
	cont "@"
	TX_RAM wcf4b
	text "!"
	prompt

_TryingToLearnText::
	TX_RAM wLearnMoveMonName
	text " is"
	line "trying to learn"
	cont "@"
	TX_RAM wcf4b
	text "!"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	TX_RAM wcf4b
	text "?"
	done

_OneTwoAndText::
	text "1, 2 and...@@"

_PoofText::
	text " Poof!@@"

_ForgotAndText::
	text ""
	para "@"
	TX_RAM wLearnMoveMonName
	text " forgot"
	line "@"
	TX_RAM wcd6d
	text "!"

	para "And..."
	prompt

_HMCantDeleteText::
	text "HM techniques"
	line "can't be deleted!"
	prompt

_PokemonCenterWelcomeText::
	text "Welcome to our"
	line "#MON CENTER!"
	prompt

_PokemonCenterFarewellText::
	text "Thank you for"
	line "waiting!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "uu"
	done

_CableClubNPCWelcomeText::
	text "uu"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "uu"
	done

_CableClubNPCPleaseWaitText::
	text "Please wait.@@"

_CableClubNPCLinkClosedBecauseOfInactivityText::
	text "uu"
	done


SECTION "Text 10", ROMX ; BANK $29

_CableClubNPCPleaseComeAgainText::
	text "Please come again!"
	done

_CableClubNPCMakingPreparationsText::
	text "We're making"
	line "preparations."
	cont "Please wait."
	done

_UsedStrengthText::
	TX_RAM wcd6d
	text " used"
	line "STRENGTH.@@"

_CanMoveBouldersText::
	TX_RAM wcd6d
	text " can"
	line "move boulders."
	prompt

_CurrentTooFastText::
	text "The current is"
	line "much too fast!"
	prompt

_CyclingIsFunText::
	text "Cycling is fun!"
	line "Forget SURFing!"
	prompt

_FlashLightsAreaText::
	text "A blinding FLASH"
	line "lights the area!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp to the last"
	line "#MON CENTER."
	done

_CannotUseTeleportNowText::
	TX_RAM wcd6d
	text " can't"
	line "use TELEPORT now."
	prompt

_CannotFlyHereText::
	TX_RAM wcd6d
	text " can't"
	line "FLY here."
	prompt

_NotHealthyEnoughText::
	text "Not healthy"
	line "enough."
	prompt

_NewBadgeRequiredText::
	text "No! A new BADGE"
	line "is required."
	prompt

_CannotUseItemsHereText::
	text "You can't use items"
	line "here."
	prompt

_CannotGetOffHereText::
	text "You can't get off"
	line "here."
	prompt

_GotMonText::
	text "<PLAYER> got"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_SetToBoxText::
	text "There's no more"
	line "room for #MON!"
	cont "@"
	TX_RAM wBoxMonNicks
	text " was"
	cont "sent to #MON"
	cont "BOX @"
	TX_RAM wcf4b
	text " on PC!"
	done

_BoxIsFullText::
	text "There's no more"
	line "room for #MON!"

	para "The #MON BOX"
	line "is full and can't"
	cont "accept any more!"

	para "Change the BOX at"
	line "a #MON CENTER!"
	done

INCLUDE "text/maps/PalletTown.asm"
INCLUDE "text/maps/ViridianCity.asm"
INCLUDE "text/maps/PewterCity.asm"
INCLUDE "text/maps/CeruleanCity.asm"
INCLUDE "text/maps/LavenderTown.asm"
INCLUDE "text/maps/VermilionCity.asm"
INCLUDE "text/maps/CeladonCity.asm"
INCLUDE "text/maps/FuchsiaCity.asm"
INCLUDE "text/maps/CinnabarIsland.asm"
INCLUDE "text/maps/SaffronCity.asm"

_ItemUseBallText00::
	text "It dodged the"
	line "thrown BALL!"

	para "This #MON"
	line "can't be caught!"
	prompt

_ItemUseBallText01::
	text "You missed the"
	line "#MON!"
	prompt

_ItemUseBallText02::
	text "Darn! The #MON"
	line "broke free!"
	prompt

_ItemUseBallText03::
	text "Aww! It appeared"
	line "to be caught! "
	prompt

_ItemUseBallText04::
	text "Shoot! It was so"
	line "close too!"
	prompt

_ItemUseBallText05::
	text "All right!"
	line "@"
	TX_RAM wEnemyMonNick
	text " was"
	cont "caught!@@"

_ItemUseBallText07::
	TX_RAM wBoxMonNicks
	text " was"
	line "transferred to"
	cont "<pkmn> STORAGE!"
	prompt

_ItemUseBallText08::
	TX_RAM wBoxMonNicks
	text " was"
	line "transferred to"
	cont "<pkmn> STORAGE!"
	prompt

_ItemUseBallText06::
	text "Better record"
	line "some data in the"
	cont "#DEX!"
	para "Okay, so..."
	line "@"
	TX_RAM wEnemyMonNick
	text "...@@"

_SurfingGotOnText::
	text "<PLAYER> got on"
	line "@"
	TX_RAM wcd6d
	text "!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "There's no place"
	line "to get off!"
	prompt

_VitaminStatRoseText::
	TX_RAM wcd6d
	text "'s"
	line "@"
	TX_RAM wcf4b
	text " rose."
	prompt

_VitaminNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrewBaitText::
	text "<PLAYER> threw"
	line "some BAIT."
	done

_ThrewRockText::
	text "<PLAYER> threw a"
	line "ROCK."
	done

_PlayedFluteNoEffectText::
	text "Played the #"
	line "FLUTE."

	para "Now, that's a"
	line "catchy tune!"
	prompt

_FluteWokeUpText::
	text "All sleeping"
	line "#MON woke up."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> played the"
	line "# FLUTE.@@"

_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	TX_BCD wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "Yes! ITEMFINDER"
	line "indicates there's"
	cont "an item nearby."
	prompt

_ItemfinderFoundNothingText::
	text "Nope! ITEMFINDER"
	line "isn't responding."
	prompt

_RaisePPWhichTechniqueText::
	text "Raise PP of which"
	line "technique?"
	done

_RestorePPWhichTechniqueText::
	text "Restore PP of"
	line "which technique?"
	done

_PPMaxedOutText::
	TX_RAM wcf4b
	text "'s PP"
	line "is maxed out."
	prompt

_PPIncreasedText::
	TX_RAM wcf4b
	text "'s PP"
	line "increased."
	prompt

_PPRestoredText::
	text "PP was restored."
	prompt

_BootedUpTMText::
	text "Booted up a TM!"
	prompt

_BootedUpHMText::
	text "Booted up an HM!"
	prompt

_TeachMachineMoveText::
	text "It contained"
	line "@"
	TX_RAM wcf4b
	text "!"

	para "Teach @"
	TX_RAM wcf4b
	text ""
	line "to a #MON?"
	done

_MonCannotLearnMachineMoveText::
	TX_RAM wcd6d
	text " is not"
	line "compatible with"
	cont "@"
	TX_RAM wcf4b
	text "."

	para "It can't learn"
	line "@"
	TX_RAM wcf4b
	text "."
	prompt

_ItemUseNotTimeText::
	text "No use for that"
	line "right now!"
	prompt

_ItemUseNotYoursToUseText::
	text "This isn't yours"
	line "to use!"
	prompt

_ItemUseNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrowBallAtTrainerMonText1::
	text "The trainer"
	line "blocked the BALL!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Don't be a thief!"
	prompt

_NoCyclingAllowedHereText::
	text "No skating"
	next "allowed here."
	prompt

_NoSurfingHereText::
	text "No SURFing on"
	line "@"
	TX_RAM wcd6d
	text " here!"
	prompt

_BoxFullCannotThrowBallText::
	text "The #MON BOX"
	line "is full! Can't"
	cont "use that item!"
	prompt


SECTION "Text 11", ROMX ; BANK $2a

_ItemUseText001::
	text "<PLAYER> used@@"

_ItemUseText002::
	TX_RAM wcf4b
	text "!"
	done

_GotOnBicycleText1::
	text "<PLAYER> got on the@@"

_GotOnBicycleText2::
	TX_RAM wcf4b
	text "!"
	prompt

_GotOffBicycleText1::
	text "<PLAYER> got off@@"

_GotOffBicycleText2::
	text "the @"
	TX_RAM wcf4b
	text "."
	prompt

_ThrewAwayItemText::
	text "Threw away"
	line "@"
	TX_RAM wcd6d
	text "."
	prompt

_IsItOKToTossItemText::
	text "Is it OK to toss"
	line "@"
	TX_RAM wcf4b
	text "?"
	prompt

_TooImportantToTossText::
	text "That's too impor-"
	line "tant to toss!"
	prompt

_AlreadyKnowsText::
	TX_RAM wcd6d
	text " knows"
	line "@"
	TX_RAM wcf4b
	text "!"
	prompt

_ConnectCableText::
	text "Okay, connect the"
	line "cable like so!"
	prompt

_TradedForText::
	text "<PLAYER> traded"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text " for"
	cont "@"
	TX_RAM wInGameTradeReceiveMonName
	text "!@@"

_WannaTrade1Text::
	text "I'm looking for"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "! Wanna"

	para "trade one for"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "? "
	done

_NoTrade1Text::
	text "Awww!"
	line "Oh well..."
	done

_WrongMon1Text::
	text "What? That's not"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "!"

	para "If you get one,"
	line "come back here!"
	done

_Thanks1Text::
	text "Hey thanks!"
	done

_AfterTrade1Text::
	text "Isn't my old"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text " great?"
	done

_WannaTrade2Text::
	text "Hello there! Do"
	line "you want to trade"

	para "your @"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "for @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade2Text::
	text "Well, if you"
	line "don't want to..."
	done

_WrongMon2Text::
	text "Hmmm? This isn't"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "Think of me when"
	line "you get one."
	done

_Thanks2Text::
	text "Thanks!"
	done

_AfterTrade2Text::
	text "The @"
	TX_RAM wInGameTradeGiveMonName
	text " you"
	line "traded to me"

	para "went and evolved!"
	done

_WannaTrade3Text::
	text "Hi! Do you have"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "?"

	para "Want to trade it"
	line "for @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade3Text::
	text "That's too bad."
	done

_WrongMon3Text::
	text "...This is no"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "If you get one,"
	line "trade it with me!"
	done

_Thanks3Text::
	text "Thanks pal!"
	done

_AfterTrade3Text::
	text "How is my old"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "?"

	para "My @"
	TX_RAM wInGameTradeGiveMonName
	text " is"
	line "doing great!"
	done

_NothingToCutText::
	text "There isn't"
	line "anything to CUT!"
	prompt

_UsedCutText::
	TX_RAM wcd6d
	text " hacked"
	line "away with CUT!"
	prompt


SECTION "Pokedex Text", ROMX ; BANK $2b

INCLUDE "text/pokedex.asm"


SECTION "Move Names", ROMX ; BANK $2c

INCLUDE "text/move_names.asm"

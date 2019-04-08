PromptUserToPlaySlots:
	jp CloseTextDisplay

PlaySlotMachineText:
	TX_FAR _PlaySlotMachineText
	db "@"

MainSlotMachineLoop:
	ret

CoinMultiplierSlotMachineText:
	db   "×3"
	next "×2"
	next "×1@"

OutOfCoinsSlotMachineText:
	TX_FAR _OutOfCoinsSlotMachineText
	db "@"

BetHowManySlotMachineText:
	TX_FAR _BetHowManySlotMachineText
	db "@"

StartSlotMachineText:
	TX_FAR _StartSlotMachineText
	db "@"

NotEnoughCoinsSlotMachineText:
	TX_FAR _NotEnoughCoinsSlotMachineText
	db "@"

OneMoreGoSlotMachineText:
	TX_FAR _OneMoreGoSlotMachineText
	db "@"

SlotMachine_SetFlags:
	ret

SlotMachine_SpinWheels:
	ret
	
; Note that the wheels can only stop when a symbol is centred in the wheel
; and thus 3 full symbols rather than 2 full symbols and 2 half symbols are
; visible. The 3 functions below ensure this by checking if the wheel offset
; is even before stopping the wheel.

SlotMachine_StopOrAnimWheel1:
	ret

SlotMachine_StopOrAnimWheel2:
	ret

SlotMachine_StopOrAnimWheel3:
	
	ret

SlotMachine_StopWheel1Early:
	ret

SlotMachine_StopWheel2Early:
	ret

SlotMachine_FindWheel1Wheel2Matches:
	ret

SlotMachine_CheckForMatches:
	ret

SymbolLinedUpSlotMachineText:
	ret

LinedUpText:
	TX_FAR _LinedUpText
	db "@"

SlotRewardPointers:
	dw SlotReward300Func
	dw SlotReward300Text
	dw SlotReward100Func
	dw SlotReward100Text
	dw SlotReward8Func
	dw SlotReward8Text
	dw SlotReward15Func
	dw SlotReward15Text
	dw SlotReward15Func
	dw SlotReward15Text
	dw SlotReward15Func
	dw SlotReward15Text

SlotReward300Text:
	db "300@"

SlotReward100Text:
	db "100@"

SlotReward8Text:
	db "8@"

SlotReward15Text:
	db "15@"

NotThisTimeText:
	TX_FAR _NotThisTimeText
	db "@"

; compares the slot machine tiles at bc, de, and hl
SlotMachine_CheckForMatch:
	ret

SlotMachine_GetWheel3Tiles:
	ret

SlotMachine_GetWheel2Tiles:
	ret
	
SlotMachine_GetWheel1Tiles:
	ret

SlotMachine_GetWheelTiles:
	ret

SlotReward8Func:
	ret

SlotReward15Func:
	ret

SlotReward100Func:
	ret

SlotReward300Func:
	ret

YeahText:
	TX_FAR _YeahText
	TX_DELAY
	db "@"

SlotMachine_PrintWinningSymbol:
	ret

SlotMachine_SubtractBetFromPlayerCoins:
	ret

SlotMachine_PrintCreditCoins:
	ret

SlotMachine_PrintPayoutCoins:
	ret

SlotMachine_PayCoinsToPlayer:
	ret

SlotMachine_PutOutLitBalls:
	ret

SlotMachine_UpdateThreeCoinBallTiles:
	ret

SlotMachine_UpdateTwoCoinBallTiles:
	ret

SlotMachine_UpdateOneCoinBallTiles:
	ret

SlotMachine_UpdateBallTiles:
	ret

SlotMachine_AnimWheel1:
	ret

SlotMachine_AnimWheel2:
	ret

SlotMachine_AnimWheel3:
	ret

SlotMachine_AnimWheel:
	ret

SlotMachine_HandleInputWhileWheelsSpin:
	ret

LoadSlotMachineTiles:
	ret

SlotMachineMap:
	INCBIN "gfx/tilemaps/slotmachine.map"
SlotMachineMapEnd:

INCLUDE "data/slot_machine_wheels.asm"

SlotMachineTiles1:
IF DEF(_RED)
;	INCBIN "gfx/red/slotmachine1.2bpp"
ENDC
IF DEF(_BLUE)
;	INCBIN "gfx/blue/slotmachine1.2bpp"
ENDC

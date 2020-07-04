PewterPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

PewterPokecenter_TextPointers:
	dw PewterHealNurseText
	dw PewterPokecenterText2
	dw PewterJigglypuffText
	dw PewterTradeNurseText

PewterHealNurseText:
	TX_POKECENTER_NURSE

PewterPokecenterText2:
	TX_FAR _PewterPokecenterText2
	db "@"

PewterJigglypuffText:
	TX_FAR _PewterJigglypuffText
	db "@"

PewterTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST

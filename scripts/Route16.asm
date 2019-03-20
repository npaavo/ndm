Route16_Script:
	jp EnableAutoTextBoxDrawing

Route16_TextPointers:
	dw Route16Text1
	dw Route16Text2
	dw Route16Text3

Route16Text1:
	TX_FAR _Route16Text1
	db "@"
	
Route16Text2:
	TX_FAR _Route16Text2
	db "@"
	
Route16Text3:
	TX_FAR _Route16Text3
	db "@"	
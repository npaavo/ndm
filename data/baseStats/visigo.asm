db DEX_VISIGO ; pokedex id
db 80 ; base hp
db 100 ; base attack
db 15 ; base defense
db 105 ; base speed
db 115 ; base special
db GHOST ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 202 ; base exp yield
INCBIN "pic/bmon/Visigo.pic",0,1 ; 77, sprite dimensions
dw VisigoPicFront
dw VisigoPicBack
; attacks known at lvl 0
db LICK
db BITE
db ICE_BEAM
db LEECH_LIFE
db 4 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,13,14,15
	tmlearn 20,24
	tmlearn 25,29,30,31,32
	tmlearn 33,34,39,40
	tmlearn 44,45,46
	tmlearn 49,50,55
db 0 ; padding

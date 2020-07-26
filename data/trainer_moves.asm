LoneMoves:
; these are used for gym leaders.
; this is not automatic! you have to write the number you want to wLoneAttackNo
; first. e.g., erika's script writes 4 to wLoneAttackNo to get mega drain,
; the fourth entry in the list.

; first byte:  pokemon in the trainer's party that gets the move
; second byte: move
; unterminated
	;db 1,MEGA_DRAIN
	;db 1,SKIP_STONE
	;db 2,COUNTER
	;db 2,TOXIC
	;db 3,PHANTASM
	;db 3,SUBMISSION
	;db 3,FIRE_BLAST
	;db 4,FISSURE

TeamMoves:
; these are used for elite four.
; this is automatic, based on trainer class.
; don't be confused by LoneMoves above, the two data structures are
	; _completely_ unrelated.

; first byte: trainer (all trainers in this class have this move)
; second byte: move
; ff-terminated
	;db WYLDA,GROWTH
	;db LORELEI,BLIZZARD
	;db BRUNO,FISSURE
	;db AGATHA,TOXIC
	;db LANCE,BARRIER
	db $FF

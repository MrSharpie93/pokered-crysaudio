PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuMon3Entries, PrizeMenuMon3Cost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ELEKID
	db MAGBY
	db SMOOCHUM
	db "@"

PrizeMenuMon1Cost:
	bcd2 1000
	bcd2 1000
	bcd2 1000
	db "@"

PrizeMenuMon2Entries:
	db PINSIR
	db SCYTHER
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	bcd2 2200
	bcd2 2200
	bcd2 5000
	db "@"

PrizeMenuMon3Entries:
	db DRATINI
	db LARVITAR
	db BAGON
	db "@"

PrizeMenuMon3Cost:
	bcd2 4500
	bcd2 5500
	bcd2 5500
	db "@"

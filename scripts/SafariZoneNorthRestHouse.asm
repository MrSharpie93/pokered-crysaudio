SafariZoneNorthRestHouse_Script:
	call EnableAutoTextBoxDrawing
	ret

SafariZoneNorthRestHouse_TextPointers:
	def_text_pointers
	dw_const SafariZoneNorthRestHouseScientistText,        TEXT_SAFARIZONENORTHRESTHOUSE_SCIENTIST
	dw_const SafariZoneNorthRestHouseSafariZoneWorkerText, TEXT_SAFARIZONENORTHRESTHOUSE_SAFARI_ZONE_WORKER
	dw_const SafariZoneNorthRestHouseGentlemanText,        TEXT_SAFARIZONENORTHRESTHOUSE_GENTLEMAN
	dw_const SafariZoneNorthRestHouseStepSellerText,       TEXT_SAFARIZONENORTHRESTHOUSE_STEP_SELLER
	dw_const SafariZoneNorthRestHouseDetailsText,          TEXT_SAFARIZONENORTHRESTHOUSE_DETAILS

SafariZoneNorthRestHouseScientistText:
	text_far _SafariZoneNorthRestHouseScientistText
	text_end

SafariZoneNorthRestHouseSafariZoneWorkerText:
	text_far _SafariZoneNorthRestHouseSafariZoneWorkerText
	text_end

SafariZoneNorthRestHouseGentlemanText:
	text_far _SafariZoneNorthRestHouseGentlemanText
	text_end
	
SafariZoneNorthRestHouseDetailsText:
	text_far _SafariZoneRestHousePosterText
	text_far _SafariZoneNorthRestHouseDetailsText
	text_end
	
SafariZoneNorthRestHouseStepSellerText: ; ~$~ADDED: Buy more steps in rest houses.~$~
	text_asm
	call StepSellerScript
	jp TextScriptEnd

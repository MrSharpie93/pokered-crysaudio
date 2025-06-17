CeladonMansion2F_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMansion2F_TextPointers:
	def_text_pointers
	dw_const MoveRelearnerText1,                  TEXT_MOVE_RELEARNER
	dw_const MoveDeleterText1,                    TEXT_MOVE_DELETER
	dw_const CeladonMansion2FMeetingRoomSignText, TEXT_CELADONMANSION2F_MEETING_ROOM_SIGN

CeladonMansion2FMeetingRoomSignText:
	text_far _CeladonMansion2FMeetingRoomSignText
	text_end

MACRO anim_special_effect
	db \1
	dw \2
ENDM

; ~$~ADDED: Abridged comments from Kanto Expansion Pak regarding move animations and photosensitivity.~$~
;;;
; RBY has a lot of animations designed for the natural cover of the non-backlit Game Boy.
; When played on an emulator, these animations will trigger potentially dangerous medical reactions from photosensitive individuals, such as dizziness or even seizures.
;;;
;~$~ I've implemented KEP's versions of these animations for accessibility.

AnimationIdSpecialEffects: ; ~$~CHANGED: Removing the bulk of these, as they are not photosensitive-friendly.~$~
	; animation id, effect routine address
;	anim_special_effect MEGA_PUNCH,            AnimationFlashScreen
;	anim_special_effect GUILLOTINE,            AnimationFlashScreen
;	anim_special_effect MEGA_KICK,             AnimationFlashScreen
	anim_special_effect HEADBUTT,              AnimationFlashScreen
	anim_special_effect TAIL_WHIP,             TailWhipAnimationUnused
	anim_special_effect GROWL,                 DoGrowlSpecialEffects
;	anim_special_effect DISABLE,               AnimationFlashScreen
;	anim_special_effect BLIZZARD,              DoBlizzardSpecialEffects
;	anim_special_effect BUBBLEBEAM,            AnimationFlashScreen
;	anim_special_effect HYPER_BEAM,            FlashScreenEveryFourFrameBlocks
;	anim_special_effect THUNDERBOLT,           FlashScreenEveryEightFrameBlocks
;	anim_special_effect REFLECT,               AnimationFlashScreen
;	anim_special_effect SELFDESTRUCT,          DoExplodeSpecialEffects
;	anim_special_effect SPORE,                 FlashScreenEveryFourFrameBlocks
	anim_special_effect EXPLOSION,             DoExplodeSpecialEffects
	anim_special_effect ROCK_SLIDE,            DoRockSlideSpecialEffects
	db -1 ; end

AltAnimationIdSpecialEffects: ; ~$~CHANGED: Separate move anims from other battle anims.~$~
	anim_special_effect TRADE_BALL_DROP_ANIM,  TradeHidePokemon
	anim_special_effect TRADE_BALL_SHAKE_ANIM, TradeShakePokeball
	anim_special_effect TRADE_BALL_TILT_ANIM,  TradeJumpPokeball
	anim_special_effect TOSS_ANIM,             DoBallTossSpecialEffects
	anim_special_effect SHAKE_ANIM,            DoBallShakeSpecialEffects
	anim_special_effect POOF_ANIM,             DoPoofSpecialEffects
	anim_special_effect GREATTOSS_ANIM,        DoBallTossSpecialEffects
	anim_special_effect ULTRATOSS_ANIM,        DoBallTossSpecialEffects
	db -1 ; end

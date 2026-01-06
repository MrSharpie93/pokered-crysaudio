; Evos+moves data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, min level (1), species
;    * db EVOLVE_TRADE, min level (1), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

EvosMovesPointerTable:
	table_width 2, EvosMovesPointerTable
	dw RhydonEvosMoves
	dw KangaskhanEvosMoves
	dw NidoranMEvosMoves
	dw ClefairyEvosMoves
	dw SpearowEvosMoves
	dw VoltorbEvosMoves
	dw NidokingEvosMoves
	dw SlowbroEvosMoves
	dw IvysaurEvosMoves
	dw ExeggutorEvosMoves
	dw LickitungEvosMoves
	dw ExeggcuteEvosMoves
	dw GrimerEvosMoves
	dw GengarEvosMoves
	dw NidoranFEvosMoves
	dw NidoqueenEvosMoves
	dw CuboneEvosMoves
	dw RhyhornEvosMoves
	dw LaprasEvosMoves
	dw ArcanineEvosMoves
	dw MewEvosMoves
	dw GyaradosEvosMoves
	dw ShellderEvosMoves
	dw TentacoolEvosMoves
	dw GastlyEvosMoves
	dw ScytherEvosMoves
	dw StaryuEvosMoves
	dw BlastoiseEvosMoves
	dw PinsirEvosMoves
	dw TangelaEvosMoves
	dw ScizorEvosMoves
	dw YoshiEvosMoves
	dw GrowlitheEvosMoves
	dw OnixEvosMoves
	dw FearowEvosMoves
	dw PidgeyEvosMoves
	dw SlowpokeEvosMoves
	dw KadabraEvosMoves
	dw GravelerEvosMoves
	dw ChanseyEvosMoves
	dw MachokeEvosMoves
	dw MrMimeEvosMoves
	dw HitmonleeEvosMoves
	dw HitmonchanEvosMoves
	dw ArbokEvosMoves
	dw ParasectEvosMoves
	dw PsyduckEvosMoves
	dw DrowzeeEvosMoves
	dw GolemEvosMoves
	dw HeracrossEvosMoves
	dw MagmarEvosMoves
	dw MagmortarEvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw SneaselEvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw WhismurEvosMoves
	dw LoudredEvosMoves
	dw ExploudEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw MamoswineEvosMoves
	dw SwinubEvosMoves
	dw PiloswineEvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw BagonEvosMoves
	dw ShelgonEvosMoves
	dw SalamenceEvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw GorochuEvosMoves
	dw MawileEvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw SkarmoryEvosMoves
	dw HoundourEvosMoves
	dw SandshrewEvosMoves
	dw SandslashEvosMoves
	dw OmanyteEvosMoves
	dw OmastarEvosMoves
	dw JigglypuffEvosMoves
	dw WigglytuffEvosMoves
	dw EeveeEvosMoves
	dw FlareonEvosMoves
	dw JolteonEvosMoves
	dw VaporeonEvosMoves
	dw MachopEvosMoves
	dw ZubatEvosMoves
	dw EkansEvosMoves
	dw ParasEvosMoves
	dw PoliwhirlEvosMoves
	dw PoliwrathEvosMoves
	dw WeedleEvosMoves
	dw KakunaEvosMoves
	dw BeedrillEvosMoves
	dw HoundoomEvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw KingdraEvosMoves
	dw SalanditEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw SalazzleEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw Porygon2EvosMoves
	dw PorygonZEvosMoves
	dw MukEvosMoves
	dw MimeJrEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw TyrogueEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw HitmontopEvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw SmoochumEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw ElekidEvosMoves
	dw MagbyEvosMoves
	dw MiltankEvosMoves
	dw BlisseyEvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw RegirockEvosMoves
	dw MagnemiteEvosMoves
	dw RegiceEvosMoves
	dw RegisteelEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw ElectivireEvosMoves
	dw SkeletopsEvosMoves
	dw OssidactylEvosMoves
	dw RegigigasEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
; ~$~ADDED: New Pokemon.~$~
	dw DuskullEvosMoves
	dw DusclopsEvosMoves
	dw DusknoirEvosMoves
	dw LarvitarEvosMoves
	dw PupitarEvosMoves
	dw TyranitarEvosMoves
	dw TrapinchEvosMoves
	dw VibravaEvosMoves
	dw FlygonEvosMoves
	dw ChimeowEvosMoves
	dw BellunaEvosMoves
	dw CroagunkEvosMoves
	dw ToxicroakEvosMoves
	dw MagnezoneEvosMoves
	dw LickilickyEvosMoves
	dw RhyperiorEvosMoves
	dw TangrowthEvosMoves
	dw CrobatEvosMoves
	dw JoltikEvosMoves
	dw GalvantulaEvosMoves
	dw PichuEvosMoves
	dw CleffaEvosMoves
	dw IgglybuffEvosMoves
	dw TogepiEvosMoves
	dw TogeticEvosMoves
	dw TogekissEvosMoves
	dw WeavileEvosMoves
	dw MareepEvosMoves
	dw FlaaffyEvosMoves
	dw AmpharosEvosMoves
	dw BellossomEvosMoves
	dw MunchlaxEvosMoves
	dw BonslyEvosMoves
	dw SudowoodoEvosMoves
	dw PolitoedEvosMoves
	dw HoppipEvosMoves
	dw SkiploomEvosMoves
	dw JumpluffEvosMoves
	dw LitwickEvosMoves
	dw LampentEvosMoves
	dw ChandelureEvosMoves
	dw SylveonEvosMoves
	dw LeafeonEvosMoves
	dw GlaceonEvosMoves
	dw EspeonEvosMoves
	dw UmbreonEvosMoves
	dw MurkrowEvosMoves
	dw SlowkingEvosMoves
	dw BeldumEvosMoves
	dw MetangEvosMoves
	dw MetagrossEvosMoves
	dw HonchkrowEvosMoves
	dw HappinyEvosMoves
	dw SpiritombEvosMoves
	dw TurbanEvosMoves
	dw GligarEvosMoves
	dw SteelixEvosMoves
	dw NoibatEvosMoves
	dw NoivernEvosMoves
	dw GliscorEvosMoves
	dw ThuFiZerEvosMoves
	dw MissingNoEvosMoves
	dw NothingEvosMoves;MonGhostEvosMoves
	assert_table_length NUM_POKEMON_INDEXES
	
BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 7, VINE_WHIP
	db 9, LEECH_SEED
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 19, RAZOR_LEAF
	db 21, SLUDGE
	db 25, GROWTH
	db 27, DOUBLE_EDGE
	db 33, RECOVER ; Synthesis
	db 37, POWER_WHIP
	db 0
	
IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 7, VINE_WHIP
	db 9, LEECH_SEED
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 23, SLUDGE
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 39, RECOVER ; Synthesis
	db 44, SOLARBEAM
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, OUTRAGE
	db 1, TACKLE
	db 1, GROWL
	db 7, VINE_WHIP
	db 9, LEECH_SEED
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 23, SLUDGE
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 32, PETAL_DANCE
	db 45, RECOVER ; Synthesis
	db 53, SOLARBEAM
	db 0
	
CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, LEER
	db 13, METAL_CLAW
	db 16, SMOKESCREEN
	db 19, DRAGONBREATH
	db 25, SCARY_FACE
	db 28, FIRE_FANG
	db 34, SLASH
	db 37, FLAMETHROWER
	db 43, FIRE_SPIN
	db 46, INFERNO
	db 0
	
CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, LEER
	db 13, METAL_CLAW
	db 17, SMOKESCREEN
	db 21, DRAGONBREATH
	db 28, SCARY_FACE
	db 32, FIRE_FANG
	db 39, SLASH
	db 43, FLAMETHROWER
	db 50, FIRE_SPIN
	db 54, INFERNO
	db 0
	
CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, OUTRAGE
	db 1, WING_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, LEER
	db 13, METAL_CLAW
	db 17, SMOKESCREEN
	db 21, DRAGONBREATH
	db 28, SCARY_FACE
	db 32, FIRE_FANG
	db 36, AIR_SLASH
	db 41, SLASH
	db 47, FLAMETHROWER
	db 56, FIRE_SPIN
	db 62, INFERNO
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, WATER_GUN
	db 10, HARDEN
	db 13, BITE
	db 16, WHIRLPOOL
	db 19, RAPID_SPIN
	db 22, PROTECT
	db 25, WATER_PULSE
	db 28, MIST
	db 31, LIQUIDATION
	db 34, IRON_DEFENSE
	db 37, MIRROR_COAT
	db 40, HYDRO_PUMP
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, WATER_GUN
	db 10, HARDEN
	db 13, BITE
	db 16, WHIRLPOOL
	db 20, RAPID_SPIN
	db 24, PROTECT
	db 28, WATER_PULSE
	db 32, MIST
	db 36, LIQUIDATION
	db 40, IRON_DEFENSE
	db 44, MIRROR_COAT
	db 48, HYDRO_PUMP
	db 0
	
BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, OUTRAGE
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, WATER_GUN
	db 10, HARDEN
	db 13, BITE
	db 16, WHIRLPOOL
	db 20, RAPID_SPIN
	db 24, PROTECT
	db 28, WATER_PULSE
	db 32, MIST
	db 36, FLASH_CANNON
	db 39, LIQUIDATION
	db 46, IRON_DEFENSE
	db 53, MIRROR_COAT
	db 60, HYDRO_PUMP
	db 0
	
CaterpieEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
; Learnset
	db 1, TACKLE
	db 1, STRING_SHOT
	db 15, LEECH_LIFE ; Bug Bite
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 1, HARDEN
	db 7, HARDEN
	db 15, IRON_DEFENSE
	db 0

ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 10, CONFUSION
	db 12, POISONPOWDER
	db 12, STUN_SPORE
	db 12, SLEEP_POWDER
	db 16, GUST
	db 18, SUPERSONIC
	db 22, SILVER_WIND
	db 24, PSYBEAM
	db 30, SAFEGUARD
	db 36, RAZOR_WIND
	db 42, BUG_BUZZ
	db 0
	
WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 15, LEECH_LIFE ; Bug Bite
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
; Learnset
	db 1, HARDEN
	db 7, HARDEN
	db 15, IRON_DEFENSE
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POISON_STING
	db 10, FURY_ATTACK
	db 13, FOCUS_ENERGY
	db 16, TWINEEDLE
	db 19, SHARPEN
	db 22, FEINT_ATTACK
	db 25, TOXIC
	db 28, PIN_MISSILE
	db 31, AGILITY
	db 37, POISON_JAB
	db 40, OUTRAGE
	db 45, X_SCISSOR
	db 0
	
PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
; Learnset
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, TWISTER
	db 21, WING_ATTACK
	db 25, AERIAL_ACE
	db 33, MIRROR_MOVE
	db 37, TAKE_DOWN
	db 41, AGILITY
	db 45, AIR_SLASH
	db 49, HURRICANE
	db 0
	
PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0
; Learnset
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, TWISTER
	db 22, WING_ATTACK
	db 27, AERIAL_ACE
	db 37, MIRROR_MOVE
	db 42, TAKE_DOWN
	db 47, AGILITY
	db 52, AIR_SLASH
	db 57, HURRICANE
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, TWISTER
	db 22, WING_ATTACK
	db 27, AERIAL_ACE
	db 38, MIRROR_MOVE
	db 44, TAKE_DOWN
	db 50, AGILITY
	db 56, AIR_SLASH
	db 62, HURRICANE
	db 0
	
RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 10, BITE
	db 13, FOCUS_ENERGY
	db 16, POISON_FANG
	db 19, SUCKER_PUNCH
	db 22, CRUNCH
	db 25, SCREECH
	db 28, SUPER_FANG
	db 31, DOUBLE_EDGE
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 10, BITE
	db 13, FOCUS_ENERGY
	db 16, POISON_FANG
	db 19, SUCKER_PUNCH
	db 20, SCARY_FACE
	db 24, CRUNCH
	db 29, SCREECH
	db 34, SUPER_FANG
	db 39, DOUBLE_EDGE
	db 0
	
SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 1, PECK
	db 1, GROWL
	db 5, LEER
	db 9, FURY_ATTACK
	db 13, SONICBOOM
	db 17, AERIAL_ACE
	db 25, MIRROR_MOVE
	db 29, FEINT_ATTACK
	db 33, AGILITY
	db 37, DRILL_PECK
	db 0
	
FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, GROWL
	db 5, LEER
	db 9, FURY_ATTACK
	db 13, SONICBOOM
	db 17, AERIAL_ACE
	db 20, TRI_ATTACK
	db 29, MIRROR_MOVE
	db 35, FEINT_ATTACK
	db 41, AGILITY
	db 47, DRILL_PECK
	db 0
	
EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 1, BIND
	db 1, LEER
	db 9, POISON_STING
	db 12, BITE
	db 17, GLARE
	db 20, SCREECH
	db 25, ACID
	db 28, MUD_SHOT
	db 33, POISON_FANG
	db 36, HAZE
	db 38, SLUDGE_BOMB
	db 41, DRAGON_DANCE
	db 44, GUNK_SHOT
	db 0
	
ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, BIND
	db 1, LEER
	db 9, POISON_STING
	db 12, BITE
	db 17, GLARE
	db 20, SCREECH
	db 22, CRUNCH
	db 27, ACID
	db 32, MUD_SHOT
	db 39, POISON_FANG
	db 44, HAZE
	db 48, SLUDGE_BOMB
	db 51, DRAGON_DANCE
	db 56, GUNK_SHOT
	db 0
	
PichuEvosMoves:
; Evolutions
	db EVOLVE_MAP, DAYCARE, PIKACHU ; Friendship
	db 0
; Learnset
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, TAIL_WHIP
	db 10, SWEET_KISS
	db 13, THUNDER_WAVE
	db 18, NASTY_PLOT
	db 25, PLAY_ROUGH
	db 0
	
PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 5, TAIL_WHIP
	db 10, QUICK_ATTACK
	db 13, THUNDER_WAVE
	db 18, SWIFT
	db 21, DOUBLE_TEAM
	db 23, SPARK
	db 29, THUNDERBOLT
	db 34, IRON_TAIL
	db 37, AGILITY
	db 42, THUNDER
	db 45, LIGHT_SCREEN
	db 50, WILD_CHARGE
	db 0

RaichuEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GOROCHU
	db EVOLVE_ITEM, LINK_CORD, 1, GOROCHU
	db 0
; Learnset
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERPUNCH
	db 0
	
GorochuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SUBMISSION
	db 1, TAIL_WHIP
	db 1, LOW_SWEEP
	db 1, THUNDERPUNCH
	db 42, DYNAMICPUNCH
	db 0
	
SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
SandslashEvosMoves:
	db 0
; Learnset
	db 1, SCRATCH
	db 1, HARDEN
	db 7, SAND_ATTACK
	db 9, POISON_STING
	db 11, FURY_ATTACK
	db 14, RAPID_SPIN
	db 17, BULLDOZE
	db 20, METAL_CLAW
	db 23, SWIFT
	db 26, SAND_TOMB
	db 30, SLASH
	db 34, DIG
	db 38, SWORDS_DANCE
	db 42, EARTHQUAKE
	db 0
	
NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 1, GROWL
	db 1, SCRATCH
	db 7, TAIL_WHIP
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_ATTACK
	db 21, BITE
	db 25, COUNTER
	db 31, TOXIC
	db 33, CRUNCH
	db 37, POISON_FANG
	db 45, LOVELY_KISS
	db 0
	
NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0
; Learnset
	db 1, GROWL
	db 1, SCRATCH
	db 7, TAIL_WHIP
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_ATTACK
	db 23, BITE
	db 28, COUNTER
	db 35, TOXIC
	db 38, CRUNCH
	db 43, POISON_FANG
	db 50, LOVELY_KISS
	db 0

NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, BODY_SLAM
	db 35, EARTH_POWER
	db 43, SUBMISSION
	db 58, OUTRAGE
	db 0
	
NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_ATTACK
	db 21, HORN_ATTACK
	db 25, COUNTER
	db 31, TOXIC
	db 33, POISON_JAB
	db 37, SMART_STRIKE
	db 45, AMNESIA
	db 0
	
NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db 0
; Learnset
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_ATTACK
	db 23, HORN_ATTACK
	db 28, COUNTER
	db 35, TOXIC
	db 38, POISON_JAB
	db 43, SMART_STRIKE
	db 50, AMNESIA
	db 0
	
NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
	db 35, EARTH_POWER
	db 43, MEGAHORN
	db 58, OUTRAGE
	db 0
	
CleffaEvosMoves:
; Evolutions
	db EVOLVE_MAP, DAYCARE, CLEFAIRY ; Friendship
	db 0
; Learnset
	db 1, POUND
	db 1, CHARM
	db 5, MIRROR_MOVE ; Copycat
	db 10, SING
	db 13, SWEET_KISS
	db 16, MAGICAL_LEAF
	db 25, PLAY_ROUGH
	db 0
	
ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 1, POUND
	db 1, GROWL
	db 5, MIRROR_MOVE ; Copycat
	db 10, SING
	db 13, DISARM_VOICE
	db 16, HARDEN ; Defense Curl
	db 19, DOUBLE_HIT ; Doubleslap
	db 22, MINIMIZE
	db 25, DRAIN_KISS
	db 28, METRONOME
	db 31, COSMIC_POWER
	db 34, BODY_SLAM
	db 37, RECOVER ; Moonlight
	db 40, LIGHT_SCREEN
	db 43, METEOR_MASH
	db 46, MOONBLAST
	db 0
	
ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SING
	db 1, DOUBLE_HIT ; Doubleslap
	db 1, MINIMIZE
	db 1, METRONOME
	db 0
	
VulpixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, NINETALES
	db 0
; Learnset
	db 1, EMBER
	db 7, TAIL_WHIP
	db 10, HOWL
	db 12, QUICK_ATTACK
	db 15, WILL_O_WISP
	db 18, FEINT_ATTACK
	db 20, CONFUSE_RAY
	db 23, FLAME_CHARGE
	db 26, DISABLE
	db 28, HEX
	db 31, FLAMETHROWER
	db 34, SAFEGUARD
	db 36, HYPNOSIS
	db 39, FIRE_SPIN
	db 42, INFERNO
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, NASTY_PLOT
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 45, FIRE_SPIN
	db 0
	
IgglybuffEvosMoves:
; Evolutions
	db EVOLVE_MAP, DAYCARE, IGGLYBUFF ; Friendship
	db 0
; Learnset
	db 1, POUND
	db 1, CHARM
	db 5, SING
	db 9, HARDEN ; Defense Curl
	db 13, SWEET_KISS
	db 17, FAKE_TEARS
	db 25, PLAY_ROUGH
	db 0
	
JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 1, POUND
	db 1, SING
	db 9, HARDEN ; Defense Curl
	db 13, DISABLE
	db 17, DISARM_VOICE
	db 21, DOUBLE_HIT ; Doubleslap
	db 25, REST
	db 29, BODY_SLAM
	db 33, MIMIC
	db 37, PLAY_ROUGH
	db 41, HYPER_VOICE
	db 45, DOUBLE_EDGE
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SING
	db 1, DISABLE
	db 1, HARDEN ; Defense Curl
	db 1, DOUBLE_HIT ; Doubleslap
	db 0
	
TogepiEvosMoves:
; Evolutions
	db EVOLVE_MAP, DAYCARE, TOGETIC ; Friendship
	db 0
; Learnset
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, PECK
	db 17, MIRROR_MOVE
	db 21, HYPER_VOICE
	db 25, SOFTBOILED
	db 29, ANCIENTPOWER
	db 33, SAFEGUARD
	db 37, HEAL_BELL
	db 41, DOUBLE_EDGE
	db 45, NASTY_PLOT
	db 49, PLAY_ROUGH
	db 0
	
TogeticEvosMoves:
; Evolutions
	db EVOLVE_ITEM, SHINY_STONE, 1, TOGEKISS
	db 0
; Learnset
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, PECK
	db 17, MIRROR_MOVE
	db 21, HYPER_VOICE
	db 25, SOFTBOILED
	db 29, ANCIENTPOWER
	db 33, SAFEGUARD
	db 37, HEAL_BELL
	db 41, DOUBLE_EDGE
	db 45, NASTY_PLOT
	db 49, PLAY_ROUGH
	db 0

TogekissEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, EXTREMESPEED
	db 1, AIR_SLASH
	db 1, FOCUS_BLAST
	db 1, SKY_ATTACK
	db 0
	
ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 1, MEGA_DRAIN ; Absorb
	db 1, SUPERSONIC
	db 8, ASTONISH
	db 12, BITE
	db 15, WING_ATTACK
	db 19, CONFUSE_RAY
	db 23, SWIFT
	db 26, LEECH_LIFE
	db 30, AIR_SLASH
	db 34, FEINT_ATTACK
	db 37, POISON_FANG
	db 41, HAZE
	db 0
	
GolbatEvosMoves:
; Evolutions
	db EVOLVE_MAP, DAYCARE, CROBAT ; Friendship
CrobatEvosMoves:
	db 0
; Learnset
	db 1, MEGA_DRAIN ; Absorb
	db 1, SUPERSONIC
	db 8, ASTONISH
	db 12, BITE
	db 15, WING_ATTACK
	db 19, CONFUSE_RAY
	db 22, SCREECH
	db 24, SWIFT
	db 28, LEECH_LIFE
	db 33, AIR_SLASH
	db 38, FEINT_ATTACK
	db 42, POISON_FANG
	db 47, HAZE
	db 0
	
OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 1, MEGA_DRAIN ; Absorb
	db 5, LEECH_SEED
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 21, RAZOR_LEAF
	db 25, GROWTH
	db 29, TOXIC
	db 33, RECOVER ; Moonlight
	db 37, GIGA_DRAIN
	db 41, PETAL_DANCE
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, 1, BELLOSSOM
	db 0
; Learnset
	db 1, MEGA_DRAIN ; Absorb
	db 5, LEECH_SEED
	db 9, ACID
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 23, RAZOR_LEAF
	db 29, GROWTH
	db 35, TOXIC
	db 41, RECOVER ; Moonlight
	db 47, GIGA_DRAIN
	db 53, PETAL_DANCE
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ACID
	db 1, MEGA_DRAIN
	db 1, POISONPOWDER
	db 1, STUN_SPORE
	db 44, PETAL_DANCE
	db 0
	
BellossomEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, MAGICAL_LEAF
	db 1, MEGA_DRAIN
	db 1, SLEEP_POWDER
	db 1, STUN_SPORE
	db 44, PETAL_DANCE
	db 0

HoppipEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0
; Learnset
	db 1, SPLASH
	db 4, RECOVER ; Synthesis
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, GUST
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 19, BULLET_SEED
	db 22, LEECH_SEED
	db 25, MEGA_DRAIN
	db 28, AERIAL_ACE
	db 31, SILVER_WIND
	db 34, COTTON_SPORE
	db 37, GIGA_DRAIN
	db 40, RAZOR_WIND
	db 0
	
SkiploomEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0
; Learnset
	db 1, SPLASH
	db 4, RECOVER ; Synthesis
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, GUST
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, BULLET_SEED
	db 24, LEECH_SEED
	db 28, MEGA_DRAIN
	db 32, AERIAL_ACE
	db 36, SILVER_WIND
	db 40, COTTON_SPORE
	db 44, GIGA_DRAIN
	db 48, RAZOR_WIND
	db 0
	
JumpluffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SPLASH
	db 4, RECOVER ; Synthesis
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 10, GUST
	db 12, POISONPOWDER
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, BULLET_SEED
	db 24, LEECH_SEED
	db 29, MEGA_DRAIN
	db 34, AERIAL_ACE
	db 39, SILVER_WIND
	db 44, COTTON_SPORE
	db 49, GIGA_DRAIN
	db 54, RAZOR_WIND
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, MEGA_DRAIN
	db 17, LEECH_SEED
	db 22, SPORE
	db 27, SLASH
	db 33, LEECH_LIFE
	db 38, GROWTH
	db 43, GIGA_DRAIN
	db 49, X_SCISSOR
	db 0
	
ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, MEGA_DRAIN
	db 17, LEECH_SEED
	db 22, SPORE
	db 29, SLASH
	db 37, LEECH_LIFE
	db 44, GROWTH
	db 51, GIGA_DRAIN
	db 59, X_SCISSOR
	db 0
	
VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 1, TACKLE
	db 1, DISABLE
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, LEECH_LIFE
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 35, SIGNAL_BEAM
	db 37, ZEN_HEADBUTT
	db 41, POISON_FANG
	db 47, PSYCHIC_M
	db 0
	
VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, GUST
	db 1, DISABLE
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, LEECH_LIFE
	db 23, STUN_SPORE
	db 25, PSYBEAM
	db 29, SLEEP_POWDER
	db 31, AIR_SLASH
	db 37, SILVER_WIND
	db 41, ZEN_HEADBUTT
	db 47, POISON_FANG
	db 55, PSYCHIC_M
	db 59, BUG_BUZZ
	db 0
	
JoltikEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, GALVANTULA
	db 0
; Learnset
	db 1, MEGA_DRAIN
	db 1, STRING_SHOT
	db 4, THUNDER_WAVE
	db 7, SCREECH
	db 12, LEECH_LIFE
	db 15, ELECTROWEB
	db 18, BITE
	db 23, INFESTATION
	db 26, SLASH
	db 29, SHOCK_WAVE
	db 34, SIGNAL_BEAM
	db 37, AGILITY
	db 40, SUCKER_PUNCH
	db 45, THUNDER
	db 48, BUG_BUZZ
	db 0
	
GalvantulaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, MEGA_DRAIN
	db 1, STRING_SHOT
	db 4, THUNDER_WAVE
	db 7, SCREECH
	db 12, LEECH_LIFE
	db 15, ELECTROWEB
	db 18, BITE
	db 23, INFESTATION
	db 26, SLASH
	db 29, SHOCK_WAVE
	db 34, SIGNAL_BEAM
	db 40, AGILITY
	db 46, SUCKER_PUNCH
	db 54, THUNDER
	db 60, BUG_BUZZ
	db 0
	
DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 7, GROWL
	db 12, ASTONISH
	db 15, MUD_SLAP
	db 18, BULLDOZE
	db 23, SUCKER_PUNCH
	db 26, MUD_SHOT
	db 29, EARTH_POWER
	db 34, DIG
	db 37, SLASH
	db 40, EARTHQUAKE
	db 45, FISSURE
	db 0
	
DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, NIGHT_SLASH
	db 1, SAND_ATTACK
	db 7, GROWL
	db 12, ASTONISH
	db 15, SAND_TOMB
	db 18, BULLDOZE
	db 23, SUCKER_PUNCH
	db 26, TRI_ATTACK
	db 28, MUD_SHOT
	db 33, EARTH_POWER
	db 40, DIG
	db 45, SLASH
	db 50, EARTHQUAKE
	db 57, FISSURE
	db 0
	
MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, SHARPEN
	db 14, FURY_ATTACK
	db 17, SCREECH
	db 22, FEINT_ATTACK
	db 25, PAY_DAY
	db 30, SING
	db 33, SLASH
	db 38, NASTY_PLOT
	db 41, PLAY_ROUGH
	db 46, NIGHT_SLASH
	db 0
	
PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, SHARPEN
	db 14, FURY_ATTACK
	db 17, SCREECH
	db 22, FEINT_ATTACK
	db 25, PAY_DAY
	db 28, POWER_GEM
	db 32, SING
	db 37, SLASH
	db 44, NASTY_PLOT
	db 49, PLAY_ROUGH
	db 56, NIGHT_SLASH
	db 0
	
ChimeowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, BELLUNA
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, SHARPEN
	db 14, FEINT_ATTACK
	db 17, SCREECH
	db 22, NIGHT_SHADE
	db 25, HEAL_BELL
	db 30, HYPNOSIS
	db 33, NIGHT_SLASH
	db 38, NASTY_PLOT
	db 41, PLAY_ROUGH
	db 46, MOONBLAST
	db 0
	
BellunaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 9, SHARPEN
	db 14, FEINT_ATTACK
	db 17, SCREECH
	db 22, NIGHT_SHADE
	db 25, HEAL_BELL
	db 28, SNARL
	db 32, HYPNOSIS
	db 37, NIGHT_SLASH
	db 44, NASTY_PLOT
	db 49, PLAY_ROUGH
	db 56, MOONBLAST
	db 0
	
MareepEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 8, THUNDER_WAVE
	db 11, THUNDERSHOCK
	db 15, COTTON_SPORE
	db 18, TAKE_DOWN
	db 22, SIGNAL_BEAM
	db 25, CONFUSE_RAY
	db 29, POWER_GEM
	db 32, THUNDERBOLT
	db 36, BARRIER
	db 39, DAZZLINGLEAM
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 0
	
FlaaffyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 8, THUNDER_WAVE
	db 11, THUNDERSHOCK
	db 16, COTTON_SPORE
	db 20, TAKE_DOWN
	db 25, SIGNAL_BEAM
	db 29, CONFUSE_RAY
	db 34, POWER_GEM
	db 38, THUNDERBOLT
	db 43, BARRIER
	db 47, DAZZLINGLEAM
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db 0
	
AmpharosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 8, THUNDER_WAVE
	db 11, THUNDERSHOCK
	db 16, COTTON_SPORE
	db 20, TAKE_DOWN
	db 25, SIGNAL_BEAM
	db 29, CONFUSE_RAY
	db 30, THUNDERPUNCH
	db 35, POWER_GEM
	db 40, THUNDERBOLT
	db 46, BARRIER
	db 51, DAZZLINGLEAM
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 0
	
PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 8, WATER_GUN
	db 11, DISABLE
	db 15, CONFUSION
	db 18, WATER_PULSE
	db 22, FURY_ATTACK
	db 25, SCREECH
	db 29, ZEN_HEADBUTT
	db 32, LIQUIDATION
	db 36, CONFUSE_RAY
	db 39, AMNESIA
	db 43, HYDRO_PUMP
	db 0
	
GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 8, WATER_GUN
	db 11, DISABLE
	db 15, CONFUSION
	db 18, WATER_PULSE
	db 22, FURY_ATTACK
	db 25, SCREECH
	db 29, ZEN_HEADBUTT
	db 32, LIQUIDATION
	db 38, CONFUSE_RAY
	db 43, AMNESIA
	db 49, HYDRO_PUMP
	db 0
	
MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 1, SCRATCH
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 9, FURY_ATTACK
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, MEDITATE
	db 33, LOW_SWEEP
	db 37, CROSS_CHOP
	db 41, THRASH
	db 45, OUTRAGE
	db 49, SUBMISSION
	db 0
	
PrimeapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 9, FURY_ATTACK
	db 13, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, MEDITATE
	db 35, LOW_SWEEP
	db 41, CROSS_CHOP
	db 47, THRASH
	db 53, OUTRAGE
	db 59, SUBMISSION
	db 0
	
GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 1, BITE
	db 1, HOWL
	db 8, EMBER
	db 10, LEER
	db 12, DOUBLE_KICK
	db 17, FLAME_CHARGE
	db 21, FIRE_FANG
	db 23, TAKE_DOWN
	db 28, FIRE_SPIN
	db 30, AGILITY
	db 34, FLAMETHROWER
	db 39, CRUNCH
	db 41, PLAY_ROUGH
	db 43, OUTRAGE
	db 45, FLARE_BLITZ
	db 0
	
ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, HOWL
	db 1, EMBER
	db 1, BITE
	db 1, FIRE_FANG
	db 34, EXTREMESPEED
	db 0
	
HoundourEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0
; Learnset
	db 1, EMBER
	db 1, LEER
	db 8, HOWL
	db 13, SMOG
	db 16, BITE
	db 20, FLAME_CHARGE
	db 25, SNARL
	db 28, FIRE_FANG
	db 32, FEINT_ATTACK
	db 37, FIRE_SPIN
	db 40, FLAMETHROWER
	db 44, CRUNCH
	db 49, NASTY_PLOT
	db 52, INFERNO
	db 0
	
HoundoomEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, EMBER
	db 1, LEER
	db 8, HOWL
	db 13, SMOG
	db 16, BITE
	db 20, FLAME_CHARGE
	db 26, SNARL
	db 30, FIRE_FANG
	db 35, FEINT_ATTACK
	db 41, FIRE_SPIN
	db 45, FLAMETHROWER
	db 50, CRUNCH
	db 56, NASTY_PLOT
	db 60, INFERNO
	db 0
	
PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 1, WATER_GUN
	db 5, POUND
	db 8, HYPNOSIS
	db 11, WATER_PULSE
	db 15, DOUBLE_HIT ; Doubleslap
	db 18, MIST
	db 21, BODY_SLAM
	db 25, BUBBLEBEAM
	db 28, MUD_SHOT
	db 31, AMNESIA
	db 35, EARTH_POWER
	db 38, HYDRO_PUMP
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, 1, POLITOED
	db 0
; Learnset
	db 1, WATER_GUN
	db 5, POUND
	db 8, HYPNOSIS
	db 11, WATER_PULSE
	db 15, DOUBLE_HIT ; Doubleslap
	db 18, MIST
	db 21, BODY_SLAM
	db 27, BUBBLEBEAM
	db 32, MUD_SHOT
	db 37, AMNESIA
	db 43, EARTH_POWER
	db 48, HYDRO_PUMP
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, DOUBLE_HIT ; Doubleslap
	db 1, BODY_SLAM
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 32, DYNAMICPUNCH
	db 43, SUBMISSION
	db 0
	
PolitoedEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, DOUBLE_HIT ; Doubleslap
	db 1, BODY_SLAM
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 32, WHIRLPOOL
	db 43, HYPER_VOICE
	db 0
	
AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, KADABRA
	db 0
; Learnset
	db 1, TELEPORT
	db 0
	
KadabraEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, ALAKAZAM
	db EVOLVE_ITEM, LINK_CORD, 1, ALAKAZAM
AlakazamEvosMoves:
	db 0
; Learnset
	db 1, TELEPORT
	db 16, CONFUSION
	db 18, DISABLE
	db 22, BARRIER
	db 28, PSYBEAM
	db 30, REFLECT
	db 34, RECOVER
	db 36, NIGHT_SHADE
	db 40, ZEN_HEADBUTT
	db 42, COSMIC_POWER
	db 46, TRI_ATTACK
	db 48, PSYCHIC_M
	db 0
	
MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
; Learnset
	db 1, TACKLE
	db 1, LEER
	db 10, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, LOW_SWEEP
	db 22, MEDITATE
	db 25, SEISMIC_TOSS
	db 31, BULLET_PUNCH
	db 37, SUBMISSION
	db 43, CROSS_CHOP
	db 46, SCARY_FACE
	db 49, DYNAMICPUNCH
	db 0
	
MachokeEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, MACHAMP
	db EVOLVE_ITEM, LINK_CORD, 1, MACHAMP
MachampEvosMoves:
	db 0
; Learnset
	db 1, TACKLE
	db 1, LEER
	db 10, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, LOW_SWEEP
	db 22, MEDITATE
	db 25, SEISMIC_TOSS
	db 32, BULLET_PUNCH
	db 40, SUBMISSION
	db 44, CROSS_CHOP
	db 51, SCARY_FACE
	db 55, DYNAMICPUNCH
	db 0
	
BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, BIND ; Wrap
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 27, SUCKER_PUNCH
	db 29, LEECH_LIFE
	db 35, SLUDGE
	db 39, RAZOR_LEAF
	db 41, POISON_JAB
	db 47, POWER_WHIP
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0
; Learnset
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, BIND ; Wrap
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 27, SUCKER_PUNCH
	db 29, LEECH_LIFE
	db 35, SLUDGE
	db 39, RAZOR_LEAF
	db 41, POISON_JAB
	db 47, POWER_WHIP
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SLEEP_POWDER
	db 1, ACID
	db 1, RAZOR_LEAF
	db 1, VINE_WHIP
	db 44, CRUNCH
	db 0
	
TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 1, POISON_STING
	db 8, SUPERSONIC
	db 12, BIND ; Wrap
	db 15, ACID
	db 19, WATER_GUN
	db 22, RAPID_SPIN
	db 26, BUBBLEBEAM
	db 29, ACID_ARMOR
	db 33, HAZE
	db 36, POISON_JAB
	db 40, SCREECH
	db 43, HEX
	db 47, MIRROR_COAT
	db 50, SLUDGE_BOMB
	db 54, HYDRO_PUMP
	db 0
	
TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POISON_STING
	db 8, SUPERSONIC
	db 12, BIND ; Wrap
	db 15, ACID
	db 19, WATER_GUN
	db 22, RAPID_SPIN
	db 26, BUBBLEBEAM
	db 29, ACID_ARMOR
	db 34, HAZE
	db 38, POISON_JAB
	db 43, SCREECH
	db 47, HEX
	db 52, MIRROR_COAT
	db 56, SLUDGE_BOMB
	db 61, HYDRO_PUMP
	db 0
	
GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN
	db 8, MUD_SLAP
	db 11, ROCK_THROW
	db 15, BULLDOZE
	db 22, SELFDESTRUCT
	db 25, MEGA_PUNCH
	db 29, IRON_DEFENSE
	db 32, ROCK_SLIDE
	db 36, DYNAMICPUNCH
	db 39, EARTHQUAKE
	db 43, EXPLOSION
	db 46, DOUBLE_EDGE
	db 50, STONE_EDGE
	db 0
	
GravelerEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GOLEM
	db EVOLVE_ITEM, LINK_CORD, 1, GOLEM
GolemEvosMoves:
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN
	db 8, MUD_SLAP
	db 11, ROCK_THROW
	db 15, BULLDOZE
	db 22, SELFDESTRUCT
	db 27, MEGA_PUNCH
	db 31, IRON_DEFENSE
	db 36, ROCK_SLIDE
	db 42, DYNAMICPUNCH
	db 47, EARTHQUAKE
	db 53, EXPLOSION
	db 58, DOUBLE_EDGE
	db 64, STONE_EDGE
	db 0
	
WhismurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, LOUDRED
	db 0
; Learnset
	db 1, POUND
	db 1, GROWL
	db 5, ASTONISH
	db 11, SUPERSONIC
	db 15, HOWL
	db 21, FAKE_TEARS
	db 25, SONICBOOM
	db 31, STOMP
	db 35, SCREECH
	db 41, HYPER_VOICE
	db 45, REST
	db 50, BOOMBURST
	db 0

LoudredEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, EXPLOUD
	db 0
; Learnset
	db 1, POUND
	db 1, GROWL
	db 5, ASTONISH
	db 11, SUPERSONIC
	db 15, HOWL
	db 20, BITE
	db 23, SCARY_FACE
	db 29, SONICBOOM
	db 37, STOMP
	db 43, SCREECH
	db 51, HYPER_VOICE
	db 57, REST
	db 65, BOOMBURST
	db 0

ExploudEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, POUND
	db 1, GROWL
	db 5, ASTONISH
	db 11, SUPERSONIC
	db 15, HOWL
	db 20, BITE
	db 23, SCARY_FACE
	db 29, SONICBOOM
	db 37, STOMP
	db 40, CRUNCH
	db 45, SCREECH
	db 55, HYPER_VOICE
	db 63, REST
	db 71, BOOMBURST
	db 0
	
CroagunkEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, TOXICROAK
	db 0
; Learnset
	db 1, ASTONISH
	db 1, MUD_SLAP
	db 8, POISON_STING
	db 10, MEDITATE
	db 15, HEADBUTT
	db 17, FEINT_ATTACK
	db 22, KARATE_CHOP
	db 24, DOUBLE_TEAM
	db 29, MUD_SHOT
	db 31, SUCKER_PUNCH
	db 36, NASTY_PLOT
	db 38, POISON_JAB
	db 43, SLUDGE_BOMB
	db 45, CROSS_CHOP
	db 0

ToxicroakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ASTONISH
	db 1, MUD_SLAP
	db 8, POISON_STING
	db 10, MEDITATE
	db 15, HEADBUTT
	db 17, FEINT_ATTACK
	db 22, KARATE_CHOP
	db 24, DOUBLE_TEAM
	db 29, MUD_SHOT
	db 31, SUCKER_PUNCH
	db 36, NASTY_PLOT
	db 41, POISON_JAB
	db 49, SLUDGE_BOMB
	db 54, CROSS_CHOP
	db 0
	
PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 9, TAIL_WHIP
	db 13, EMBER
	db 17, STOMP
	db 21, FLAME_CHARGE
	db 25, FIRE_SPIN
	db 29, TAKE_DOWN
	db 33, INFERNO
	db 37, AGILITY
	db 41, BLAZE_KICK
	db 45, FIRE_BLAST
	db 49, FLARE_BLITZ
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, MEGAHORN
	db 1, TACKLE
	db 1, GROWL
	db 9, TAIL_WHIP
	db 13, EMBER
	db 17, STOMP
	db 21, FLAME_CHARGE
	db 25, FIRE_SPIN
	db 29, TAKE_DOWN
	db 33, INFERNO
	db 37, AGILITY
	db 40, SMART_STRIKE
	db 41, BLAZE_KICK
	db 45, FIRE_BLAST
	db 49, FLARE_BLITZ
	db 0
	
SalanditEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SALAZZLE
	db 0
; Learnset
	db 1, SCRATCH
	db 1, POISON_GAS
	db 1, EMBER
	db 13, DRAGONBREATH
	db 16, SMOG
	db 21, DOUBLE_HIT ; Doubleslap
	db 24, FLAME_CHARGE
	db 29, TOXIC
	db 32, NASTY_PLOT
	db 37, POISON_FANG
	db 40, FLAMETHROWER
	db 45, SLUDGE_BOMB
	db 48, DRAGON_PULSE
	db 0

SalazzleEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, POISON_GAS
	db 1, EMBER
	db 13, DRAGONBREATH
	db 16, SMOG
	db 21, DOUBLE_HIT ; Doubleslap
	db 24, FLAME_CHARGE
	db 29, TOXIC
	db 32, NASTY_PLOT
	db 39, POISON_FANG
	db 44, FLAMETHROWER
	db 51, SLUDGE_BOMB
	db 56, DRAGON_PULSE
	db 0
	
SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, 1, SLOWKING
	db 0
; Learnset
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, RECOVER ; Slack Off
	db 41, AMNESIA
	db 45, PSYCHIC_M
	db 49, HYDRO_PUMP
	db 0
	
SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, RECOVER ; Slack Off
	db 37, IRON_DEFENSE
	db 43, AMNESIA
	db 49, PSYCHIC_M
	db 55, HYDRO_PUMP
	db 0
	
SlowkingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POWER_GEM
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, ZEN_HEADBUTT
	db 36, NASTY_PLOT
	db 41, AMNESIA
	db 45, PSYCHIC_M
	db 49, HYDRO_PUMP
	db 0
	
MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 1, TACKLE
	db 1, SUPERSONIC
	db 7, THUNDERSHOCK
	db 11, SONICBOOM
	db 15, THUNDER_WAVE
	db 18, SPARK
	db 21, ELECTROWEB
	db 25, TELEPORT
	db 29, METAL_SOUND
	db 32, THUNDERBOLT
	db 35, FLASH_CANNON
	db 39, SCREECH
	db 43, THUNDER
	db 46, LIGHT_SCREEN
	db 49, MIRROR_COAT
	db 53, ZAP_CANNON
	db 0
	
MagnetonEvosMoves:
; Evolutions
	db EVOLVE_MAP, POWER_PLANT, MAGNEZONE
MagnezoneEvosMoves:
	db 0
; Learnset
	db 1, IRON_DEFENSE
	db 1, TACKLE
	db 1, SUPERSONIC
	db 7, THUNDERSHOCK
	db 11, SONICBOOM
	db 15, THUNDER_WAVE
	db 18, SPARK
	db 21, ELECTROWEB
	db 25, TELEPORT
	db 29, METAL_SOUND
	db 30, TRI_ATTACK
	db 34, THUNDERBOLT
	db 39, FLASH_CANNON
	db 45, SCREECH
	db 51, THUNDER
	db 56, LIGHT_SCREEN
	db 62, MIRROR_COAT
	db 67, ZAP_CANNON
	db 0
	
FarfetchdEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, SAND_ATTACK
	db 9, LEER
	db 13, FURY_ATTACK
	db 19, AERIAL_ACE
	db 21, RAZOR_LEAF
	db 25, CUT ; DUX the god
	db 31, SWORDS_DANCE
	db 33, SLASH
	db 37, AGILITY
	db 43, NIGHT_SLASH
	db 45, AIR_SLASH
	db 49, SKY_ATTACK
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 1, PECK
	db 1, GROWL
	db 5, SUPERSONIC
	db 10, QUICK_ATTACK
	db 14, FURY_ATTACK
	db 19, DOUBLE_KICK
	db 23, FEINT_ATTACK
	db 28, MIRROR_MOVE
	db 32, DOUBLE_HIT
	db 37, AGILITY
	db 41, DRILL_PECK
	db 46, THRASH
	db 0
	
DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, GROWL
	db 5, SUPERSONIC
	db 10, QUICK_ATTACK
	db 14, FURY_ATTACK
	db 19, DOUBLE_KICK
	db 23, FEINT_ATTACK
	db 28, MIRROR_MOVE
	db 34, TRI_ATTACK
	db 41, AGILITY
	db 47, DRILL_PECK
	db 54, THRASH
	db 0
	
MurkrowEvosMoves:
; Evolutions
	db EVOLVE_ITEM, DUSK_STONE, 1, HONCHKROW
	db 0
; Learnset
	db 1, PECK
	db 1, ASTONISH
	db 1, GUST
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, CONFUSE_RAY
	db 31, MIRROR_MOVE
	db 35, FEINT_ATTACK
	db 41, OMINOUS_WIND
	db 45, SUCKER_PUNCH
	db 50, DRILL_PECK
	db 0
	
HonchkrowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ASTONISH
	db 1, GUST
	db 1, HAZE
	db 1, WING_ATTACK
	db 25, SCREECH
	db 35, NASTY_PLOT
	db 45, NIGHT_SLASH
	db 55, DARK_PULSE
	db 0
	
SkarmoryEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, LEER
	db 12, SAND_ATTACK
	db 17, SWIFT
	db 20, AGILITY
	db 23, FURY_ATTACK
	db 28, AIR_SLASH
	db 31, METAL_SOUND
	db 34, STEEL_WING
	db 39, SLASH
	db 42, DRILL_PECK
	db 45, NIGHT_SLASH
	db 0
	
SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 1, HEADBUTT
	db 1, GROWL
	db 7, CHARM
	db 11, LICK
	db 13, ICY_WIND
	db 17, ICE_SHARD
	db 21, REST
	db 23, ICICLE_SPEAR
	db 27, AURORA_BEAM
	db 33, WHIRLPOOL
	db 37, TAKE_DOWN
	db 41, MIST
	db 43, LIQUIDATION
	db 47, ICE_BEAM
	db 51, SAFEGUARD
	db 0
	
DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, HEADBUTT
	db 1, GROWL
	db 7, SIGNAL_BEAM
	db 11, LICK
	db 13, ICY_WIND
	db 17, ICE_SHARD
	db 21, REST
	db 23, ICICLE_SPEAR
	db 27, AURORA_BEAM
	db 33, WHIRLPOOL
	db 34, SHEER_COLD
	db 39, TAKE_DOWN
	db 45, MIST
	db 49, LIQUIDATION
	db 55, ICE_BEAM
	db 61, SAFEGUARD
	db 0
	
SneaselEvosMoves:
; Evolutions
	db EVOLVE_MOVE, RAZOR_WIND, WEAVILE ; replaces Razor Claw
	db 0
; Learnset
	db 1, SCRATCH
	db 1, LEER
	db 10, QUICK_ATTACK
	db 14, METAL_CLAW
	db 16, ICY_WIND
	db 20, FURY_ATTACK
	db 22, AGILITY
	db 25, FEINT_ATTACK
	db 28, SHARPEN
	db 32, SNARL
	db 35, SCREECH
	db 40, SLASH
	db 44, RAZOR_WIND
	db 47, ICE_SHARD
	db 0
	
WeavileEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, LEER
	db 10, QUICK_ATTACK
	db 14, METAL_CLAW
	db 16, ICY_WIND
	db 20, FURY_ATTACK
	db 22, NASTY_PLOT
	db 25, FEINT_ATTACK
	db 28, SHARPEN
	db 32, SNARL
	db 35, SCREECH
	db 40, NIGHT_SLASH
	db 44, ICICLE_CRASH
	db 47, DARK_PULSE
	db 0
	
SwinubEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN
	db 11, POWDER_SNOW
	db 14, MUD_SLAP
	db 18, MUD_SHOT
	db 21, ICY_WIND
	db 24, ICE_SHARD
	db 28, TAKE_DOWN
	db 35, MIST
	db 37, EARTHQUAKE
	db 40, DOUBLE_EDGE
	db 44, BLIZZARD
	db 48, AMNESIA
	db 0
	
PiloswineEvosMoves:
; Evolutions
	db EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db 0
; Learnset
	db 1, ANCIENTPOWER
	db 1, HORN_ATTACK
	db 1, HARDEN
	db 11, POWDER_SNOW
	db 14, MUD_SLAP
	db 18, MUD_SHOT
	db 21, ICY_WIND
	db 24, ICE_FANG
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 37, MIST
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, AMNESIA
	db 0
	
MamoswineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ANCIENTPOWER
	db 1, HORN_ATTACK
	db 1, HARDEN
	db 11, POWDER_SNOW
	db 14, MUD_SLAP
	db 18, MUD_SHOT
	db 21, ICY_WIND
	db 24, ICE_FANG
	db 28, TAKE_DOWN
	db 33, DOUBLE_HIT
	db 37, MIST
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, SCARY_FACE
	db 0
	
GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 1, POUND
	db 1, POISON_GAS
	db 1, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, SLUDGE
	db 18, SHADOW_SNEAK
	db 21, MUD_SHOT
	db 26, SLUDGE_BOMB
	db 29, MINIMIZE
	db 32, SCREECH
	db 37, INFESTATION
	db 40, ACID_ARMOR
	db 43, GUNK_SHOT
	db 46, MOONBLAST ; Apparently Grimer/Muk came to be due to "X-rays from the moon," so I feel this fits.~$~
	db 0
	
MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, POISON_GAS
	db 1, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, SLUDGE
	db 18, SHADOW_SNEAK
	db 21, MUD_SHOT
	db 26, SLUDGE_BOMB
	db 29, MINIMIZE
	db 32, SCREECH
	db 37, INFESTATION
	db 43, ACID_ARMOR
	db 49, GUNK_SHOT
	db 53, MOONBLAST ; Apparently Grimer/Muk came to be due to "X-rays from the moon," so I feel this fits.~$~
	db 0
	
ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, CLOYSTER
	db EVOLVE_ITEM, SLOWPOKETAIL, 1, TURBAN ; ~$~TODO: Make this work by automatically trying to evolve (consuming the Slowpoketail if successful) if one is in the player's bag.~$~
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN ; Withdraw
	db 8, SUPERSONIC
	db 13, ICICLE_SPEAR
	db 16, PROTECT
	db 20, LEER
	db 25, CLAMP
	db 28, ICE_SHARD
	db 32, RAPID_SPIN
	db 37, AURORA_BEAM
	db 40, WHIRLPOOL
	db 44, LIQUIDATION
	db 49, IRON_DEFENSE
	db 52, ICE_BEAM
	db 56, HYDRO_PUMP
	db 0
	
CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, AURORA_BEAM
	db 1, HARDEN ; Withdraw
	db 1, SUPERSONIC
	db 1, PROTECT
	db 13, ICICLE_SPEAR
	db 28, TWINEEDLE
	db 50, ICICLE_CRASH
	db 0
	
TurbanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, LEER
	db 1, HARDEN ; Withdraw
	db 1, CLAMP
	db 1, PROTECT
	db 13, BITE
	db 28, VICEGRIP
	db 50, CRUNCH
	db 0
	
GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 1, LICK
	db 1, HYPNOSIS
	db 12, DISABLE
	db 15, SMOG
	db 19, CURSE
	db 22, NIGHT_SHADE
	db 26, CONFUSE_RAY
	db 29, SUCKER_PUNCH
	db 33, HAZE
	db 36, SHADOW_BALL
	db 40, DREAM_EATER
	db 43, DARK_PULSE
	db 47, HEX
	db 0
	
HaunterEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GENGAR
	db EVOLVE_ITEM, LINK_CORD, 1, GENGAR
GengarEvosMoves:
	db 0
; Learnset
	db 1, LICK
	db 1, HYPNOSIS
	db 12, DISABLE
	db 15, SMOG
	db 19, CURSE
	db 22, NIGHT_SHADE
	db 25, SHADOW_CLAW
	db 28, CONFUSE_RAY
	db 33, SUCKER_PUNCH
	db 39, HAZE
	db 44, SHADOW_BALL
	db 50, DREAM_EATER
	db 55, DARK_PULSE
	db 61, HEX
	db 0
	
DuskullEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, DUSCLOPS
	db 0
; Learnset
	db 1, NIGHT_SHADE
	db 1, LEER
	db 9, DISABLE
	db 14, ASTONISH
	db 17, CONFUSE_RAY
	db 22, SHADOW_SNEAK
	db 25, FEINT_ATTACK
	db 30, CURSE
	db 33, WILL_O_WISP
	db 38, HAZE
	db 41, HEX
	db 46, DARK_PULSE
	db 0
	
DusclopsEvosMoves:
; Evolutions
	db EVOLVE_ITEM, DUSK_STONE, 1, DUSKNOIR ; Reaper Cloth
DusknoirEvosMoves:
	db 0
; Learnset
	db 1, BIND
	db 1, NIGHT_SHADE
	db 1, LEER
	db 9, DISABLE
	db 14, ASTONISH
	db 17, CONFUSE_RAY
	db 22, SHADOW_SNEAK
	db 25, FEINT_ATTACK
	db 30, CURSE
	db 33, WILL_O_WISP
	db 37, SHADOW_CLAW
	db 43, HAZE
	db 51, HEX
	db 61, DARK_PULSE
	db 0
	
LitwickEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 41, LAMPENT
	db 0
; Learnset
	db 1, ASTONISH
	db 1, EMBER
	db 10, MINIMIZE
	db 13, SMOG
	db 16, FIRE_SPIN
	db 20, CONFUSE_RAY
	db 24, NIGHT_SHADE
	db 28, WILL_O_WISP
	db 33, FLAME_CHARGE
	db 38, ACID_ARMOR
	db 43, HEX
	db 49, INFERNO
	db 55, CURSE
	db 61, SHADOW_BALL
	db 0
	
LampentEvosMoves:
; Evolutions
	db EVOLVE_ITEM, DUSK_STONE, 1, CHANDELURE
	db 0
; Learnset
	db 1, ASTONISH
	db 1, EMBER
	db 10, MINIMIZE
	db 13, SMOG
	db 16, FIRE_SPIN
	db 20, CONFUSE_RAY
	db 24, NIGHT_SHADE
	db 28, WILL_O_WISP
	db 33, FLAME_CHARGE
	db 38, ACID_ARMOR
	db 45, HEX
	db 53, INFERNO
	db 61, CURSE
	db 69, SHADOW_BALL
	db 0
	
ChandelureEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SMOG
	db 1, FIRE_SPIN
	db 1, CONFUSE_RAY
	db 1, HEX
	db 0
	
OnixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, METAL_COAT, 1, STEELIX
	db 0
; Learnset
	db 1, CURSE
	db 1, TACKLE
	db 1, HARDEN
	db 10, BIND
	db 13, ROCK_THROW
	db 16, ROCK_TOMB
	db 19, SHARPEN
	db 22, DRAGONBREATH
	db 25, ROCK_SLIDE
	db 28, BREAK_SWIPE
	db 31, SCREECH
	db 34, DIG
	db 37, SAND_TOMB
	db 40, IRON_TAIL
	db 43, STONE_EDGE
	db 46, DOUBLE_EDGE
	db 0
	
SteelixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, TACKLE
	db 1, HARDEN
	db 10, BIND
	db 13, ROCK_THROW
	db 16, ROCK_TOMB
	db 19, SHARPEN
	db 22, DRAGONBREATH
	db 25, ROCK_SLIDE
	db 28, BREAK_SWIPE
	db 31, SCREECH
	db 34, DIG
	db 37, CRUNCH
	db 40, IRON_TAIL
	db 43, STONE_EDGE
	db 46, DOUBLE_EDGE
	db 0
	
GligarEvosMoves:
; Evolutions
	db EVOLVE_MOVE, RAZOR_WIND, GLISCOR ; replaces Razor Fang
	db 0
; Learnset
	db 1, POISON_STING
	db 1, SAND_ATTACK
	db 10, HARDEN
	db 13, METAL_CLAW
	db 16, QUICK_ATTACK
	db 19, FURY_ATTACK
	db 22, FEINT_ATTACK
	db 27, SCREECH
	db 30, SLASH
	db 35, SWORDS_DANCE
	db 40, CRABHAMMER
	db 45, X_SCISSOR
	db 50, GUILLOTINE
	db 0
	
GliscorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, POISON_STING
	db 1, SAND_ATTACK
	db 10, HARDEN
	db 13, METAL_CLAW
	db 16, QUICK_ATTACK
	db 19, FURY_ATTACK
	db 22, FEINT_ATTACK
	db 27, SCREECH
	db 30, NIGHT_SLASH
	db 35, SWORDS_DANCE
	db 40, CRABHAMMER
	db 45, X_SCISSOR
	db 50, GUILLOTINE
	db 0
	
DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
HypnoEvosMoves:
	db 0
; Learnset
	db 1, POUND
	db 1, HYPNOSIS
	db 9, DISABLE
	db 13, CONFUSION
	db 17, HEADBUTT
	db 21, POISON_GAS
	db 25, MEDITATE
	db 29, PSYBEAM
	db 33, TRI_ATTACK
	db 37, ZEN_HEADBUTT
	db 41, PSYCHIC_M
	db 45, NASTY_PLOT
	db 49, DREAM_EATER
	db 0
	
KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 1, WATER_GUN
	db 5, LEER
	db 9, VICEGRIP
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 19, MUD_SHOT
	db 21, METAL_CLAW
	db 25, STOMP
	db 29, PROTECT
	db 31, ANCIENTPOWER
	db 35, LIQUIDATION
	db 39, GUILLOTINE
	db 41, CRABHAMMER
	db 0
	
KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, WATER_GUN
	db 5, LEER
	db 9, VICEGRIP
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 19, MUD_SHOT
	db 21, METAL_CLAW
	db 25, STOMP
	db 32, PROTECT
	db 37, ANCIENTPOWER
	db 44, LIQUIDATION
	db 51, GUILLOTINE
	db 56, CRABHAMMER
	db 0
	
VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 1, TACKLE
	db 8, SONICBOOM
	db 12, THUNDERSHOCK
	db 15, SWIFT
	db 19, SCREECH
	db 22, SPARK
	db 26, LIGHT_SCREEN
	db 29, SHOCK_WAVE
	db 33, SELFDESTRUCT
	db 36, METAL_SOUND
	db 40, THUNDER
	db 43, EXPLOSION
	db 47, MIRROR_COAT
	db 0
	
ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 8, SONICBOOM
	db 12, THUNDERSHOCK
	db 15, SWIFT
	db 19, SCREECH
	db 22, SPARK
	db 26, LIGHT_SCREEN
	db 29, SHOCK_WAVE
	db 35, SELFDESTRUCT
	db 40, METAL_SOUND
	db 46, THUNDER
	db 51, EXPLOSION
	db 57, MIRROR_COAT
	db 0
	
ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 1, BULLET_SEED
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
	db 17, CONFUSION
	db 19, MEGA_DRAIN
	db 21, STUN_SPORE
	db 23, POISONPOWDER
	db 27, SLEEP_POWDER
	db 33, PSYBEAM
	db 37, RECOVER ; Synthesis/Moonlight
	db 43, SOLARBEAM
	db 0

ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BULLET_SEED
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 17, STOMP
	db 27, EGG_BOMB
	db 37, POWER_WHIP ; Wood Hammer
	db 0
	
CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 1, MUD_SLAP
	db 1, GROWL
	db 7, TAIL_WHIP
	db 11, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 23, BONEMERANG
	db 27, ROCK_SLIDE
	db 31, FAKE_TEARS
	db 33, THRASH
	db 37, IRON_HEAD
	db 41, EARTHQUAKE
	db 43, DOUBLE_EDGE
	db 0
	
MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, MUD_SLAP
	db 1, GROWL
	db 7, TAIL_WHIP
	db 11, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 23, BONEMERANG
	db 27, ROCK_SLIDE
	db 33, SCARY_FACE
	db 37, THRASH
	db 43, IRON_HEAD
	db 49, EARTHQUAKE
	db 53, DOUBLE_EDGE
	db 0
	
MawileEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, POISON_FANG
	db 1, ASTONISH
	db 1, GROWL
	db 1, BITE
	db 11, FAKE_TEARS
	db 16, DRAIN_KISS
	db 21, VICEGRIP
	db 26, FEINT_ATTACK
	db 31, IRON_DEFENSE
	db 36, CRUNCH
	db 41, PLAY_ROUGH
	db 46, SUCKER_PUNCH
	db 51, IRON_HEAD
	db 0
	
TrapinchEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, VIBRAVA
	db 0
; Learnset
	db 1, BITE
	db 1, SAND_ATTACK
	db 10, FEINT_ATTACK
	db 13, MUD_SLAP
	db 17, SAND_TOMB
	db 21, BULLDOZE
	db 25, ROCK_SLIDE
	db 29, DIG
	db 34, CRUNCH
	db 39, EARTH_POWER
	db 44, EARTHQUAKE
	db 49, HYPER_BEAM
	db 55, FISSURE
	db 0
	
VibravaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, FLYGON
	db 0
; Learnset
	db 1, SONICBOOM
	db 1, SAND_ATTACK
	db 10, FEINT_ATTACK
	db 13, MUD_SLAP
	db 17, TWISTER
	db 21, BULLDOZE
	db 25, ROCK_SLIDE
	db 29, SUPERSONIC
	db 34, SCREECH
	db 35, DRAGONBREATH
	db 39, EARTH_POWER
	db 44, EARTHQUAKE
	db 49, HYPER_BEAM
	db 55, BOOMBURST
	db 0
	
FlygonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SONICBOOM
	db 1, SAND_ATTACK
	db 10, FEINT_ATTACK
	db 13, MUD_SLAP
	db 17, BREAK_SWIPE
	db 21, BULLDOZE
	db 25, ROCK_SLIDE
	db 29, SUPERSONIC
	db 34, SCREECH
	db 35, DRAGONBREATH
	db 39, EARTH_POWER
	db 44, EARTHQUAKE
	db 45, DRAGON_CLAW
	db 49, HYPER_BEAM
	db 55, BOOMBURST
	db 0
	
NoibatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 48, NOIVERN
	db 0
; Learnset
	db 1, TACKLE
	db 1, SUPERSONIC
	db 1, SCREECH
	db 1, MEGA_DRAIN
	db 11, GUST
	db 13, BITE
	db 16, WING_ATTACK
	db 18, AGILITY
	db 23, TWISTER
	db 27, LEECH_LIFE
	db 31, SONICBOOM
	db 35, RAZOR_WIND
	db 40, HYPER_VOICE
	db 43, SUPER_FANG
	db 48, AIR_SLASH
	db 58, HURRICANE
	db 0
	
NoivernEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, SUPERSONIC
	db 1, SCREECH
	db 1, MEGA_DRAIN
	db 11, GUST
	db 13, BITE
	db 16, WING_ATTACK
	db 18, AGILITY
	db 23, TWISTER
	db 27, LEECH_LIFE
	db 31, SONICBOOM
	db 35, RECOVER ; Moonlight
	db 40, HYPER_VOICE
	db 43, SUPER_FANG
	db 53, AIR_SLASH
	db 62, HURRICANE
	db 70, DRAGON_PULSE
	db 75, BOOMBURST
	db 0
	
TyrogueEvosMoves:
; Evolutions
	db EVOLVE_TYROGUE, 20, DEF_HIGHER, HITMONCHAN
	db EVOLVE_TYROGUE, 20, ATK_HIGHER, HITMONLEE
	db EVOLVE_TYROGUE, 20, BOTH_EQUAL, HITMONTOP
	db 0
; Learnset
	db 1, TACKLE
	db 1, FOCUS_ENERGY
	db 20, HEADBUTT
	db 0
	
HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, DOUBLE_KICK
	db 9, MEDITATE
	db 13, ROLLING_KICK
	db 17, STOMP
	db 21, FOCUS_ENERGY
	db 25, LOW_SWEEP
	db 29, BLAZE_KICK
	db 33, PROTECT
	db 37, COUNTER
	db 41, HI_JUMP_KICK
	db 45, MEGA_KICK
	db 49, SUBMISSION
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BULLET_PUNCH
	db 11, AGILITY
	db 16, PROTECT
	db 21, MACH_PUNCH
	db 26, FIRE_PUNCH
	db 26, ICE_PUNCH
	db 26, THUNDERPUNCH
	db 31, DRAIN_PUNCH
	db 36, COUNTER
	db 41, MEGA_PUNCH
	db 46, DYNAMICPUNCH
	db 50, SUBMISSION
	db 0
	
HitmontopEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, DOUBLE_KICK
	db 10, FOCUS_ENERGY
	db 15, QUICK_ATTACK
	db 19, ROLLING_KICK
	db 24, TWISTER
	db 28, DIG
	db 28, RAPID_SPIN
	db 33, COUNTER
	db 37, AGILITY
	db 42, PROTECT
	db 46, DIZZY_PUNCH
	db 50, SUBMISSION
	db 0
	
LickitungEvosMoves:
; Evolutions
	db EVOLVE_MOVE, POWER_WHIP, LICKILICKY ; ~$~Borrowing the evo method from Red/Blue DX, since no Rollout.~$~
LickilickyEvosMoves:
	db 0
; Learnset
	db 1, LICK
	db 1, SUPERSONIC
	db 9, HARDEN
	db 13, ACID
	db 17, BIND ; Wrap
	db 21, STOMP
	db 25, DISABLE
	db 29, BULLDOZE
	db 33, POWER_WHIP
	db 37, BRUTAL_SWING
	db 41, ZEN_HEADBUTT
	db 45, SCREECH
	db 49, BODY_SLAM
	db 53, THRASH
	db 0
	
KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 1, POISON_GAS
	db 1, TACKLE
	db 12, SMOG
	db 15, SMOKESCREEN
	db 18, SLUDGE
	db 23, SELFDESTRUCT
	db 26, HAZE
	db 29, PSYBEAM
	db 34, SLUDGE_BOMB
	db 37, EXPLOSION
	db 40, TOXIC
	db 45, GUNK_SHOT
	db 0

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POISON_GAS
	db 1, TACKLE
	db 12, SMOG
	db 15, SMOKESCREEN
	db 18, SLUDGE
	db 23, SELFDESTRUCT
	db 26, HAZE
	db 29, PSYBEAM
	db 34, SLUDGE_BOMB
	db 35, DOUBLE_HIT
	db 40, EXPLOSION
	db 46, TOXIC
	db 54, GUNK_SHOT
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 8, STOMP
	db 12, FURY_ATTACK
	db 19, SCARY_FACE
	db 23, ROCK_THROW
	db 30, BULLDOZE
	db 34, TAKE_DOWN
	db 41, SMART_STRIKE
	db 45, STONE_EDGE
	db 52, EARTHQUAKE
	db 56, MEGAHORN
	db 0

RhydonEvosMoves:
; Evolutions
	db EVOLVE_MOVE, PROTECT, RHYPERIOR ; Protector
	db 0
; Learnset
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 8, STOMP
	db 12, FURY_ATTACK
	db 19, SCARY_FACE
	db 23, ROCK_THROW
	db 30, BULLDOZE
	db 34, TAKE_DOWN
	db 41, SMART_STRIKE
	db 42, DYNAMICPUNCH ; Hammer Arm
	db 47, STONE_EDGE
	db 56, EARTHQUAKE
	db 62, MEGAHORN
	db 0
	
RhyperiorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ROCK_WRECKER
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 8, STOMP
	db 12, FURY_ATTACK
	db 19, SCARY_FACE
	db 23, ROCK_THROW
	db 30, BULLDOZE
	db 34, TAKE_DOWN
	db 41, SMART_STRIKE
	db 42, DYNAMICPUNCH ; Hammer Arm
	db 47, STONE_EDGE
	db 56, EARTHQUAKE
	db 62, MEGAHORN
	db 0
	
HappinyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, SHINY_STONE, 1, CHANSEY ; Oval Stone
	db 0
; Learnset
	db 1, POUND
	db 1, CHARM
	db 5, MIRROR_MOVE ; Copycat
	db 9, HEAL_BELL
	db 12, SWEET_KISS
	db 0
	
ChanseyEvosMoves:
; Evolutions
	db EVOLVE_MAP, DAYCARE, BLISSEY ; Friendship
BlisseyEvosMoves:
	db 0
; Learnset
	db 1, POUND
	db 1, GROWL
	db 1, HARDEN ; Defense Curl
	db 5, TAIL_WHIP
	db 9, HEAL_BELL
	db 12, DOUBLE_HIT ; Doubleslap
	db 16, SOFTBOILED
	db 20, DISARM_VOICE
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 34, EGG_BOMB
	db 38, HYPER_VOICE
	db 42, LIGHT_SCREEN
	db 46, DOUBLE_EDGE
	db 0

TangelaEvosMoves:
; Evolutions
	db EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
TangrowthEvosMoves:
	db 0
; Learnset
	db 1, VINE_WHIP
	db 1, LEECH_SEED
	db 1, SLEEP_POWDER
	db 10, MEGA_DRAIN
	db 14, POISONPOWDER
	db 17, BIND
	db 20, GROWTH
	db 23, CONFUSION
	db 27, GIGA_DRAIN
	db 30, STUN_SPORE
	db 33, ANCIENTPOWER
	db 36, BRUTAL_SWING
	db 38, INFESTATION
	db 41, POWER_WHIP
	db 46, RECOVER ; Synthesis
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, LEER
	db 10, BITE
	db 13, TAIL_WHIP
	db 19, DOUBLE_HIT
	db 22, FOCUS_ENERGY
	db 25, MEGA_PUNCH
	db 31, STOMP
	db 34, BREAK_SWIPE
	db 37, CRUNCH
	db 43, DIZZY_PUNCH
	db 46, OUTRAGE
	db 49, SUCKER_PUNCH
	db 0
	
HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 1, WATER_GUN
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, TWISTER
	db 17, WHIRLPOOL
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, DRAGONBREATH
	db 36, AGILITY
	db 41, DRAGON_PULSE
	db 46, DRAGON_DANCE
	db 52, HYDRO_PUMP
	db 0

SeadraEvosMoves:
; Evolutions
	db EVOLVE_MOVE, DRAGON_PULSE, KINGDRA ; DRAGON_SCALE
KingdraEvosMoves:
	db 0
; Learnset
	db 1, WATER_GUN
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, TWISTER
	db 17, WHIRLPOOL
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, DRAGONBREATH
	db 38, AGILITY
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0

GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
; Learnset
	db 1, PECK
	db 1, TAIL_WHIP
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
	db 17, WATER_GUN
	db 21, FURY_ATTACK
	db 27, WATER_PULSE
	db 31, WATERFALL
	db 37, SMART_STRIKE
	db 41, AGILITY
	db 47, MEGAHORN
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, TAIL_WHIP
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
	db 17, WATER_GUN
	db 21, FURY_ATTACK
	db 27, WATER_PULSE
	db 31, WATERFALL
	db 40, SMART_STRIKE
	db 47, AGILITY
	db 56, MEGAHORN
	db 0
	
StaryuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, STARMIE
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN
	db 6, WATER_GUN
	db 10, RAPID_SPIN
	db 15, RECOVER
	db 18, SWIFT
	db 22, BUBBLEBEAM
	db 25, MINIMIZE
	db 30, CONFUSE_RAY
	db 33, WHIRLPOOL
	db 36, LIGHT_SCREEN
	db 40, POWER_GEM
	db 43, COSMIC_POWER
	db 48, HYDRO_PUMP
	db 0
	
StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SWIFT
	db 1, WATER_GUN
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 33, CONFUSE_RAY
	db 0
	
MimeJrEvosMoves:
; Evolutions
	db EVOLVE_MOVE, MIMIC, MR_MIME
MrMimeEvosMoves:
	db 0
; Learnset
	db 1, POUND
	db 1, MIRROR_MOVE ; Copycat
	db 1, BARRIER
	db 4, CONFUSION
	db 8, MEDITATE
	db 15, DOUBLE_HIT ; Doubleslap
	db 18, MIMIC
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 32, HYPNOSIS
	db 36, MAGICAL_LEAF
	db 39, NASTY_PLOT
	db 43, PSYCHIC_M
	db 46, DAZZLINGLEAM
	db 50, SAFEGUARD
	db 0
	
ScytherEvosMoves:
; Evolutions
	db EVOLVE_ITEM, METAL_COAT, 1, SCIZOR
	db 0
; Learnset
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, FOCUS_ENERGY
	db 13, FEINT_ATTACK
	db 17, WING_ATTACK
	db 21, AGILITY
	db 25, AIR_SLASH
	db 29, SLASH
	db 33, DOUBLE_HIT
	db 37, DOUBLE_TEAM
	db 41, X_SCISSOR
	db 45, NIGHT_SLASH
	db 49, RAZOR_WIND
	db 57, SWORDS_DANCE
	db 0
	
ScizorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BULLET_PUNCH
	db 1, LEER
	db 9, FOCUS_ENERGY
	db 13, FEINT_ATTACK
	db 17, METAL_CLAW
	db 21, AGILITY
	db 25, AIR_SLASH
	db 29, SLASH
	db 33, DOUBLE_HIT
	db 37, IRON_DEFENSE
	db 41, X_SCISSOR
	db 45, NIGHT_SLASH
	db 49, IRON_HEAD
	db 57, SWORDS_DANCE
	db 0
	
SmoochumEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, JYNX
	db 0
; Learnset
	db 1, POUND
	db 1, LICK
	db 8, SWEET_KISS
	db 11, POWDER_SNOW
	db 15, CONFUSION
	db 18, SING
	db 21, DRAIN_KISS
	db 25, MEDITATE
	db 28, FAKE_TEARS
	db 31, ICE_PUNCH
	db 35, LOVELY_KISS
	db 38, PSYCHIC_M
	db 41, NASTY_PLOT
	db 45, BLIZZARD
	db 0
	
JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, LICK
	db 8, LOVELY_KISS
	db 11, POWDER_SNOW
	db 15, DOUBLE_HIT ; Doubleslap
	db 18, SING
	db 21, DRAIN_KISS
	db 25, MEDITATE
	db 28, FAKE_TEARS
	db 33, ICE_PUNCH
	db 39, BODY_SLAM
	db 44, PSYCHIC_M
	db 49, THRASH
	db 55, BLIZZARD
	db 0
	
ElekidEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0
; Learnset
	db 1, QUICK_ATTACK
	db 1, LEER
	db 8, THUNDERSHOCK
	db 12, KARATE_CHOP
	db 15, SWIFT
	db 19, SHOCK_WAVE
	db 22, THUNDER_WAVE
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 33, THUNDERBOLT
	db 36, SCREECH
	db 40, THUNDER
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db EVOLVE_MOVE, WILD_CHARGE, ELECTIVIRE ; Electirizer
ElectivireEvosMoves:
	db 0
; Learnset
	db 1, QUICK_ATTACK
	db 1, LEER
	db 8, THUNDERSHOCK
	db 12, LOW_SWEEP
	db 15, SWIFT
	db 19, SHOCK_WAVE
	db 22, THUNDER_WAVE
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, THUNDERBOLT
	db 42, SCREECH
	db 49, CROSS_CHOP
	db 55, THUNDER
	db 0
	
MagbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0
; Learnset
	db 1, SMOG
	db 1, LEER
	db 8, EMBER
	db 12, SMOKESCREEN
	db 15, KARATE_CHOP
	db 19, FIRE_SPIN
	db 22, WILL_O_WISP
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 33, FLAMETHROWER
	db 36, SCREECH
	db 40, FIRE_BLAST
	db 0
	
MagmarEvosMoves:
; Evolutions
	db EVOLVE_MOVE, FLARE_BLITZ, MAGMORTAR ; Magmarizer
MagmortarEvosMoves:
	db 0
; Learnset
	db 1, SMOG
	db 1, LEER
	db 8, EMBER
	db 12, SMOKESCREEN
	db 15, FEINT_ATTACK
	db 19, FIRE_SPIN
	db 22, WILL_O_WISP
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, FLAMETHROWER
	db 42, SCREECH
	db 49, CROSS_CHOP
	db 55, FIRE_BLAST
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, VICEGRIP
	db 1, FOCUS_ENERGY
	db 8, BIND
	db 12, HARDEN
	db 16, SEISMIC_TOSS
	db 19, ROCK_THROW
	db 22, SLASH
	db 26, FEINT_ATTACK
	db 29, DOUBLE_HIT
	db 33, X_SCISSOR
	db 36, THRASH
	db 40, SWORDS_DANCE
	db 43, SUBMISSION
	db 47, GUILLOTINE
	db 0
	
HeracrossEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, LEER
	db 7, HORN_ATTACK
	db 10, MEDITATE
	db 16, AERIAL_ACE
	db 19, FURY_ATTACK
	db 22, NIGHT_SLASH
	db 25, KARATE_CHOP
	db 28, TAKE_DOWN
	db 31, PIN_MISSILE
	db 34, COUNTER
	db 37, DYNAMICPUNCH
	db 43, SUBMISSION
	db 46, MEGAHORN
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, BULLDOZE
	db 11, SCARY_FACE
	db 15, HORN_ATTACK
	db 19, REST
	db 24, STOMP
	db 29, SMART_STRIKE
	db 35, TAKE_DOWN
	db 41, ZEN_HEADBUTT
	db 48, OUTRAGE
	db 50, THRASH
	db 63, GIGA_IMPACT
	db 0
	
MiltankEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 8, HARDEN ; Defense Curl
	db 11, STOMP
	db 15, BULLDOZE
	db 19, SOFTBOILED ; Milk Drink
	db 24, BODY_SLAM
	db 29, ZEN_HEADBUTT
	db 35, CHARM
	db 41, BODY_SLAM
	db 48, HEAL_BELL
	db 50, DYNAMICPUNCH
	db 63, PLAY_ROUGH
	db 0
	
MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 1, SPLASH
	db 15, TACKLE
	db 30, HYDRO_PUMP
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THRASH
	db 1, TACKLE
	db 20, BITE
	db 24, TWISTER
	db 27, LEER
	db 30, DRAGONBREATH
	db 33, ICE_FANG
	db 36, WHIRLPOOL
	db 39, CRUNCH
	db 42, HYDRO_PUMP
	db 45, DRAGON_DANCE
	db 48, HURRICANE
	db 51, OUTRAGE
	db 54, HYPER_BEAM
	db 0
	
LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 7, MIST
	db 10, ICE_SHARD
	db 14, WATER_PULSE
	db 18, BODY_SLAM
	db 22, CONFUSE_RAY
	db 27, DRAGON_DANCE
	db 32, ICE_BEAM
	db 37, WHIRLPOOL
	db 43, SAFEGUARD
	db 47, HYDRO_PUMP
	db 50, SHEER_COLD
	db 0
	
DittoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TRANSFORM
	db 0
	
EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db EVOLVE_ITEM, SUN_STONE, 1, ESPEON
	db EVOLVE_ITEM, MOON_STONE, 1, UMBREON
	db EVOLVE_MAP, HIDDEN_FOREST, LEAFEON ; Where the Moss Rock is placed.
	db EVOLVE_MAP, SEAFOAM_ISLANDS_1F, GLACEON ; Where the Ice Rock is placed.
	db EVOLVE_MOVE, CHARM, SYLVEON
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, CHARM
	db 20, BITE
	db 25, SWIFT
	db 29, FOCUS_ENERGY
	db 33, TAKE_DOWN
	db 37, HYPER_VOICE
	db 41, GROWTH
	db 45, DOUBLE_EDGE
	db 0
	
VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, WATER_PULSE
	db 20, AURORA_BEAM
	db 25, MIST
	db 29, ACID_ARMOR
	db 33, HAZE
	db 37, WHIRLPOOL
	db 41, LIQUIDATION
	db 45, HYDRO_PUMP
	db 0
	
JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, THUNDERSHOCK
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, DOUBLE_KICK
	db 20, THUNDER_FANG
	db 25, PIN_MISSILE
	db 29, AGILITY
	db 33, THUNDER_WAVE
	db 37, THUNDERBOLT
	db 41, WILD_CHARGE
	db 45, THUNDER
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, EMBER
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, FIRE_FANG
	db 25, FIRE_SPIN
	db 29, SCARY_FACE
	db 33, SMOG
	db 37, FLAMETHROWER
	db 41, INFERNO
	db 45, FLARE_BLITZ
	db 0
	
EspeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, CONFUSION
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, COSMIC_POWER
	db 29, LIGHT_SCREEN
	db 33, RECOVER ; Morning Sun
	db 37, PSYCHIC_M
	db 41, ZEN_HEADBUTT
	db 45, SOLARBEAM
	db 0
	
UmbreonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, SNARL
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, FEINT_ATTACK
	db 25, CONFUSE_RAY
	db 29, SCREECH
	db 33, RECOVER ; Moonlight
	db 37, DARK_PULSE
	db 41, SUCKER_PUNCH
	db 45, MOONBLAST
	db 0
	
LeafeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, RAZOR_LEAF
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, LEECH_SEED
	db 20, MAGICAL_LEAF
	db 25, GIGA_DRAIN
	db 29, SWORDS_DANCE
	db 33, RECOVER ; Synthesis
	db 37, ENERGY_BALL
	db 41, PETAL_DANCE
	db 45, SOLARBEAM
	db 0
	
GlaceonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, POWDER_SNOW
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, ICE_FANG
	db 25, ICE_SHARD
	db 29, BARRIER
	db 33, MIRROR_COAT
	db 37, ICE_BEAM
	db 41, ICICLE_CRASH
	db 45, BLIZZARD
	db 0
	
SylveonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, DISARM_VOICE
	db 9, SAND_ATTACK
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, DRAIN_KISS
	db 25, CHARM
	db 29, SAFEGUARD
	db 33, LIGHT_SCREEN
	db 37, DAZZLINGLEAM
	db 41, PLAY_ROUGH
	db 45, MOONBLAST
	db 0
	
PorygonEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, PORYGON2 ; Up-Grade
	db EVOLVE_ITEM, LINK_CORD, 1, PORYGON2
	db 0
; Learnset
	db 1, TACKLE
	db 1, SHARPEN
	db 1, CONVERSION
	db 7, THUNDERSHOCK
	db 12, PSYBEAM
	db 18, AGILITY
	db 23, RECOVER
	db 29, SIGNAL_BEAM
	db 34, ELECTROWEB
	db 40, TELEPORT
	db 45, BARRIER
	db 50, TRI_ATTACK
	db 56, ZAP_CANNON
	db 0
	
Porygon2EvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, PORYGONZ ; Dubious Disc
	db EVOLVE_ITEM, LINK_CORD, 1, PORYGONZ
	db 0
; Learnset
	db 1, TACKLE
	db 1, SHARPEN
	db 1, CONVERSION
	db 7, THUNDERSHOCK
	db 12, PSYBEAM
	db 18, AGILITY
	db 23, RECOVER
	db 29, SIGNAL_BEAM
	db 34, ELECTROWEB
	db 40, TELEPORT
	db 45, BARRIER
	db 50, TRI_ATTACK
	db 56, ZAP_CANNON
	db 62, HYPER_BEAM
	db 0
	
PorygonZEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, SHARPEN
	db 1, CONVERSION
	db 7, THUNDERSHOCK
	db 12, PSYBEAM
	db 18, AGILITY
	db 23, RECOVER
	db 29, SIGNAL_BEAM
	db 34, ELECTROWEB
	db 40, TELEPORT
	db 45, NASTY_PLOT
	db 50, TRI_ATTACK
	db 56, ZAP_CANNON
	db 62, HYPER_BEAM
	db 0
	
OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 1, BIND
	db 1, HARDEN ; Withdraw
	db 1, BITE
	db 10, WATER_GUN
	db 15, HORN_ATTACK
	db 20, LEER
	db 25, MUD_SHOT
	db 30, ANCIENTPOWER
	db 35, WHIRLPOOL
	db 41, PROTECT
	db 45, HAZE
	db 50, IRON_DEFENSE
	db 55, ROCK_SLIDE
	db 60, HYDRO_PUMP
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ICICLE_SPEAR
	db 1, BIND
	db 1, HARDEN ; Withdraw
	db 1, BITE
	db 10, WATER_GUN
	db 15, HORN_ATTACK
	db 20, LEER
	db 25, MUD_SHOT
	db 30, ANCIENTPOWER
	db 35, WHIRLPOOL
	db 40, CRUNCH
	db 43, PROTECT
	db 49, HAZE
	db 56, IRON_DEFENSE
	db 63, ROCK_SLIDE
	db 70, HYDRO_PUMP
	db 0
	
KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 1, SCRATCH
	db 1, HARDEN
	db 1, MEGA_DRAIN ; Absorb
	db 10, SAND_ATTACK
	db 15, RAPID_SPIN
	db 20, LEER
	db 25, MUD_SHOT
	db 30, ANCIENTPOWER
	db 35, WHIRLPOOL
	db 41, PROTECT
	db 45, LEECH_LIFE
	db 50, LIQUIDATION
	db 55, METAL_SOUND
	db 60, STONE_EDGE
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SLASH
	db 1, SCRATCH
	db 1, HARDEN
	db 1, MEGA_DRAIN ; Absorb
	db 10, SAND_ATTACK
	db 15, RAPID_SPIN
	db 20, LEER
	db 25, MUD_SHOT
	db 30, ANCIENTPOWER
	db 35, WHIRLPOOL
	db 40, NIGHT_SLASH
	db 43, PROTECT
	db 49, LEECH_LIFE
	db 56, LIQUIDATION
	db 63, METAL_SOUND
	db 70, STONE_EDGE
	db 0
	
AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, BITE
	db 1, WING_ATTACK
	db 1, SUPERSONIC
	db 1, SCARY_FACE
	db 15, AGILITY
	db 20, ANCIENTPOWER
	db 25, TAKE_DOWN
	db 33, CRUNCH
	db 41, IRON_HEAD
	db 49, SKY_ATTACK
	db 57, HYPER_BEAM
	db 65, ROCK_SLIDE
	db 73, GIGA_IMPACT
	db 0
	
MunchlaxEvosMoves:
; Evolutions
	db EVOLVE_MAP, DAYCARE, SNORLAX ; Friendship
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN ; Defense Curl
	db 9, MUD_SLAP
	db 12, LICK
	db 17, SCREECH
	db 20, HEADBUTT
	db 25, METRONOME
	db 28, AMNESIA
	db 33, BODY_SLAM
	db 36, CHARM
	db 41, CRUNCH
	db 44, DOUBLE_EDGE
	db 49, GUNK_SHOT
	db 0
	
SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN ; Defense Curl
	db 9, MUD_SLAP
	db 12, LICK
	db 17, BULLDOZE
	db 20, HEADBUTT
	db 25, REST
	db 28, AMNESIA
	db 33, BODY_SLAM
	db 36, EARTHQUAKE
	db 41, CRUNCH
	db 44, DOUBLE_EDGE
	db 49, GIGA_IMPACT
	db 0
	
BonslyEvosMoves:
; Evolutions
	db EVOLVE_MOVE, MIMIC, SUDOWOODO
	db 0
; Learnset
	db 1, MIRROR_MOVE ; Copycat
	db 1, FAKE_TEARS
	db 6, MUD_SLAP
	db 9, LOW_SWEEP
	db 14, ROCK_THROW
	db 17, MIMIC
	db 22, COUNTER
	db 25, FEINT_ATTACK
	db 30, ROCK_TOMB
	db 33, HEADBUTT
	db 38, ROCK_SLIDE
	db 41, SUCKER_PUNCH
	db 46, DOUBLE_EDGE
	db 0
	
SudowoodoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, MIRROR_MOVE ; Copycat
	db 1, POWER_WHIP ; Wood Hammer
	db 6, MUD_SLAP
	db 9, LOW_SWEEP
	db 14, ROCK_THROW
	db 17, MIMIC
	db 22, COUNTER
	db 25, FEINT_ATTACK
	db 30, ROCK_TOMB
	db 33, HEADBUTT
	db 38, ROCK_SLIDE
	db 41, SUCKER_PUNCH
	db 46, DOUBLE_EDGE
	db 0
	
SpiritombEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, CURSE
	db 1, CONFUSE_RAY
	db 1, SHADOW_SNEAK
	db 1, SNARL
	db 7, FEINT_ATTACK
	db 13, HYPNOSIS
	db 19, DREAM_EATER
	db 25, OMINOUS_WIND
	db 31, SUCKER_PUNCH
	db 37, NASTY_PLOT
	db 43, HEX
	db 49, DARK_PULSE
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ANCIENTPOWER
	db 1, ICE_SHARD
	db 1, GUST
	db 1, POWDER_SNOW
	db 36, MIST
	db 43, AGILITY
	db 51, ICE_BEAM
	db 57, AIR_SLASH
	db 64, BLIZZARD
	db 71, REFLECT
	db 78, SHEER_COLD
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ANCIENTPOWER
	db 1, SPARK
	db 1, PECK
	db 1, THUNDERSHOCK
	db 36, THUNDER_WAVE
	db 43, AGILITY
	db 51, THUNDERBOLT
	db 57, DRILL_PECK
	db 64, THUNDER
	db 71, LIGHT_SCREEN
	db 78, ZAP_CANNON
	db 0
	
MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ANCIENTPOWER
	db 1, FLAME_CHARGE
	db 1, WING_ATTACK
	db 1, EMBER
	db 36, FIRE_SPIN
	db 43, AGILITY
	db 51, FLAMETHROWER
	db 57, SKY_ATTACK
	db 64, FIRE_BLAST
	db 71, SAFEGUARD
	db 78, INFERNO
	db 0
	
ThuFiZerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDERBOLT
	db 1, FLAMETHROWER
	db 1, ICE_BEAM
	db 1, TRI_ATTACK
	db 63, DRILL_PECK
	db 63, SKY_ATTACK
	db 63, AIR_SLASH
	db 75, THUNDER
	db 75, FIRE_BLAST
	db 75, BLIZZARD
	db 87, ZAP_CANNON
	db 87, INFERNO
	db 87, SHEER_COLD
	db 0
	
RegirockEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, EXPLOSION
	db 1, IRON_DEFENSE
	db 1, STOMP
	db 1, ROCK_THROW
	db 25, CURSE
	db 33, DYNAMICPUNCH
	db 41, ANCIENTPOWER
	db 57, POWER_GEM
	db 65, STONE_EDGE
	db 73, ZAP_CANNON
	db 81, HYPER_BEAM
	db 0

RegiceEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, EXPLOSION
	db 1, AMNESIA
	db 1, STOMP
	db 1, ICY_WIND
	db 25, CURSE
	db 33, DYNAMICPUNCH
	db 41, ANCIENTPOWER
	db 57, ICICLE_SPEAR
	db 65, BLIZZARD
	db 73, ZAP_CANNON
	db 81, HYPER_BEAM
	db 0
	
RegisteelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, EXPLOSION
	db 1, AMNESIA
	db 1, IRON_DEFENSE
	db 1, STOMP
	db 1, METAL_CLAW
	db 25, CURSE
	db 33, DYNAMICPUNCH
	db 41, ANCIENTPOWER
	db 57, FLASH_CANNON
	db 65, IRON_HEAD
	db 73, ZAP_CANNON
	db 81, HYPER_BEAM
	db 0
	
SkeletopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, GUILLOTINE
	db 1, BONE_CLUB
	db 1, SLASH
	db 26, LEECH_LIFE
	db 35, CURSE
	db 44, ANCIENTPOWER
	db 53, SHADOW_CLAW
	db 62, NIGHT_SLASH
	db 71, GIGA_DRAIN
	db 80, STONE_EDGE
	db 0
	
OssidactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, CONFUSE_RAY
	db 1, BONE_CLUB
	db 1, DRAGONBREATH
	db 26, LEECH_LIFE
	db 35, CURSE
	db 44, ANCIENTPOWER
	db 53, SHADOW_CLAW
	db 62, IRON_HEAD
	db 71, DRAGON_CLAW
	db 80, HYPER_BEAM
	db 0
	
DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 1, BIND ; Wrap
	db 1, LEER
	db 11, THUNDER_WAVE
	db 15, TWISTER
	db 21, DRAGONBREATH
	db 25, WHIRLPOOL
	db 31, AGILITY
	db 35, BREAK_SWIPE
	db 41, MIST
	db 45, SAFEGUARD
	db 51, DRAGON_DANCE
	db 55, OUTRAGE
	db 61, HYPER_BEAM
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 1, BIND ; Wrap
	db 1, LEER
	db 11, THUNDER_WAVE
	db 15, TWISTER
	db 21, DRAGONBREATH
	db 25, WHIRLPOOL
	db 33, AGILITY
	db 39, BREAK_SWIPE
	db 47, MIST
	db 53, SAFEGUARD
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 0
	
DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, EXTREMESPEED
	db 1, BARRIER
	db 1, BIND ; Wrap
	db 1, LEER
	db 11, THUNDER_WAVE
	db 15, TWISTER
	db 21, DRAGONBREATH
	db 25, WHIRLPOOL
	db 33, AGILITY
	db 39, BREAK_SWIPE
	db 47, MIST
	db 53, SAFEGUARD
	db 55, WING_ATTACK
	db 61, DRAGON_DANCE
	db 67, OUTRAGE
	db 75, HYPER_BEAM
	db 81, HURRICANE
	db 0
	
LarvitarEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0
; Learnset
	db 1, BITE
	db 1, LEER
	db 10, FOCUS_ENERGY
	db 14, ROCK_THROW
	db 19, SCREECH
	db 23, ROCK_SLIDE
	db 28, THRASH
	db 32, DARK_PULSE
	db 37, SCARY_FACE
	db 41, CRUNCH
	db 46, EARTHQUAKE
	db 50, STONE_EDGE
	db 55, HYPER_BEAM
	db 0

PupitarEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0
; Learnset
	db 1, BITE
	db 1, LEER
	db 10, FOCUS_ENERGY
	db 14, ROCK_THROW
	db 19, SCREECH
	db 23, ROCK_SLIDE
	db 28, THRASH
	db 30, IRON_DEFENSE
	db 34, DARK_PULSE
	db 41, SCARY_FACE
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 60, STONE_EDGE
	db 67, HYPER_BEAM
	db 0
	
TyranitarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, BITE
	db 1, LEER
	db 10, FOCUS_ENERGY
	db 14, ROCK_THROW
	db 19, SCREECH
	db 23, ROCK_SLIDE
	db 28, THRASH
	db 30, IRON_DEFENSE
	db 34, DARK_PULSE
	db 41, SCARY_FACE
	db 47, CRUNCH
	db 54, EARTHQUAKE
	db 63, STONE_EDGE
	db 73, HYPER_BEAM
	db 82, GIGA_IMPACT
	db 0
	
BagonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, SHELGON
	db 0
; Learnset
	db 1, EMBER
	db 1, BITE
	db 10, LEER
	db 16, HEADBUTT
	db 20, FOCUS_ENERGY
	db 25, DRAGONBREATH
	db 31, ZEN_HEADBUTT
	db 35, DRAGON_DANCE
	db 40, SCARY_FACE
	db 46, CRUNCH
	db 50, DRAGON_CLAW
	db 55, DOUBLE_EDGE
	db 0

ShelgonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 50, SALAMENCE
	db 0
; Learnset
	db 1, EMBER
	db 1, IRON_DEFENSE
	db 10, LEER
	db 16, HEADBUTT
	db 20, FOCUS_ENERGY
	db 25, DRAGONBREATH
	db 30, PROTECT
	db 32, ZEN_HEADBUTT
	db 37, DRAGON_DANCE
	db 43, SCARY_FACE
	db 50, CRUNCH
	db 55, DRAGON_CLAW
	db 61, DOUBLE_EDGE
	db 0

SalamenceEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDER_FANG
	db 1, FIRE_FANG
	db 1, IRON_DEFENSE
	db 1, EMBER
	db 1, BITE
	db 10, LEER
	db 16, HEADBUTT
	db 20, FOCUS_ENERGY
	db 25, DRAGONBREATH
	db 30, PROTECT
	db 32, ZEN_HEADBUTT
	db 37, DRAGON_DANCE
	db 43, SCARY_FACE
	db 50, FLY
	db 53, CRUNCH
	db 61, DRAGON_CLAW
	db 70, DOUBLE_EDGE
	db 80, OUTRAGE
	db 0
	
BeldumEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, METANG
	db 0
; Learnset
	db 1, TAKE_DOWN
	db 0

MetangEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, METAGROSS
	db 0
; Learnset
	db 1, TAKE_DOWN
	db 20, CONFUSION
	db 20, METAL_CLAW
	db 26, SHARPEN
	db 29, BULLET_PUNCH
	db 32, ZEN_HEADBUTT
	db 35, SCARY_FACE
	db 38, PSYCHIC_M
	db 41, AGILITY
	db 44, METEOR_MASH
	db 47, IRON_DEFENSE
	db 50, HYPER_BEAM
	db 0

MetagrossEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TAKE_DOWN
	db 20, CONFUSION
	db 20, METAL_CLAW
	db 26, SHARPEN
	db 29, BULLET_PUNCH
	db 32, ZEN_HEADBUTT
	db 35, SCARY_FACE
	db 38, PSYCHIC_M
	db 41, AGILITY
	db 44, METEOR_MASH
	db 45, DYNAMICPUNCH
	db 53, IRON_DEFENSE
	db 62, HYPER_BEAM
	db 0
	
RegigigasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, CONFUSE_RAY
	db 1, STOMP
	db 1, DIZZY_PUNCH
	db 1, PROTECT
	db 20, DYNAMICPUNCH
	db 40, ZEN_HEADBUTT
	db 60, METEOR_MASH
	db 80, EARTHQUAKE
	db 100, GIGA_IMPACT
	db 0
	
MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TELEPORT
	db 1, CONFUSION
	db 1, DISABLE
	db 58, SHADOW_BALL
	db 62, BARRIER
	db 66, PSYCHIC_M
	db 70, RECOVER
	db 74, MIST
	db 78, AMNESIA
	db 82, SAFEGUARD
	db 85, PSYSTRIKE
	db 0
	
MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TELEPORT
	db 1, POUND
	db 1, CONVERSION ; Reflect Type
	db 1, MIRROR_MOVE
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, BARRIER
	db 50, ANCIENTPOWER
	db 60, NASTY_PLOT
	db 70, PSYCHIC_M
	db 80, SOFTBOILED
	db 0
	
YoshiEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, LICK
	db 1, STOMP
	db 10, DOUBLE_KICK
	db 20, DRAGONBREATH
	db 30, HEADBUTT
	db 40, EGG_BOMB
	db 50, BREAK_SWIPE
	db 60, SOFTBOILED
	db 70, DRAGON_DANCE
	db 80, DRAGON_PULSE
	db 0
	
MissingNoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 255, KANGASKHAN ; This should only be doable with the Mist Stone.~$~
	db 0
; Learnset
	db 1, PAY_DAY
	db 1, BIND
	db 1, WATER_GUN
	db 1, SKY_ATTACK
	db 71, INFESTATION
	db 79, SHEER_COLD
	db 95, CONVERSION
	db 99, STRUGGLE
	db 0
	
NothingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

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
	dw NothingEvosMoves
	dw NothingEvosMoves
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
	dw NothingEvosMoves
	dw MagmarEvosMoves
	dw NothingEvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw NothingEvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
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
	dw NothingEvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw NothingEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw MukEvosMoves
	dw NothingEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw NothingEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw NothingEvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw NothingEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw NothingEvosMoves
	dw MagnemiteEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw NothingEvosMoves
	dw NothingEvosMoves;FossilKabutopsEvosMoves
	dw NothingEvosMoves;FossilAerodactylEvosMoves
	dw NothingEvosMoves;MonGhostEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
	assert_table_length NUM_POKEMON_INDEXES
	
BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 6, VINE_WHIP
	db 10, LEECH_SEED
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 25, SLUDGE
	db 32, GROWTH
	db 39, RECOVER ; Synthesis
	db 46, POWER_WHIP
	db 0
	
IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 6, VINE_WHIP
	db 10, LEECH_SEED
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SLUDGE
	db 38, GROWTH
	db 47, RECOVER ; Synthesis
	db 56, POWER_WHIP
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, GROWL
	db 6, VINE_WHIP
	db 10, LEECH_SEED
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SLUDGE
	db 32, PETAL_DANCE
	db 41, GROWTH
	db 53, RECOVER ; Synthesis
	db 65, SOLARBEAM
	db 0
	
CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 6, EMBER
	db 10, LEER
	db 13, METAL_CLAW
	db 19, SMOKESCREEN
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, SLASH
	db 43, DRAGONBREATH
	db 49, FIRE_SPIN
	db 0
	
CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 6, EMBER
	db 10, LEER
	db 13, METAL_CLAW
	db 20, SMOKESCREEN
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 41, SLASH
	db 48, DRAGONBREATH
	db 55, FIRE_SPIN
	db 0
	
CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 6, EMBER
	db 10, LEER
	db 13, METAL_CLAW
	db 20, SMOKESCREEN
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 44, SLASH
	db 54, DRAGONBREATH
	db 64, FLARE_BLITZ
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 6, WATER_GUN
	db 10, HARDEN
	db 13, BITE
	db 18, RAPID_SPIN
	db 23, PROTECT
	db 28, WHIRLPOOL
	db 33, MIRROR_COAT
	db 40, LIQUIDATION
	db 47, HYDRO_PUMP
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 6, WATER_GUN
	db 10, HARDEN
	db 13, BITE
	db 19, RAPID_SPIN
	db 25, PROTECT
	db 31, WHIRLPOOL
	db 37, MIRROR_COAT
	db 45, LIQUIDATION
	db 53, HYDRO_PUMP
	db 0
	
BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 6, WATER_GUN
	db 10, HARDEN
	db 13, BITE
	db 19, RAPID_SPIN
	db 25, PROTECT
	db 31, WHIRLPOOL
	db 36, FLASH_CANNON
	db 42, MIRROR_COAT
	db 55, LIQUIDATION
	db 68, HYDRO_PUMP
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
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, GUST
	db 23, SUPERSONIC
	db 28, SILVER_WIND
	db 34, PSYBEAM
	db 40, SAFEGUARD
	db 47, RAZOR_WIND
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
	db 1, FURY_ATTACK
	db 10, FURY_ATTACK
	db 13, FOCUS_ENERGY
	db 16, TWINEEDLE
	db 19, QUICK_ATTACK
	db 22, FEINT_ATTACK
	db 28, PIN_MISSILE
	db 31, AGILITY
	db 37, POISON_JAB
	db 40, OUTRAGE
	db 46, X_SCISSOR
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
	db 19, TWISTER
	db 25, WING_ATTACK
	db 31, MIRROR_MOVE
	db 39, AGILITY
	db 47, AIR_SLASH
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
	db 20, TWISTER
	db 27, WING_ATTACK
	db 34, MIRROR_MOVE
	db 43, AGILITY
	db 52, AIR_SLASH
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 20, TWISTER
	db 27, WING_ATTACK
	db 34, MIRROR_MOVE
	db 48, AGILITY
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
	db 13, BITE
	db 20, FOCUS_ENERGY
	db 27, SUCKER_PUNCH
	db 34, SUPER_FANG
	db 41, CRUNCH
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, BITE
	db 20, SCARY_FACE
	db 30, SUCKER_PUNCH
	db 40, SUPER_FANG
	db 50, CRUNCH
	db 0
	
SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 19, SONICBOOM
	db 25, AERIAL_ACE
	db 31, MIRROR_MOVE
	db 37, DRILL_PECK
	db 43, AGILITY
	db 0
	
FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 19, SONICBOOM
	db 20, TRI_ATTACK
	db 26, FEINT_ATTACK
	db 32, MIRROR_MOVE
	db 40, DRILL_PECK
	db 47, AGILITY
	db 0
	
EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 1, BIND
	db 1, LEER
	db 8, POISON_STING
	db 13, BITE
	db 20, GLARE
	db 25, SCREECH
	db 32, ACID
	db 37, POISON_FANG
	db 44, HAZE
	db 0
	
ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BIND
	db 1, LEER
	db 8, POISON_STING
	db 13, BITE
	db 20, GLARE
	db 22, CRUNCH
	db 28, SCREECH
	db 38, ACID
	db 46, POISON_FANG
	db 56, HAZE
	db 0
	
PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, SWIFT
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN
	db 0

RaichuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERPUNCH
	db 0
	
SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
; Learnset
	db 1, SCRATCH
	db 6, HARDEN
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 23, SLASH
	db 30, SWIFT
	db 37, FURY_ATTACK
	db 45, SAND_TOMB
	db 53, EARTHQUAKE
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 6, HARDEN
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 24, SLASH
	db 33, SWIFT
	db 42, FURY_ATTACK
	db 52, SAND_TOMB
	db 62, EARTHQUAKE
	db 0
	
NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 1, GROWL
	db 1, SCRATCH
	db 8, TAIL_WHIP
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 20, BITE
	db 23, COUNTER
	db 30, FURY_ATTACK
	db 38, TOXIC
	db 47, CRUNCH
	db 0
	
NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0
; Learnset
	db 1, GROWL
	db 1, SCRATCH
	db 8, TAIL_WHIP
	db 12, DOUBLE_KICK
	db 18, POISON_STING
	db 22, BITE
	db 26, COUNTER
	db 34, FURY_ATTACK
	db 43, TOXIC
	db 53, CRUNCH
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
	db 0
	
NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 1, LEER
	db 1, PECK
	db 8, FOCUS_ENERGY
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 20, HORN_ATTACK
	db 23, COUNTER
	db 30, FURY_ATTACK
	db 38, TOXIC
	db 47, SMART_STRIKE
	db 0
	
NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db 0
; Learnset
	db 1, LEER
	db 1, PECK
	db 8, FOCUS_ENERGY
	db 12, DOUBLE_KICK
	db 18, POISON_STING
	db 22, HORN_ATTACK
	db 26, COUNTER
	db 34, FURY_ATTACK
	db 43, TOXIC
	db 53, SMART_STRIKE
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
	db 0
	
ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 1, POUND
	db 1, GROWL
	db 5, CHARM
	db 9, SING
	db 13, DOUBLE_HIT ; Doubleslap
	db 17, DISARM_VOICE
	db 21, MINIMIZE
	db 25, HARDEN
	db 29, METRONOME
	db 33, COSMIC_POWER
	db 37, RECOVER ; Moonlight
	db 41, LIGHT_SCREEN
	db 45, METEOR_MASH
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
	db 5, TAIL_WHIP
	db 9, HOWL
	db 13, QUICK_ATTACK
	db 17, WILL_O_WISP
	db 21, CONFUSE_RAY
	db 25, DISABLE
	db 29, FLAMETHROWER
	db 33, SAFEGUARD
	db 37, HEX
	db 41, FIRE_SPIN
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 45, FIRE_SPIN
	db 0
	
JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 1, SING
	db 4, HARDEN
	db 9, POUND
	db 14, DISABLE
	db 19, DISARM_VOICE
	db 24, DOUBLE_HIT ; Doubleslap
	db 29, REST
	db 34, BODY_SLAM
	db 39, MIMIC
	db 44, HYPER_VOICE
	db 49, DOUBLE_EDGE
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SING
	db 1, DISABLE
	db 1, HARDEN
	db 1, DOUBLE_HIT ; Doubleslap
	db 0
	
ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 1, ASTONISH
	db 6, SUPERSONIC
	db 11, LEECH_LIFE
	db 16, BITE
	db 21, WING_ATTACK
	db 26, CONFUSE_RAY
	db 31, AIR_SLASH
	db 36, FEINT_ATTACK
	db 41, POISON_FANG
	db 46, HAZE
	db 0
	
GolbatEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ASTONISH
	db 6, SUPERSONIC
	db 11, LEECH_LIFE
	db 16, BITE
	db 21, WING_ATTACK
	db 22, SCREECH
	db 28, CONFUSE_RAY
	db 35, AIR_SLASH
	db 42, FEINT_ATTACK
	db 49, POISON_FANG
	db 56, HAZE
	db 0
	
OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 1, MEGA_DRAIN ; Absorb
	db 7, LEECH_SEED
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 32, RECOVER ; Moonlight
	db 39, PETAL_DANCE
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db 0
; Learnset
	db 1, MEGA_DRAIN ; Absorb
	db 7, LEECH_SEED
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 24, ACID
	db 35, RECOVER ; Moonlight
	db 44, PETAL_DANCE
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
	
ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 25, SPORE
	db 31, SLASH
	db 37, GROWTH
	db 43, GIGA_DRAIN
	db 49, X_SCISSOR
	db 0
	
ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 27, SPORE
	db 35, SLASH
	db 43, GROWTH
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
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
	db 0
	
VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, DISABLE
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, SILVER_WIND
	db 28, STUN_SPORE
	db 31, GUST
	db 36, PSYBEAM
	db 42, SLEEP_POWDER
	db 52, PSYCHIC_M
	db 0
	
DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 5, GROWL
	db 9, MUD_SLAP
	db 17, DIG
	db 25, BULLDOZE
	db 33, SLASH
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0
	
DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, SAND_ATTACK
	db 5, GROWL
	db 9, SAND_TOMB
	db 17, DIG
	db 25, BULLDOZE
	db 26, TRI_ATTACK
	db 38, SLASH
	db 51, EARTHQUAKE
	db 64, FISSURE
	db 0
	
MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 20, PAY_DAY
	db 28, FEINT_ATTACK
	db 35, SCREECH
	db 41, FURY_ATTACK
	db 46, SLASH
	db 50, NASTY_PLOT
	db 0
	
PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 20, PAY_DAY
	db 29, FEINT_ATTACK
	db 38, SCREECH
	db 46, FURY_ATTACK
	db 53, SLASH
	db 59, NASTY_PLOT
	db 0
	
PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, AMNESIA
	db 40, FURY_ATTACK
	db 50, HYDRO_PUMP
	db 0
	
GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, AMNESIA
	db 44, FURY_ATTACK
	db 58, HYDRO_PUMP
	db 0
	
MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 1, SCRATCH
	db 1, LEER
	db 9, KARATE_CHOP
	db 15, LOW_SWEEP
	db 21, FURY_ATTACK
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0
	
PrimeapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, LEER
	db 9, KARATE_CHOP
	db 15, LOW_SWEEP
	db 21, FURY_ATTACK
	db 27, FOCUS_ENERGY
	db 28, OUTRAGE
	db 36, SEISMIC_TOSS
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, THRASH
	db 0
	
GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 1, BITE
	db 1, HOWL
	db 7, EMBER
	db 13, LEER
	db 19, FLAME_CHARGE
	db 25, TAKE_DOWN
	db 31, FIRE_FANG
	db 37, CRUNCH
	db 43, AGILITY
	db 49, FLAMETHROWER
	db 0
	
ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, HOWL
	db 1, EMBER
	db 1, BITE
	db 1, FIRE_FANG
	db 49, EXTREMESPEED
	db 0
	
PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, WATER_PULSE
	db 19, DOUBLE_HIT ; Doubleslap
	db 25, MIST
	db 31, BODY_SLAM
	db 37, AMNESIA
	db 43, HYDRO_PUMP
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db 0
; Learnset
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, WATER_PULSE
	db 19, DOUBLE_HIT ; Doubleslap
	db 27, MIST
	db 35, BODY_SLAM
	db 43, AMNESIA
	db 51, HYDRO_PUMP
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, DOUBLE_HIT ; Doubleslap
	db 1, BODY_SLAM
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 35, SUBMISSION
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
AlakazamEvosMoves:
	db 0
; Learnset
	db 1, TELEPORT
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, REFLECT
	db 25, RECOVER
	db 30, NIGHT_SHADE
	db 33, COSMIC_POWER
	db 36, PSYCHIC_M
	db 0

; AlakazamEvosMoves:
; ; Evolutions
	; db 0
; ; Learnset
	; db 1, TELEPORT
	; db 16, CONFUSION
	; db 20, DISABLE
	; db 27, PSYBEAM
	; db 31, RECOVER
	; db 38, PSYCHIC_M
	; db 42, REFLECT
	; db 0
	
MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
; Learnset
	db 1, TACKLE
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, LOW_SWEEP
	db 22, LEER
	db 25, SEISMIC_TOSS
	db 31, MEDITATE
	db 37, SUBMISSION
	db 40, CROSS_CHOP
	db 43, SCARY_FACE
	db 49, DYNAMICPUNCH
	db 0
	
MachokeEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, MACHAMP
MachampEvosMoves:
	db 0
; Learnset
	db 1, TACKLE
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, LOW_SWEEP
	db 22, LEER
	db 25, SEISMIC_TOSS
	db 33, MEDITATE
	db 41, SUBMISSION
	db 46, CROSS_CHOP
	db 51, SCARY_FACE
	db 59, DYNAMICPUNCH
	db 0
	
; MachampEvosMoves:
; ; Evolutions
	; db 0
; ; Learnset
	; db 1,KARATE_CHOP
	; db 20, LOW_KICK
	; db 25, LEER
	; db 36, FOCUS_ENERGY
	; db 44, SEISMIC_TOSS
	; db 52, SUBMISSION
	; db 0
	
BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, BIND ; Wrap
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 30, LEECH_LIFE
	db 37, RAZOR_LEAF
	db 45, POWER_WHIP
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0
; Learnset
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, BIND ; Wrap
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 33, LEECH_LIFE
	db 42, RAZOR_LEAF
	db 54, POWER_WHIP
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SLEEP_POWDER
	db 1, ACID
	db 1, RAZOR_LEAF
	db 1, VINE_WHIP
	db 0
	
TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, BIND ; Wrap
	db 19, ACID
	db 25, WATER_GUN
	db 30, RAPID_SPIN
	db 36, ACID_ARMOR
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0
	
TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, BIND ; Wrap
	db 19, ACID
	db 25, WATER_GUN
	db 30, RAPID_SPIN
	db 38, ACID_ARMOR
	db 47, SCREECH
	db 55, HYDRO_PUMP
	db 0
	
GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN
	db 6, MUD_SLAP
	db 11, ROCK_THROW
	db 16, BULLDOZE
	db 21, SELFDESTRUCT
	db 26, MEGA_PUNCH
	db 31, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 46, DOUBLE_EDGE
	db 0
	
GravelerEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GOLEM
GolemEvosMoves:
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN
	db 6, MUD_SLAP
	db 11, ROCK_THROW
	db 16, BULLDOZE
	db 21, SELFDESTRUCT
	db 29, MEGA_PUNCH
	db 37, ROCK_SLIDE
	db 45, EARTHQUAKE
	db 53, EXPLOSION
	db 62, DOUBLE_EDGE
	db 0
	
; GolemEvosMoves:
; ; Evolutions
	; db 0
; ; Learnset
	; db 1, TACKLE
	; db 11, DEFENSE_CURL
	; db 16, ROCK_THROW
	; db 21, SELFDESTRUCT
	; db 29, HARDEN
	; db 36, EARTHQUAKE
	; db 43, EXPLOSION
	; db 0
	
PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
; Learnset
	db 1, TACKLE
	db 5, GROWL
	db 9, TAIL_WHIP
	db 14, EMBER
	db 19, STOMP
	db 25, FIRE_SPIN
	db 31, TAKE_DOWN
	db 38, AGILITY
	db 45, BLAZE_KICK
	db 53, FIRE_BLAST
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, FURY_ATTACK
	db 5, GROWL
	db 9, TAIL_WHIP
	db 14, EMBER
	db 19, STOMP
	db 25, FIRE_SPIN
	db 31, TAKE_DOWN
	db 38, AGILITY
	db 40, SMART_STRIKE
	db 50, BLAZE_KICK
	db 63, FIRE_BLAST
	db 0
	
SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0
; Learnset
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 0
	
SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, IRON_DEFENSE
	db 46, AMNESIA
	db 54, PSYCHIC_M
	db 0
	
MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 1, TACKLE
	db 1, METAL_SOUND
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 26, SPARK
	db 32, LIGHT_SCREEN
	db 38, SWIFT
	db 44, SCREECH
	db 50, ZAP_CANNON
	db 0
	
MagnetonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, METAL_SOUND
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 26, SPARK
	db 30, TRI_ATTACK
	db 35, LIGHT_SCREEN
	db 44, SWIFT
	db 53, SCREECH
	db 62, ZAP_CANNON
	db 0
	
FarfetchdEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 6, SAND_ATTACK
	db 11, LEER
	db 16, FURY_ATTACK
	db 21, RAZOR_LEAF
	db 26, CUT ; DUX the god
	db 31, SWORDS_DANCE
	db 36, AGILITY
	db 41, SLASH
	db 46, NIGHT_SLASH
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 1, PECK
	db 1, GROWL
	db 9, SUPERSONIC
	db 13, FURY_ATTACK
	db 21, DOUBLE_HIT
	db 25, FEINT_ATTACK
	db 33, DOUBLE_KICK
	db 37, DRILL_PECK
	db 45, AGILITY
	db 0
	
DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, GROWL
	db 9, SUPERSONIC
	db 13, FURY_ATTACK
	db 21, DOUBLE_HIT
	db 25, FEINT_ATTACK
	db 31, TRI_ATTACK
	db 38, DOUBLE_KICK
	db 47, DRILL_PECK
	db 60, AGILITY
	db 0
	
SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 1, HEADBUTT
	db 9, GROWL
	db 17, ICY_WIND
	db 21, AURORA_BEAM
	db 29, REST
	db 37, TAKE_DOWN
	db 41, ICE_BEAM
	db 49, SAFEGUARD
	db 0
	
DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, HEADBUTT
	db 9, GROWL
	db 17, ICY_WIND
	db 21, AURORA_BEAM
	db 29, REST
	db 34, SHEER_COLD
	db 42, TAKE_DOWN
	db 51, ICE_BEAM
	db 64, SAFEGUARD
	db 0
	
GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 1, POUND
	db 1, POISON_GAS
	db 1, HARDEN
	db 8, DISABLE
	db 13, SLUDGE
	db 19, MINIMIZE
	db 26, SCREECH
	db 34, ACID_ARMOR
	db 43, SLUDGE_BOMB
	db 53, GUNK_SHOT
	db 0
	
MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, POISON_GAS
	db 1, HARDEN
	db 8, DISABLE
	db 13, SLUDGE
	db 19, MINIMIZE
	db 26, SCREECH
	db 34, ACID_ARMOR
	db 47, SLUDGE_BOMB
	db 61, GUNK_SHOT
	db 0
	
ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, CLOYSTER
	db 0
; Learnset
	db 1, TACKLE
	db 1, HARDEN ; Withdraw
	db 9, SUPERSONIC
	db 17, AURORA_BEAM
	db 25, PROTECT
	db 33, LEER
	db 41, CLAMP
	db 49, ICE_BEAM
	db 0
	
CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, HARDEN ; Withdraw
	db 1, SUPERSONIC
	db 1, PROTECT
	db 1, AURORA_BEAM
	db 33, ICICLE_SPEAR
	db 0
	
GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 1, LICK
	db 1, HYPNOSIS
	db 8, DISABLE
	db 13, SMOG
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, SHADOW_BALL
	db 0
	
HaunterEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GENGAR
GengarEvosMoves:
	db 0
; Learnset
	db 1, LICK
	db 1, HYPNOSIS
	db 8, DISABLE
	db 13, SMOG
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 25, SHADOW_CLAW
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, SHADOW_BALL
	db 0
	
; GengarEvosMoves:
; ; Evolutions
	; db 0
; ; Learnset
	; db 1, LICK
	; db 1, CONFUSE_RAY
	; db 1, NIGHT_SHADE
	; db 29, HYPNOSIS
	; db 38, DREAM_EATER
	; db 0
	
OnixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1,TACKLE
	db 1, SCREECH
	db 9, BIND
	db 13, ROCK_THROW
	db 21, HARDEN
	db 25, ROCK_SLIDE
	db 33, DIG
	db 37, DRAGONBREATH
	db 45, IRON_TAIL
	db 49, SAND_TOMB
	db 57, DOUBLE_EDGE
	db 0
	
DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 36, MEDITATE
	db 40, PSYCHIC_M
	db 43, NASTY_PLOT
	db 45, DREAM_EATER
	db 0
	
HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 33, POISON_GAS
	db 40, MEDITATE
	db 49, PSYCHIC_M
	db 55, NASTY_PLOT
	db 60, DREAM_EATER
	db 0
	
KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 1, WATER_GUN
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, MUD_SHOT
	db 27, STOMP
	db 34, GUILLOTINE
	db 41, PROTECT
	db 45, CRABHAMMER
	db 0
	
KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, WATER_GUN
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, MUD_SHOT
	db 27, STOMP
	db 38, GUILLOTINE
	db 49, PROTECT
	db 57, CRABHAMMER
	db 0
	
VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 1, TACKLE
	db 8, SCREECH
	db 15, SONICBOOM
	db 21, SPARK
	db 27, SELFDESTRUCT
	db 32, SHOCK_WAVE
	db 37, LIGHT_SCREEN
	db 42, SWIFT
	db 46, EXPLOSION
	db 49, MIRROR_COAT
	db 0
	
ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 8, SCREECH
	db 15, SONICBOOM
	db 21, SPARK
	db 27, SELFDESTRUCT
	db 34, SHOCK_WAVE
	db 41, LIGHT_SCREEN
	db 48, SWIFT
	db 54, EXPLOSION
	db 59, MIRROR_COAT
	db 0
	
ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 1, BULLET_SEED
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
	db 0

ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BULLET_SEED
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, EGG_BOMB
	db 0
	
CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 1, MUD_SLAP
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, ROCK_SLIDE
	db 33, FAKE_TEARS
	db 37, THRASH
	db 41, EARTHQUAKE
	db 45, DOUBLE_EDGE
	db 0
	
MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, MUD_SLAP
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, ROCK_SLIDE
	db 39, SCARY_FACE
	db 46, THRASH
	db 53, EARTHQUAKE
	db 61, DOUBLE_EDGE
	db 0
	
HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, DOUBLE_KICK
	db 6, MEDITATE
	db 11, ROLLING_KICK
	db 16, STOMP
	db 21, FOCUS_ENERGY
	db 26, BLAZE_KICK
	db 31, PROTECT
	db 36, COUNTER
	db 41, HI_JUMP_KICK
	db 46, MEGA_KICK
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BULLET_PUNCH
	db 7, AGILITY
	db 13, PROTECT
	db 20, MACH_PUNCH
	db 26, FIRE_PUNCH
	db 26, ICE_PUNCH
	db 26, THUNDERPUNCH
	db 32, DRAIN_PUNCH
	db 38, MEGA_PUNCH
	db 44, COUNTER
	db 50, DYNAMICPUNCH
	db 0
	
LickitungEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, LICK
	db 7, SUPERSONIC
	db 12, HARDEN
	db 18, BRUTAL_SWING
	db 23, STOMP
	db 29, BIND ; Wrap
	db 34, DISABLE
	db 40, POWER_WHIP
	db 45, SCREECH
	db 51, THRASH
	db 0
	
KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 41, EXPLOSION
	db 45, TOXIC
	db 49, GUNK_SHOT
	db 0

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 44, EXPLOSION
	db 51, TOXIC
	db 58, GUNK_SHOT
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 10, STOMP
	db 15, FURY_ATTACK
	db 24, SCARY_FACE
	db 29, ROCK_THROW
	db 38, SMART_STRIKE
	db 43, TAKE_DOWN
	db 52, EARTHQUAKE
	db 57, MEGAHORN
	db 0

RhydonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 10, STOMP
	db 15, FURY_ATTACK
	db 24, SCARY_FACE
	db 29, ROCK_THROW
	db 38, SMART_STRIKE
	db 46, TAKE_DOWN
	db 58, EARTHQUAKE
	db 66, MEGAHORN
	db 0
	
ChanseyEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, HEAL_BELL
	db 13, SOFTBOILED
	db 17, DOUBLE_HIT ; Doubleslap
	db 23, MINIMIZE
	db 29, SING
	db 35, EGG_BOMB
	db 41, HARDEN ; Defense Curl
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0

TangelaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, VINE_WHIP
	db 1, LEECH_SEED
	db 1, SLEEP_POWDER
	db 10, MEGA_DRAIN
	db 13, GROWTH
	db 19, POISONPOWDER
	db 22, CONFUSION
	db 28, BIND
	db 31, ANCIENTPOWER
	db 37, STUN_SPORE
	db 40, POWER_WHIP
	db 46, RECOVER ; Synthesis
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, LEER
	db 7, BITE
	db 13, TAIL_WHIP
	db 19, DOUBLE_HIT
	db 25, MEGA_PUNCH
	db 31, SUCKER_PUNCH
	db 37, CRUNCH
	db 43, DIZZY_PUNCH
	db 49, OUTRAGE
	db 0
	
HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, BUBBLEBEAM
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 50, DRAGON_DANCE
	db 0

SeadraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, BUBBLEBEAM
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 62, DRAGON_DANCE
	db 0
	
GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
; Learnset
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, WATER_GUN
	db 29, FURY_ATTACK
	db 38, WATERFALL
	db 43, SMART_STRIKE
	db 52, AGILITY
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, WATER_GUN
	db 29, FURY_ATTACK
	db 41, WATERFALL
	db 49, SMART_STRIKE
	db 61, AGILITY
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
	db 19, CONFUSE_RAY
	db 24, SWIFT
	db 28, BUBBLEBEAM
	db 33, MINIMIZE
	db 37, LIGHT_SCREEN
	db 42, COSMIC_POWER
	db 46, HYDRO_PUMP
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
	
MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, BARRIER
	db 5, CONFUSION
	db 9, SUBSTITUTE
	db 13, MEDITATE
	db 17, DOUBLE_HIT ; Doubleslap
	db 21, LIGHT_SCREEN
	db 21, REFLECT
	db 25, MIMIC
	db 29, PSYBEAM
	db 33, HYPNOSIS
	db 37, MAGICAL_LEAF
	db 41, NASTY_PLOT
	db 45, PSYCHIC_M
	db 49, DAZZLINGLEAM
	db 53, SAFEGUARD
	db 0
	
ScytherEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 11, FEINT_ATTACK
	db 16, WING_ATTACK
	db 21, AGILITY
	db 26, AIR_SLASH
	db 31, SLASH
	db 36, SWORDS_DANCE
	db 41, DOUBLE_TEAM
	db 46, X_SCISSOR
	db 0
	
JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND
	db 1, LICK
	db 9, LOVELY_KISS
	db 13, POWDER_SNOW
	db 21, DOUBLE_HIT ; Doubleslap
	db 25, ICE_PUNCH
	db 35, MEDITATE
	db 41, FAKE_TEARS
	db 51, BODY_SLAM
	db 57, THRASH
	db 67, BLIZZARD
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, QUICK_ATTACK
	db 1, LEER
	db 7, THUNDERSHOCK
	db 10, LOW_SWEEP
	db 16, SWIFT
	db 19, SHOCK_WAVE
	db 25, LIGHT_SCREEN
	db 28, THUNDERPUNCH
	db 37, THUNDER_WAVE
	db 43, THUNDERBOLT
	db 52, SCREECH
	db 58, THUNDER
	db 0
	
MagmarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SMOG
	db 1, LEER
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, FEINT_ATTACK
	db 19, FIRE_SPIN
	db 25, CONFUSE_RAY
	db 28, FIRE_PUNCH
	db 36, WILL_O_WISP
	db 41, FLAMETHROWER
	db 49, SCREECH
	db 54, FIRE_BLAST
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, VICEGRIP
	db 1, FOCUS_ENERGY
	db 7, BIND
	db 13, SEISMIC_TOSS
	db 19, HARDEN
	db 25, SLASH
	db 31, X_SCISSOR
	db 37, GUILLOTINE
	db 43, SUBMISSION
	db 49, SWORDS_DANCE
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, BULLDOZE
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 26, STOMP
	db 34, REST
	db 43, THRASH
	db 53, TAKE_DOWN
	db 0
	
MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 1, SPLASH
	db 15, TACKLE
	db 30, DRAGONBREATH
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 20, BITE
	db 25, DRAGONBREATH
	db 30, LEER
	db 35, TWISTER
	db 40, HYDRO_PUMP
	db 45, THRASH
	db 50, DRAGON_DANCE
	db 55, HYPER_BEAM
	db 0
	
LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 7, MIST
	db 13, BODY_SLAM
	db 19, CONFUSE_RAY
	db 25, ICE_SHARD
	db 31, ICE_BEAM
	db 37, WHIRLPOOL
	db 43, SAFEGUARD
	db 49, HYDRO_PUMP
	db 55, SHEER_COLD
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
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, CHARM
	db 42, TAKE_DOWN
	db 0
	
VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0
	
JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, THUNDER_WAVE
	db 47, AGILITY
	db 52, THUNDER
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FIRE_SPIN
	db 42, SMOG
	db 47, LEER
	db 52, FLAMETHROWER
	db 0
	
PorygonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, SIGNAL_BEAM
	db 36, TRI_ATTACK
	db 44, BARRIER
	db 48, ZAP_CANNON
	db 0
	
OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 1, BIND
	db 1, HARDEN ; Withdraw
	db 13, BITE
	db 19, WATER_GUN
	db 25, MUD_SHOT
	db 31, LEER
	db 37, PROTECT
	db 43, WHIRLPOOL
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BIND
	db 1, HARDEN ; Withdraw
	db 13, BITE
	db 19, WATER_GUN
	db 25, MUD_SHOT
	db 31, LEER
	db 37, PROTECT
	db 40, CRUNCH
	db 46, WHIRLPOOL
	db 55, ANCIENTPOWER
	db 65, HYDRO_PUMP
	db 0
	
KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 1, SCRATCH
	db 1, HARDEN
	db 13, MEGA_DRAIN ; Absorb
	db 19, LEER
	db 25, MUD_SHOT
	db 31, SAND_ATTACK
	db 37, DIG
	db 43, METAL_SOUND
	db 49, GIGA_DRAIN
	db 55, ANCIENTPOWER
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 1, HARDEN
	db 13, MEGA_DRAIN ; Absorb
	db 19, LEER
	db 25, MUD_SHOT
	db 31, SAND_ATTACK
	db 37, DIG
	db 40, SLASH
	db 46, METAL_SOUND
	db 55, GIGA_DRAIN
	db 65, ANCIENTPOWER
	db 0
	
AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 50, HYPER_BEAM
	db 0
	
SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 6, MUD_SLAP
	db 10, HARDEN ; Defense Curl
	db 15, LICK
	db 19, HEADBUTT
	db 24, AMNESIA
	db 28, REST
	db 33, BODY_SLAM
	db 37, METRONOME
	db 42, CRUNCH
	db 46, DOUBLE_EDGE
	db 51, GIGA_IMPACT
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, GUST
	db 1, POWDER_SNOW
	db 25, MIST
	db 37, AGILITY
	db 51, ICE_BEAM
	db 61, REFLECT
	db 73, BLIZZARD
	db 85, SHEER_COLD
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 1, THUNDERSHOCK
	db 25, THUNDER_WAVE
	db 37, AGILITY
	db 51, DRILL_PECK
	db 61, THUNDER
	db 73, LIGHT_SCREEN
	db 85, ZAP_CANNON
	db 0
	
MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, WING_ATTACK
	db 1, EMBER
	db 25, FIRE_SPIN
	db 37, AGILITY
	db 51, FLAMETHROWER
	db 61, SKY_ATTACK
	db 73, SAFEGUARD
	db 85, INFERNO
	db 0
	
DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 1, BIND ; Wrap
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGONBREATH
	db 29, BREAK_SWIPE
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 1, BIND ; Wrap
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGONBREATH
	db 29, BREAK_SWIPE
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
	db 0
	
DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BIND ; Wrap
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGONBREATH
	db 29, BREAK_SWIPE
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
	db 0
	
MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, CONFUSION
	db 1, DISABLE
	db 1, SWIFT
	db 1, BARRIER
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
	db 1, POUND
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
	db 0
	
NothingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

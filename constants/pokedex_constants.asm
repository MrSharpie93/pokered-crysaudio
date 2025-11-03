; pokedex ids
; indexes for:
; - BaseStats (see data/pokemon/base_stats.asm)
; - MonPartyData (see data/pokemon/menu_icons.asm)
; - MonsterPalettes (see data/pokemon/palettes.asm)
	const_def 1
	const DEX_BULBASAUR  ; 1 ; Hidden Forest/Given by Oak/Gift from Melanie in the Daycare if not chosen on game start
	const DEX_IVYSAUR    ; 2 ; Evolve Bulbasaur
	const DEX_VENUSAUR   ; 3 ; Evolve Ivysaur
	const DEX_CHARMANDER ; 4 ; Hidden Forest/Given by Oak/Gift from Damian on Route 25 if not chosen on game start
	const DEX_CHARMELEON ; 5 ; Evolve Charmander
	const DEX_CHARIZARD  ; 6 ; Evolve Charmeleon
	const DEX_SQUIRTLE   ; 7 ; Hidden Forest/Given by Oak/Gift from Officer Jenny in Vermilion if not chosen on game start
	const DEX_WARTORTLE  ; 8 ; Evolve Squirtle
	const DEX_BLASTOISE  ; 9 ; Evolve Wartortle
	const DEX_CATERPIE   ; 10 ; Route 2/24(Soaked), Viridian Forest
	const DEX_METAPOD    ; 11 ; Route 24(Soaked), Viridian Forest, Hidden Forest
	const DEX_BUTTERFREE ; 12 ; Hidden Forest
	const DEX_WEEDLE     ; 13 ; Route 2/24(Singed), Viridian Forest
	const DEX_KAKUNA     ; 14 ; Route 24(Singed), Viridian Forest, Hidden Forest
	const DEX_BEEDRILL   ; 15 ; Hidden Forest
	const DEX_PIDGEY     ; 16 ; Route 1/2/3/5/24/25
	const DEX_PIDGEOTTO  ; 17 ; Route 8/25
	const DEX_PIDGEOT    ; 18 ; Evolve Pidgeotto
	const DEX_RATTATA    ; 19 ; Route 1/2/4/6/10/22/26/27
	const DEX_RATICATE   ; 20 ; Route 7/16/21, Cinnabar Mansion 1F/2F
	const DEX_SPEAROW    ; 21 ; Route 3/4/11/22
	const DEX_FEAROW     ; 22 ; Route 14/15/16
	const DEX_EKANS      ; 23 ; Route 3/4/9/11/26/27
	const DEX_ARBOK      ; 24 ; Route 23, Victory Road 1F
	const DEX_PICHU      ; 25 ; Viridian Forest, Bill's Garden
	const DEX_PIKACHU    ; 26 ; Route 10, Viridian Forest, Power Plant
	const DEX_RAICHU     ; 27 ; Cerulean Cave 1F
	const DEX_GOROCHU    ; 28 ; Evolve Raichu
	const DEX_SANDSHREW  ; 29 ; Route 3/4/9/11/26/27
	const DEX_SANDSLASH  ; 30 ; Route 23, Victory Road 1F
	const DEX_NIDORAN_F  ; 31 ; Route 5/22
	const DEX_NIDORINA   ; 32 ; Route 9/13/(Singed)/14(Soaked)/15(Soaked)
	const DEX_NIDOQUEEN  ; 33 ; Evolve Nidorina
	const DEX_NIDORAN_M  ; 34 ; Route 5/22
	const DEX_NIDORINO   ; 35 ; Route 9/13(Soaked)/14(Singed)/15(Singed)
	const DEX_NIDOKING   ; 36 ; Evolve Nidorino
	const DEX_CLEFFA     ; 37 ; Mt. Moon B2F, Bill's Garden
	const DEX_CLEFAIRY   ; 38 ; Mt. Moon 1F/B1F/B2F
	const DEX_CLEFABLE   ; 39 ; Evolve Clefairy
	const DEX_VULPIX     ; 40 ; Pokemon Tower 4F/6F, Cinnabar Mansion 2F/3F
	const DEX_NINETALES  ; 41 ; Pokemon Tower 7F
	const DEX_IGGLYBUFF  ; 42 ; Route 3, Bill's Garden
	const DEX_JIGGLYPUFF ; 43 ; Route 3/7/8
	const DEX_WIGGLYTUFF ; 44 ; Cerulean Cave 2F
	const DEX_TOGEPI     ; 45 ; Bill's Garden, Hidden Forest
	const DEX_TOGETIC    ; 46 ; Evolve Togepi
	const DEX_TOGEKISS   ; 47 ; Evolve Togetic
	const DEX_ZUBAT      ; 48 ; Mt. Moon 1F/B1F/B2F, Rock Tunnel 1F/B1F, Tohjo Falls
	const DEX_GOLBAT     ; 49 ; Seafoam Islands 1F/B1F/B2F/B3F/B4F, Victory Road 1F/2F/3F, Cerulean Cave 1F/2F, Silver Cave 1F/2F
	const DEX_CROBAT     ; 50 ; Evolve Golbat
	const DEX_ODDISH     ; 51 ; Route 5/24/25
	const DEX_GLOOM      ; 52 ; Route 7(Singed)/13/14
	const DEX_VILEPLUME  ; 53 ; Evolve Gloom
	const DEX_BELLOSSOM  ; 54 ; Evolve Gloom
	const DEX_HOPPIP     ; 55 ; Route 1/2/6/26/27
	const DEX_SKIPLOOM   ; 56 ; Route 7/8/12/13
	const DEX_JUMPLUFF   ; 57 ; Route 28
	const DEX_PARAS      ; 58 ; Mt. Moon 1F/B1F/B2F, Safari Zone North/West, Tohjo Falls
	const DEX_PARASECT   ; 59 ; Safari Zone Center, Cerulean Cave B1F/1F
	const DEX_VENONAT    ; 60 ; Route 12/25, Viridian Forest, Safari Zone Center/West
	const DEX_VENOMOTH   ; 61 ; Route 12, Cerulean Cave 1F
	const DEX_JOLTIK     ; 62 ; Viridian Forest, Power Plant
	const DEX_GALVANTULA ; 63 ; Power Plant, Cerulean Cave 1F
	const DEX_DIGLETT    ; 64 ; Diglett's Cave
	const DEX_DUGTRIO    ; 65 ; Diglett's Cave
	const DEX_MEOWTH     ; 66 ; Route 5/6
	const DEX_PERSIAN    ; 67 ; Route 23(Soaked)
	const DEX_CHIMEOW    ; 68 ; Route 5/6
	const DEX_BELLUNA    ; 69 ; Route 23(Singed)
	const DEX_MAREEP     ; 70 ; Route 6/10/11
	const DEX_FLAAFFY    ; 71 ; Power Plant
	const DEX_AMPHAROS   ; 72 ; Route 28
	const DEX_PSYDUCK    ; 73 ; Route 4/6 (Surfing)/24
	const DEX_GOLDUCK    ; 74 ; Route 6 (Surfing), Seafoam Islands 1F/B1F/B2F/B3F/B4F, Cerulean Cave B1F/1F (Surfing), Silver Cave 2F (Surfing)
	const DEX_MANKEY     ; 75 ; Route 3/4/22
	const DEX_PRIMEAPE   ; 76 ; Route 23
	const DEX_GROWLITHE  ; 77 ; Route 7/8, Cinnabar Mansion 1F/2F/3F/B1F
	const DEX_ARCANINE   ; 78 ; Evolve Growlithe
	const DEX_HOUNDOUR   ; 79 ; Cinnabar Mansion 1F/2F/3F/B1F
	const DEX_HOUNDOOM   ; 80 ; Cinnabar Mansion B1F
	const DEX_POLIWAG    ; 81 ; Route 10/22/23/28 (Surfing)
	const DEX_POLIWHIRL  ; 82 ; Route 10/22/23/28 (Surfing), Cerulean Cave 1F (Surfing)
	const DEX_POLIWRATH  ; 83 ; Evolve Poliwhirl
	const DEX_POLITOED   ; 84 ; Evolve Poliwhirl
	const DEX_ABRA       ; 85 ; Route 8/24/25
	const DEX_KADABRA    ; 86 ; Cerulean Cave 1F/2F
	const DEX_ALAKAZAM   ; 87 ; Evolve Kadabra
	const DEX_MACHOP     ; 88 ; Route 9/23, Rock Tunnel 1F
	const DEX_MACHOKE    ; 89 ; Victory Road 1F/2F/3F, Silver Cave 2F
	const DEX_MACHAMP    ; 90 ; Evolve Machoke
	const DEX_BELLSPROUT ; 91 ; Route 5/24/25
	const DEX_WEEPINBELL ; 92 ; Route 7(Soaked)/13/14
	const DEX_VICTREEBEL ; 93 ; Evolve Weepinbell
	const DEX_TENTACOOL  ; 94 ; Route 19/20/26/27 (Surfing)
	const DEX_TENTACRUEL ; 95 ; Route 19/20/26/27 (Surfing)
	const DEX_GEODUDE    ; 96 ; Route 9, Mt. Moon 1F/B1F/B2F, Rock Tunnel 1F/B1F
	const DEX_GRAVELER   ; 97 ; Rock Tunnel 1F/B1F, Victory Road 1F/2F/3F, Silver Cave 1F/2F
	const DEX_GOLEM      ; 98 ; Evolve Graveler
	const DEX_WHISMUR    ; 99 ; Route 26/27, Mt. Moon 1F/B1F/B2F
	const DEX_LOUDRED    ; 100 ; Rock Tunnel B1F
	const DEX_EXPLOUD    ; 101 ; Cerulean Cave 2F, Silver Cave 1F
	const DEX_CROAGUNK   ; 102 ; Route 15/17/18, Tohjo Falls
	const DEX_TOXICROAK  ; 103 ; Evolve Croagunk
	const DEX_PONYTA     ; 104 ; Route 16/17/18/26/27, Cinnabar Mansion 1F
	const DEX_RAPIDASH   ; 105 ; Route 28
	const DEX_SALANDIT   ; 106 ; Route 15/17/18, Tohjo Falls
	const DEX_SALAZZLE   ; 107 ; Evolve Salandit
	const DEX_SLOWPOKE   ; 108 ; Route 12/13 (Surfing), Safari Zone East (Surfing), Tohjo Falls
	const DEX_SLOWBRO    ; 109 ; Route 12/13 (Surfing), Cerulean Cave 1F (Surfing)
	const DEX_SLOWKING   ; 110 ; Cerulean Cave B1F (Surfing)
	const DEX_MAGNEMITE  ; 111 ; Route 10, Power Plant
	const DEX_MAGNETON   ; 112 ; Power Plant, Cerulean Cave B1F
	const DEX_MAGNEZONE  ; 113 ; Evolve Magneton
	const DEX_FARFETCHD  ; 114 ; Route 12/13/14
	const DEX_DODUO      ; 115 ; Route 16/17/18/26/27
	const DEX_DODRIO     ; 116 ; Route 23/28
	const DEX_MURKROW    ; 117 ; Route 7/15/16
	const DEX_HONCHKROW  ; 118 ; Evolve Murkrow
	const DEX_SKARMORY   ; 119 ; Route 12/13/14/15
	const DEX_SEEL       ; 120 ; Route 19/20, Seafoam Islands 1F/B1F/B2F/B3F (Surfing)/B4F (Surfing)
	const DEX_DEWGONG    ; 121 ; Seafoam Islands B4F (Surfing)
	const DEX_SNEASEL    ; 122 ; Route 28, Seafoam Islands 1F/B1F/B2F/B3F/B4F, Cerulean Cave B1F
	const DEX_WEAVILE    ; 123 ; Evolve Sneasel
	const DEX_SWINUB     ; 124 ; Seafoam Islands 1F/B1F/B2F/B3F
	const DEX_PILOSWINE  ; 125 ; Seafoam Islands B3F, Cerulean Cave B1F
	const DEX_MAMOSWINE  ; 126 ; Evolve Piloswine
	const DEX_GRIMER     ; 127 ; Route 16/17/18
	const DEX_MUK        ; 128 ; Cinnabar Mansion 1F/2F/3F/B1F
	const DEX_SHELLDER   ; 129 ; Safari Zone Center/West (Surfing), Seafoam Islands B3F/B4F (Surfing)
	const DEX_CLOYSTER   ; 130 ; Silver Cave 2F (Surfing)
	const DEX_TURBAN     ; 131 ; Safari Zone East (Surfing), Super Rod (Safari Zone Center/East/North/West)
	const DEX_GASTLY     ; 132 ; Pokemon Tower 3F/4F/5F/6F/7F
	const DEX_HAUNTER    ; 133 ; Pokemon Tower 3F/4F/6F/7F, Cerulean Cave B1F
	const DEX_GENGAR     ; 134 ; Evolve Haunter
	const DEX_DUSKULL    ; 135 ; Pokemon Tower 3F/4F/5F/6F/7F
	const DEX_DUSCLOPS   ; 136 ; Pokemon Tower 5F/7F, Silver Cave 1F/2F
	const DEX_DUSKNOIR   ; 137 ; Evolve Dusclops
	const DEX_LITWICK    ; 138 ; Pokemon Tower 3F/4F/5F/6F/7F
	const DEX_LAMPENT    ; 139 ; Cinnabar Mansion 3F
	const DEX_CHANDELURE ; 140 ; Evolve Lampent
	const DEX_ONIX       ; 141 ; Diglett's Cave, Rock Tunnel 1F/B1F, Victory Road 1F/3F, Silver Cave 1F/2F
	const DEX_STEELIX    ; 142 ; Evolve Onix
	const DEX_GLIGAR     ; 143 ; Safari Zone Center/East, Silver Cave 1F
	const DEX_GLISCOR    ; 144 ; Evolve Gligar
	const DEX_DROWZEE    ; 145 ; Route 11/21
	const DEX_HYPNO      ; 146 ; Cerulean Cave 1F/B1F
	const DEX_KRABBY     ; 147 ; Seafoam Islands 1F/B1F/B4F
	const DEX_KINGLER    ; 148 ; Seafoam Islands B3F/B4F
	const DEX_VOLTORB    ; 149 ; Route 10, Power Plant
	const DEX_ELECTRODE  ; 150 ; Cerulean Cave B1F/Static encounters in Power Plant
	const DEX_EXEGGCUTE  ; 151 ; Route 21, Safari Zone Center/East/North
	const DEX_EXEGGUTOR  ; 152 ; Evolve Exeggcute
	const DEX_CUBONE     ; 153 ; Rock Tunnel 1F/B1F, Pokemon Tower 3F/5F/7F
	const DEX_MAROWAK    ; 154 ; Safari Zone East, Victory Road 1F/2F/3F
	const DEX_MAWILE     ; 155 ; Rock Tunnel 1F/B1F, Victory Road 2F/3F
	const DEX_TRAPINCH   ; 156 ; Diglett's Cave
	const DEX_VIBRAVA    ; 157 ; Safari Zone East, Cerulean Cave 2F
	const DEX_FLYGON     ; 158 ; Evolve Vibrava
	const DEX_NOIBAT     ; 159 ; Rock Tunnel 1F/B1F, Tohjo Falls, Cerulean Cave 1F, Silver Cave 2F
	const DEX_NOIVERN    ; 160 ; Evolve Noibat
	const DEX_TYROGUE    ; 161 ; Route 9/23
	const DEX_HITMONLEE  ; 162 ; Victory Road 1F/Reward for clearing Fighting Dojo
	const DEX_HITMONCHAN ; 163 ; Victory Road 2F/Reward for clearing Fighting Dojo
	const DEX_HITMONTOP  ; 164 ; Victory Road 3F/Reward for clearing Fighting Dojo
	const DEX_LICKITUNG  ; 165 ; Safari Zone East/West
	const DEX_LICKILICKY ; 166 ; Evolve Lickitung
	const DEX_KOFFING    ; 167 ; Cinnabar Mansion 1F/2F/3F/B1F
	const DEX_WEEZING    ; 168 ; Cinnabar Mansion 3F
	const DEX_RHYHORN    ; 169 ; Rock Tunnel 1F, Safari Zone Center/East/North, Victory Road 2F/3F
	const DEX_RHYDON     ; 170 ; Cerulean Cave 2F
	const DEX_RHYPERIOR  ; 171 ; Evolve Rhydon
	const DEX_HAPPINY    ; 172 ; Route 12
	const DEX_CHANSEY    ; 173 ; Safari Zone Center/East, Cerulean Cave 2F
	const DEX_BLISSEY    ; 174 ; Evolve Chansey
	const DEX_TANGELA    ; 175 ; Route 12/13/21
	const DEX_TANGROWTH  ; 176 ; Evolve Tangela
	const DEX_KANGASKHAN ; 177 ; Safari Zone East/North
	const DEX_HORSEA     ; 178 ; Route 19/20/21 (Surfing), Safari Zone North (Surfing)
	const DEX_SEADRA     ; 179 ; Safari Zone North (Surfing), Cerulean Cave B1F/1F (Surfing)
	const DEX_KINGDRA    ; 180 ; Evolve Seadra
	const DEX_GOLDEEN    ; 181 ; Route 4/24/25 (Surfing), Tohjo Falls (Surfing)
	const DEX_SEAKING    ; 182 ; Route 4/24/25 (Surfing), Tohjo Falls (Surfing), Silver Cave 2F (Surfing)
	const DEX_STARYU     ; 183 ; Route 19/20/21 (Surfing), Seafoam Islands B3F/B4F (Surfing)
	const DEX_STARMIE    ; 184 ; Seafoam Islands B3F (Surfing), Cerulean Cave B1F (Surfing)
	const DEX_MIME_JR    ; 185 ; Route 8
	const DEX_MR_MIME    ; 186 ; Route 21
	const DEX_SCYTHER    ; 187 ; Safari Zone Center/West, Celadon Game Corner prize
	const DEX_SCIZOR     ; 188 ; Evolve Scyther
	const DEX_SMOOCHUM   ; 189 ; Seafoam Islands 1F/B2F/B4F/Celadon Game Corner prize
	const DEX_JYNX       ; 190 ; Seafoam Islands B2F/B4F
	const DEX_ELEKID     ; 191 ; Power Plant/Celadon Game Corner prize
	const DEX_ELECTABUZZ ; 192 ; Power Plant
	const DEX_ELECTIVIRE ; 193 ; Evolve Electabuzz
	const DEX_MAGBY      ; 194 ; Cinnabar Mansion 1F/B1F/Celadon Game Corner prize
	const DEX_MAGMAR     ; 195 ; Cinnabar Mansion 2F/B1F
	const DEX_MAGMORTAR  ; 196 ; Evolve Magmar
	const DEX_PINSIR     ; 197 ; Safari Zone Center/West, Celadon Game Corner prize
	const DEX_HERACROSS  ; 198 ; Safari Zone Center/East/North
	const DEX_TAUROS     ; 199 ; Safari Zone North/West
	const DEX_MILTANK    ; 200 ; Safari Zone North/West
	const DEX_MAGIKARP   ; 201 ; Bill's Garden (Surfing)/Buy from salesman in Route 4 Pokemon Center/Old Rod (Anywhere)
	const DEX_GYARADOS   ; 202 ; Cerulean Cave B1F/1F (Surfing)/Super Rod (Fuchsia City, Cerulean Cave B1F/1F)
	const DEX_LAPRAS     ; 203 ; Seafoam Islands B3F/B4F (Surfing), Cerulean Cave B1F/1F (Surfing)
	const DEX_DITTO      ; 204 ; Route 14/15, Cinnabar Mansion B1F, Bill's Garden, Cerulean Cave B1F/1F/2F
	const DEX_EEVEE      ; 205 ; Bill's Garden/Celadon Mansion Roof House (Gift)
	const DEX_VAPOREON   ; 206 ; Evolve Eevee
	const DEX_JOLTEON    ; 207 ; Evolve Eevee
	const DEX_FLAREON    ; 208 ; Evolve Eevee
	const DEX_ESPEON     ; 209 ; Evolve Eevee
	const DEX_UMBREON    ; 210 ; Evolve Eevee
	const DEX_LEAFEON    ; 211 ; Evolve Eevee
	const DEX_GLACEON    ; 212 ; Evolve Eevee
	const DEX_SYLVEON    ; 213 ; Evolve Eevee
	const DEX_PORYGON    ; 214 ; Celadon Game Corner prize
	const DEX_PORYGON2   ; 215 ; Evolve Porygon
	const DEX_PORYGONZ   ; 216 ; Evolve Porygon2
	const DEX_OMANYTE    ; 217 ; Revive Helix Fossil in Fuchsia City
	const DEX_OMASTAR    ; 218 ; Evolve Omanyte
	const DEX_KABUTO     ; 219 ; Revive Dome Fossil in Fuchsia City
	const DEX_KABUTOPS   ; 220 ; Evolve Kabuto
	const DEX_AERODACTYL ; 221 ; Revive Old Amber in Fuchsia City
	const DEX_MUNCHLAX   ; 222 ; Safari Zone North
	const DEX_SNORLAX    ; 223 ; Silence Bridge near Vermilion City (Static), Cerulean Cave B1F
	const DEX_BONSLY     ; 224 ; Safari Zone West
	const DEX_SUDOWOODO  ; 225 ; Between Celadon City and Cycling Road (Static)
	const DEX_SPIRITOMB  ; 226 ; Lavender Tower 7F (Static)
	const DEX_ARTICUNO   ; 227 ; Seafoam Islands B4F (Static)
	const DEX_ZAPDOS     ; 228 ; Power Plant (Static)
	const DEX_MOLTRES    ; 229 ; Victory Road 2F (Static)
	const DEX_THUFIZER   ; 230 ; Gift from Cara Liss in Cinnabar Lab after encountering all three Legendary Birds
	const DEX_REGIROCK   ; 231
	const DEX_REGICE     ; 232
	const DEX_REGISTEEL  ; 233
	const DEX_SKELETOPS  ; 234 ; Pewter Museum after reviving any fossil
	const DEX_OSSIDACTYL ; 235 ; Pewter Museum after reviving any fossil
	const DEX_DRATINI    ; 236 ; Safari Zone Center/West (Surfing), Bill's Garden (Surfing), Silver Cave 2F (Surfing)/Celadon Game Corner prize
	const DEX_DRAGONAIR  ; 237 ; Bill's Garden (Surfing), Cerulean Cave B1F/1F (Surfing)
	const DEX_DRAGONITE  ; 238 ; Evolve Dragonair
	const DEX_LARVITAR   ; 239 ; Victory Road 2F, Silver Cave 1F/Celadon Game Corner prize
	const DEX_PUPITAR    ; 240 ; Silver Cave 1F
	const DEX_TYRANITAR  ; 241 ; Evolve Pupitar
	const DEX_BAGON      ; 242 ; Victory Road 3F, Silver Cave 2F/Celadon Game Corner prize
	const DEX_SHELGON    ; 243 ; Silver Cave 2F
	const DEX_SALAMENCE  ; 244 ; Evolve Shelgon
	const DEX_BELDUM     ; 245 ; Tohjo Falls
	const DEX_METANG     ; 246 ; Cerulean Cave 2F
	const DEX_METAGROSS  ; 247 ; Evolve Metang
	const DEX_REGIGIGAS  ; 248
	const DEX_MEWTWO     ; 249 ; Cerulean Cave B1F (Static)
	const DEX_MEW        ; 250
DEF DIPLOMA_POKEMON EQU const_value - 1
	const DEX_YOSHI      ; 251
	const DEX_MISSINGNO  ; 252 ; Glitch City

DEF NUM_POKEMON EQU const_value - 1

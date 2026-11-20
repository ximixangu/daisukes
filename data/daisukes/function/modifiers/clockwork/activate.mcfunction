# Clockwork: una clau de corda a l'esquena; la molla s'esgota (mes quan et mous) i et fa anar lent, fins que et clava.
# Gira't cap a la dreta per donar-li corda. Plena: temps lliure (#free); si continues girant, es trenca. Els valors, a VALORS.
#  daisukes.cw: globals, numero del jugador i amo de la clau i dels rellotges   daisukes.cw_s: corda (0-24000)   daisukes.cw_y: gir anterior
#  daisukes.cw_h: temps lliure   daisukes.cw_o: girat de mes   daisukes.cw_t: nivell aplicat   daisukes.cw_v: aspecte aplicat   daisukes.cw_k: pas de la clau
#  daisukes.cw_c: girat per al proxim clic   daisukes.cw_l: ultim tick vist   daisukes.cw_wk, daisukes.cw_sr, daisukes.cw_sw, daisukes.cw_j: estadistiques (caminar, correr, nedar, saltar)
scoreboard objectives add daisukes.cw dummy
scoreboard objectives add daisukes.cw_s dummy
scoreboard objectives add daisukes.cw_y dummy
scoreboard objectives add daisukes.cw_h dummy
scoreboard objectives add daisukes.cw_o dummy
scoreboard objectives add daisukes.cw_t dummy
scoreboard objectives add daisukes.cw_v dummy
scoreboard objectives add daisukes.cw_k dummy
scoreboard objectives add daisukes.cw_c dummy
scoreboard objectives add daisukes.cw_l dummy
scoreboard objectives add daisukes.cw_wk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add daisukes.cw_sr minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add daisukes.cw_sw minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add daisukes.cw_j minecraft.custom:minecraft.jump
scoreboard players set #now daisukes.cw 0
scoreboard players set #sec daisukes.cw 0
scoreboard players set #ids daisukes.cw 0
scoreboard players set #mult daisukes.cw 10
scoreboard players set #intro daisukes.cw 100
scoreboard players set #2 daisukes.cw 2
scoreboard players set #3 daisukes.cw 3
scoreboard players set #5 daisukes.cw 5
scoreboard players set #6 daisukes.cw 6
scoreboard players set #8 daisukes.cw 8
scoreboard players set #10 daisukes.cw 10
scoreboard players set #12 daisukes.cw 12
scoreboard players set #15 daisukes.cw 15
scoreboard players set #24 daisukes.cw 24
scoreboard players set #40 daisukes.cw 40
scoreboard players set #240 daisukes.cw 240
scoreboard players set #400 daisukes.cw 400
scoreboard players set #450 daisukes.cw 450
scoreboard players set #1000 daisukes.cw 1000
scoreboard players set #1200 daisukes.cw 1200

# ==================== VALORS (CLOCKWORK.md) ====================
# Com de pressa es gasta, en percentatge (100: quiet, de plena a res en 2 minuts; 250: 2,5 vegades mes de pressa; 0: no es gasta)
scoreboard players set #drain daisukes.cw 350
# Temps lliure (la barra verda) amb la corda plena, en ticks (400 = 20 s; minim 10). Al principi, compta des que surt la clau
scoreboard players set #free daisukes.cw 60
# Clavat: el mal de cada grinyol, en desenes (20 = 2, un cor; 0: cap), i cada quants ticks grinyola (40 = 2 s)
scoreboard players set #frozen daisukes.cw 20
scoreboard players set #frozen_t daisukes.cw 10
# Passar-se de corda: el mal quan es trenca, en desenes (40 = 4, dos cors; 0: cap)
scoreboard players set #snap daisukes.cw 40
# ================================================================

# Si algun valor esta fora de rang, es corregeix sol
execute if score #drain daisukes.cw matches ..-1 run scoreboard players set #drain daisukes.cw 0
execute if score #drain daisukes.cw matches 10001.. run scoreboard players set #drain daisukes.cw 10000
execute unless score #free daisukes.cw matches 10.. run scoreboard players set #free daisukes.cw 10
execute if score #frozen daisukes.cw matches ..-1 run scoreboard players set #frozen daisukes.cw 0
execute unless score #frozen_t daisukes.cw matches 1.. run scoreboard players set #frozen_t daisukes.cw 40
execute if score #snap daisukes.cw matches ..-1 run scoreboard players set #snap daisukes.cw 0
# La campaneta de la corda plena: les tres notes de despres, als 3, 6 i 9 ticks
scoreboard players operation #f3 daisukes.cw = #free daisukes.cw
scoreboard players remove #f3 daisukes.cw 3
scoreboard players operation #f6 daisukes.cw = #free daisukes.cw
scoreboard players remove #f6 daisukes.cw 6
scoreboard players operation #f9 daisukes.cw = #free daisukes.cw
scoreboard players remove #f9 daisukes.cw 9
execute store result storage daisukes:clockwork cfg.frozen.d double 0.1 run scoreboard players get #frozen daisukes.cw
execute store result storage daisukes:clockwork cfg.snap.d double 0.1 run scoreboard players get #snap daisukes.cw

# Cadascu: un numero, la seva barra i la corda plena
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] run function daisukes:modifiers/clockwork/join

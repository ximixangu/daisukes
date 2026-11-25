# Laser Eyes: a cada jugador li surten dos lasers dels ulls, sempre, fins on mira (fins a #range blocs). El que mira
# fixament #ignite ticks s'encen: un bloc, un mob o un altre jugador. Els seus lasers els veuen els altres (i ell en
# F5), pero no ell en primera persona (beam/update)
#  daisukes.le: valors globals (#...)
#  daisukes.le_id: numero de cada jugador i de cada mob que algu ha mirat; als lasers i a la marca, el del seu amo
#  daisukes.le_tgt: el que escalfa cada jugador: numero del mob o jugador, 0 un bloc (hi ha la seva marca) o -1 res
#  daisukes.le_heat: ticks que fa que el jugador mira el mateix
#  daisukes.le_len: llargada dels seus lasers l'ultim cop que es van estirar (vuitens de bloc)
scoreboard objectives add daisukes.le dummy
scoreboard objectives add daisukes.le_id dummy
scoreboard objectives add daisukes.le_tgt dummy
scoreboard objectives add daisukes.le_heat dummy
scoreboard objectives add daisukes.le_len dummy
scoreboard players set #2 daisukes.le 2
scoreboard players set #3 daisukes.le 3
scoreboard players set #4 daisukes.le 4
scoreboard players set #8 daisukes.le 8

# =====================================================================
#  CONFIGURACIO
# =====================================================================
# Abast dels lasers, en blocs (8-256)
scoreboard players set #range daisukes.le 128
# Ticks mirant el mateix fins que s'encen (20 = 1 s; 8-200)
scoreboard players set #ignite daisukes.le 8
# =====================================================================

execute if score #range daisukes.le matches ..7 run scoreboard players set #range daisukes.le 8
execute if score #range daisukes.le matches 257.. run scoreboard players set #range daisukes.le 256
execute if score #ignite daisukes.le matches ..7 run scoreboard players set #ignite daisukes.le 8
execute if score #ignite daisukes.le matches 201.. run scoreboard players set #ignite daisukes.le 200
scoreboard players operation #reach daisukes.le = #range daisukes.le
scoreboard players operation #reach daisukes.le *= #8 daisukes.le
# A 3/4 de l'escalfada, l'espetec d'avis
scoreboard players operation #warn daisukes.le = #ignite daisukes.le
scoreboard players operation #warn daisukes.le *= #3 daisukes.le
scoreboard players operation #warn daisukes.le /= #4 daisukes.le
scoreboard players set #time daisukes.le 0

# Restes d'una activacio anterior (si no es va desactivar)
kill @e[tag=daisukes.le,type=!minecraft:player]
tag @a remove daisukes.le_me
tag @a remove daisukes.le_ghost

# Entrada: els ulls es carreguen durant 1.5 s (so del raig del guardia) i despres s'encenen (tick)
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 1 1.3

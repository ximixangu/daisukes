scoreboard objectives add daisukes.ender_step dummy
# Bloc (x, z) on era cada jugador el tick anterior
scoreboard objectives add daisukes.ender_step_x dummy
scoreboard objectives add daisukes.ender_step_z dummy

# =====================================================================
#  CONFIGURACIO
# =====================================================================
# Blocs que se salta en trepitjar el del davant, caminant i corrent (minim 1)
scoreboard players set #walk daisukes.ender_step 1
scoreboard players set #run daisukes.ender_step 2
# Espera entre salts amunt, en ticks (20 = 1 s)
scoreboard players set #jump daisukes.ender_step 8
# Espera entre avisos de "per aqui no", en ticks
scoreboard players set #bump daisukes.ender_step 10
# Quants blocs pot baixar d'un salt, en negatiu (-3: el maxim sense mal de caiguda)
scoreboard players set #drop daisukes.ender_step -3
# =====================================================================

# Entrada: cada jugador s'envolta de purpurina d'End
execute as @e[type=player,gamemode=!spectator] at @s run function daisukes:modifiers/ender_step/intro

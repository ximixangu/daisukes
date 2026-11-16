scoreboard players add #time daisukes.roots 1
execute if score #time daisukes.roots matches 1600 run scoreboard players set #every daisukes.roots 440
execute if score #time daisukes.roots matches 3200 run scoreboard players set #every daisukes.roots 300

# Animacions que s'acaben (arrels que s'enfonsen, cordes que es retiren, l'entrada)
execute as @e[type=minecraft:block_display,tag=daisukes.roots_dying] run function daisukes:modifiers/roots/dying

# Cada jugador: com es mou, i la seva agafada (si l'agafen o ja esta lligat)
scoreboard players set #busy daisukes.roots 0
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator] at @s run function daisukes:modifiers/roots/player
# Agafades d'algu que ja no hi es (mort, creatiu, espectador, desconnectat): les seves arrels es trenquen,
# i si es a la partida (mort, creatiu...) queda deslligat ara; si s'ha desconnectat, quan torni
execute as @e[type=minecraft:marker,tag=daisukes.roots_center] run function daisukes:modifiers/roots/orphan
execute as @a[tag=daisukes.roots_tied] unless score @s daisukes.roots_z = #time daisukes.roots run function daisukes:modifiers/roots/unbind

# Ningu agafat: s'acaba la tanda, i compte enrere per a la seguent (que surt a tothom alhora)
execute if score #busy daisukes.roots matches 0 if score #round daisukes.roots matches 1 run function daisukes:modifiers/roots/round_end
execute if score #busy daisukes.roots matches 0 run function daisukes:modifiers/roots/idle

# El fil i l'escombrada d'ecos orfes van cada 2 ticks, quan #clock val 0
scoreboard players add #clock daisukes.ek 1
execute if score #clock daisukes.ek matches 2.. run scoreboard players set #clock daisukes.ek 0

# Ecos acabats de neixer: quan ja son invisibles es fan grans (vegeu echo/make)
execute as @e[type=minecraft:mannequin,tag=daisukes.ek_new] run function daisukes:modifiers/ekko/echo/grow

execute as @e[type=minecraft:player] at @s run function daisukes:modifiers/ekko/player
execute if score #clock daisukes.ek matches 0 run function daisukes:modifiers/ekko/sweep

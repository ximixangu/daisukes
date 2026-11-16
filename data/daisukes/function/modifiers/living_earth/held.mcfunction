# Com a cada bloc posat, al seu centre. Ja no hi es (l'han trencat, ha caigut...): fora l'avis. Si no se sap de qui es
# (d'una partida d'abans, d'un chunk que no estava carregat), es queda on es
execute if block ~ ~ ~ #daisukes:living_earth/clear run return run function daisukes:modifiers/living_earth/unplace
execute unless score @s daisukes.earth matches 1.. run return run function daisukes:modifiers/living_earth/unplace
scoreboard players remove @s daisukes.earth_t 1
execute if score @s daisukes.earth_t matches 20 as @e[type=minecraft:block_display,tag=daisukes.earth_shell,distance=..0.01] run data merge entity @s {block_state: {Name: "minecraft:red_stained_glass"}}
execute if score @s daisukes.earth_t matches ..0 run function daisukes:modifiers/living_earth/give_back

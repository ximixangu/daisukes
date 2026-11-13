# Com a jugador, als seus peus. Prop d'alguna jeb_: compte a zero (abans el compte era compartit entre
# tots els jugadors i no es reiniciava mai)
execute if entity @e[type=minecraft:sheep,tag=daisukes.jeb_sheep,distance=..8] run return run scoreboard players set @s daisukes.jeb 0

scoreboard players add @s daisukes.jeb 1
execute if score @s daisukes.jeb matches 20.. run function daisukes:modifiers/jeb/punish

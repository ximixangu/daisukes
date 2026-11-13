# Animals de granja (#daisukes:kamikaze) a menys de 15 blocs d'algu s'encenen. Les ovelles de jeb_ no
execute at @e[type=minecraft:player,gamemode=!spectator] as @e[type=#daisukes:kamikaze,tag=!daisukes.kamikaze,tag=!daisukes.jeb_sheep,distance=..15] run function daisukes:modifiers/explosive_mob/arm

# Mentre porten la TNT a sobre, fumegen (es veu quin esclatara)
execute as @e[tag=daisukes.kamikaze] at @s on passengers if entity @s[type=minecraft:tnt] run particle minecraft:smoke ~ ~1 ~ 0.25 0.3 0.25 0.01 3

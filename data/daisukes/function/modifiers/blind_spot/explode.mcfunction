# Esclat: foc, fum i espetec. Mal segons la distancia (3,5 cors al centre, fins a 3,5 blocs) i una empenta
kill @e[type=minecraft:block_display,tag=daisukes.bspot_pop,distance=..0.6]
particle minecraft:explosion ~ ~0.5 ~ 0.4 0.3 0.4 0 2 force @a[distance=..64]
particle minecraft:flame ~ ~0.3 ~ 0.15 0.15 0.15 0.2 30 force @a[distance=..64]
particle minecraft:lava ~ ~0.2 ~ 0.2 0.1 0.2 0 6 force @a[distance=..64]
particle minecraft:large_smoke ~ ~0.7 ~ 0.4 0.3 0.4 0.03 14 force @a[distance=..64]
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1.5 1.15
execute if score @s daisukes.bspot matches 1.. run function daisukes:modifiers/blind_spot/note
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,distance=..1.5] run damage @s 7 minecraft:fireworks at ~ ~ ~
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,distance=1.5..2.5] run damage @s 4 minecraft:fireworks at ~ ~ ~
execute as @e[type=minecraft:player,gamemode=!creative,gamemode=!spectator,distance=2.5..3.5] run damage @s 2 minecraft:fireworks at ~ ~ ~
execute as @e[type=!minecraft:player,type=!#daisukes:non_mob,distance=..1.5] run damage @s 7 minecraft:fireworks at ~ ~ ~
execute as @e[type=!minecraft:player,type=!#daisukes:non_mob,distance=1.5..2.5] run damage @s 4 minecraft:fireworks at ~ ~ ~
execute as @e[type=!minecraft:player,type=!#daisukes:non_mob,distance=2.5..3.5] run damage @s 2 minecraft:fireworks at ~ ~ ~

# Cadena: les carregues a 3,5 blocs s'encenen amb una metxa curta
scoreboard players operation #depth daisukes.bspot = @s daisukes.bspot
scoreboard players add #depth daisukes.bspot 1
execute as @e[type=minecraft:marker,tag=daisukes.bspot,tag=!daisukes.bspot_lit,distance=..3.5] at @s run function daisukes:modifiers/blind_spot/chain
kill @s

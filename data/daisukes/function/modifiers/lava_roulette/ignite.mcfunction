# Ara crema: tots els blocs triats del voltant s'encenen alhora
scoreboard players set #phase daisukes.lava 3
scoreboard players operation #t daisukes.lava = #burn daisukes.lava
data modify storage daisukes:lava curse.act set value "scorch"
bossbar set daisukes:lava color red
execute store result bossbar daisukes:lava max run scoreboard players get #t daisukes.lava
execute store result bossbar daisukes:lava value run scoreboard players get #t daisukes.lava

execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/lava_roulette/field {n: 40, fx: "ember"}
execute as @a at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 0.6 0.8
execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.529732

# La ruleta s'atura: el punter cau en un bloc al voltant d'un jugador i tots els blocs d'aquest tipus seran lava
scoreboard players add #round daisukes.lava 1
function daisukes:modifiers/lava_roulette/pick
execute unless data storage daisukes:lava new run return run function daisukes:modifiers/lava_roulette/miss
data modify storage daisukes:lava curse set value {}
data modify storage daisukes:lava curse.a set from storage daisukes:lava new
data modify storage daisukes:lava curse.b set from storage daisukes:lava new

# A partir de la tirada #double, un segon bloc (si al voltant no n'hi ha cap altre, nomes en crema un)
scoreboard players set #two daisukes.lava 0
scoreboard players set #tries2 daisukes.lava 3
execute if score #round daisukes.lava >= #double daisukes.lava run function daisukes:modifiers/lava_roulette/second

# Noms per als textos: "minecraft:stone" -> "stone" -> {"translate": "block.minecraft.stone"}
data modify storage daisukes:lava curse.na set string storage daisukes:lava curse.a 10
data modify storage daisukes:lava curse.nb set string storage daisukes:lava curse.b 10
function daisukes:modifiers/lava_roulette/announce with storage daisukes:lava curse
tag @a remove daisukes.lava_chosen

# Ta-daa! (acord de Sol amb trompeta; si en son dos, amb campanes)
execute as @a at @s run playsound minecraft:block.note_block.trumpet master @s ~ ~ ~ 0.9 1.059463
execute as @a at @s run playsound minecraft:block.note_block.trumpet master @s ~ ~ ~ 0.9 1.334840
execute as @a at @s run playsound minecraft:block.note_block.trumpet master @s ~ ~ ~ 0.9 1.587401
execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.529732
execute if score #two daisukes.lava matches 1 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1.059463
execute if score #two daisukes.lava matches 1 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1.587401

# Qui ja trepitja un bloc triat ho sent als peus (sizzle); durant l'avis, li fumegen (warm)
data modify storage daisukes:lava curse.act set value "sizzle"
execute as @e[type=minecraft:player,gamemode=!spectator] at @s if predicate daisukes:on_ground unless predicate daisukes:lava_roulette/in_water run function daisukes:modifiers/lava_roulette/on_lava with storage daisukes:lava curse
data modify storage daisukes:lava curse.act set value "warm"

# Avis: 2 s (la primera tirada, 3 s) mentre els blocs s'escalfen
scoreboard players set #phase daisukes.lava 2
scoreboard players operation #t daisukes.lava = #warn daisukes.lava
execute if score #round daisukes.lava matches 1 run scoreboard players add #t daisukes.lava 20
bossbar set daisukes:lava style progress
execute store result bossbar daisukes:lava max run scoreboard players get #t daisukes.lava
execute store result bossbar daisukes:lava value run scoreboard players get #t daisukes.lava

# Avis: els blocs triats s'escalfen (flametes i fum) i es veu on cremara; a qui en trepitja un, li fumegen els peus
execute store result bossbar daisukes:lava value run scoreboard players get #t daisukes.lava
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/lava_roulette/field {n: 6, fx: "heat"}
execute as @e[type=minecraft:player,gamemode=!spectator] at @s if predicate daisukes:on_ground unless predicate daisukes:lava_roulette/in_water run function daisukes:modifiers/lava_roulette/on_lava with storage daisukes:lava curse
execute if score #t daisukes.lava matches 20 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.6 1.587401
execute if score #t daisukes.lava matches ..0 run function daisukes:modifiers/lava_roulette/ignite

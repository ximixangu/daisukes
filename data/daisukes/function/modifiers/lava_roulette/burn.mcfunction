# Crema: brases sobre els blocs de lava, i qui en trepitgi un (a terra i fora de l'aigua) es crema
execute store result bossbar daisukes:lava value run scoreboard players get #t daisukes.lava
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/lava_roulette/field {n: 4, fx: "ember"}
execute as @e[type=minecraft:player,gamemode=!spectator] at @s if predicate daisukes:on_ground unless predicate daisukes:lava_roulette/in_water run function daisukes:modifiers/lava_roulette/on_lava with storage daisukes:lava curse
execute if score #t daisukes.lava matches ..0 run function daisukes:modifiers/lava_roulette/cool

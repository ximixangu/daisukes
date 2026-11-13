# Pujant: corrent d'aire sota els peus i remolí al voltant
execute if entity @s[tag=!icarus_stop] run particle minecraft:small_gust ~ ~-0.2 ~ 0.2 0.1 0.2 0 1
execute if entity @s[tag=!icarus_stop] run particle minecraft:white_smoke ~ ~-0.1 ~ 0.15 0.05 0.15 0.01 2
execute if entity @s[tag=!icarus_stop] run function daisukes:modifiers/icarus/fx_swirl
# (com el joc: sud de -45 a 45, oest de 45 a 135, nord de 135 a -135, est de -135 a -45)
execute if entity @s[y_rotation=-45..45] positioned ~ ~ ~1 if block ~ ~ ~ minecraft:scaffolding run return run function daisukes:modifiers/living_earth/scaf_s
execute if entity @s[y_rotation=45..135] positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:scaffolding run return run function daisukes:modifiers/living_earth/scaf_w
execute if entity @s[y_rotation=135..-135] positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:scaffolding run return run function daisukes:modifiers/living_earth/scaf_n
execute if entity @s[y_rotation=-135..-45] positioned ~1 ~ ~ if block ~ ~ ~ minecraft:scaffolding run return run function daisukes:modifiers/living_earth/scaf_e

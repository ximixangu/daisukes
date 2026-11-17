# Com al creaking que tremola: cada tick, una mica de costat i el cap amunt o avall (tot suma zero). Nomes a terra: si no,
# para (un tp en l'aire el deixaria surant)
scoreboard players remove @s daisukes.heart_s 1
execute unless predicate {condition: "minecraft:entity_properties", entity: "this", predicate: {flags: {is_on_ground: true}}} run return run scoreboard players set @s daisukes.heart_s 0
execute if score @s daisukes.heart_s matches 7 run tp @s ^0.08 ^ ^ ~ ~6
execute if score @s daisukes.heart_s matches 6 run tp @s ^-0.16 ^ ^ ~ ~-12
execute if score @s daisukes.heart_s matches 5 run tp @s ^0.16 ^ ^ ~ ~12
execute if score @s daisukes.heart_s matches 4 run tp @s ^-0.16 ^ ^ ~ ~-12
execute if score @s daisukes.heart_s matches 3 run tp @s ^0.16 ^ ^ ~ ~12
execute if score @s daisukes.heart_s matches 2 run tp @s ^-0.16 ^ ^ ~ ~-12
execute if score @s daisukes.heart_s matches 1 run tp @s ^0.08 ^ ^ ~ ~6

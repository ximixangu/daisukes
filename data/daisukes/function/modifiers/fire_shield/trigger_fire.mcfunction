advancement revoke @s only daisukes:fire_shield/damage_block

summon lightning_bolt ~ ~5 ~

execute align xyz run fill ~-2 ~-1 ~-2 ~2 ~1 ~-1 minecraft:fire replace #minecraft:replaceable
execute align xyz run fill ~-2 ~-1 ~1 ~2 ~1 ~2 minecraft:fire replace #minecraft:replaceable
execute align xyz run fill ~-2 ~-1 ~0 ~-1 ~1 ~0 minecraft:fire replace #minecraft:replaceable
execute align xyz run fill ~1 ~-1 ~0 ~2 ~1 ~0 minecraft:fire replace #minecraft:replaceable

execute align xyz run fill ~ ~-1 ~ ~ ~1 ~ minecraft:air replace minecraft:fire

execute align xyz run fill ~ ~ ~ ~ ~1 ~ minecraft:water replace minecraft:air
execute align xyz run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:water

playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1.0 0.8
particle minecraft:flame ~ ~1 ~ 1.2 0.8 1.2 0.05 60
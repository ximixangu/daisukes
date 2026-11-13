clear @a minecraft:magma_cream[minecraft:custom_data~{hot_potato: 1b}]
execute as @e[type=minecraft:item] if items entity @s contents minecraft:magma_cream[minecraft:custom_data~{hot_potato: 1b}] run kill @s

clear @a *[minecraft:custom_data~{junk: 1b}]
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{junk: 1b}] run kill @s

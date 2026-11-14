# Com al jugador triat, damunt del bloc. Quin bloc es? Es "pica" (loot) amb un pic de netherita amb toc de seda
# dins d'un item_display temporal (a cursable nomes hi ha blocs que aixi es deixen caure a si mateixos)
summon minecraft:item_display ~ ~-1 ~ {Tags: ["daisukes.lava_probe"]}
loot replace entity @n[type=minecraft:item_display,tag=daisukes.lava_probe] contents mine ~ ~-1 ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch": 1}]
data modify storage daisukes:lava new set from entity @n[type=minecraft:item_display,tag=daisukes.lava_probe] item.id
kill @e[type=minecraft:item_display,tag=daisukes.lava_probe]
execute unless data storage daisukes:lava new run return fail

# Per al text "near <jugador>"
tag @s add daisukes.lava_chosen

# El bloc triat esclata: columna de foc i pols del mateix bloc
particle minecraft:flame ~ ~0.6 ~ 0.1 0.6 0.1 0.02 25
particle minecraft:lava ~ ~0.2 ~ 0.2 0 0.2 0 6
function daisukes:modifiers/lava_roulette/landing with storage daisukes:lava

# Com a jugador, als seus peus. L'objecte de la ma surt volant cap on mira, com si l'hagues llançat
summon minecraft:item ~ ~1.3 ~ {Tags: ["daisukes.slip"], PickupDelay: 30, Item: {id: "minecraft:stone", count: 1}}
item replace entity @n[type=minecraft:item,tag=daisukes.slip] contents from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air

# Velocitat: un marker temporal als seus peus i amb el seu gir mesura on queda ^ ^0.1 ^0.35
execute summon minecraft:marker run function daisukes:modifiers/item_drop/aim

tag @e[type=minecraft:item,tag=daisukes.slip] remove daisukes.slip
playsound minecraft:block.honey_block.slide player @a ~ ~ ~ 0.8 1.2

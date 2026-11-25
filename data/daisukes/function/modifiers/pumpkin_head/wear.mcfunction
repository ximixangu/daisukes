# Com a jugador sense la carbassa, on es. Un item_display ajudant (ph_tmp) fa una carbassa nova amb el que porta al cap
# a dins (si no porta res, buida), la carbassa passa al cap i l'ajudant desapareix. Si l'ajudant no es pogues crear,
# no canviaria res: ho tornaria a provar el tick seguent
summon minecraft:item_display ~ ~ ~ {Tags: ["daisukes.ph_tmp"], item: {id: "minecraft:carved_pumpkin", count: 1, components: {"minecraft:enchantments": {"minecraft:binding_curse": 1}, "minecraft:max_stack_size": 1, "minecraft:custom_data": {daisukes_pumpkin: {}}}}}
data modify entity @n[type=minecraft:item_display,tag=daisukes.ph_tmp] item.components."minecraft:custom_data".daisukes_pumpkin.helmet set from entity @s equipment.head
item replace entity @s armor.head from entity @n[type=minecraft:item_display,tag=daisukes.ph_tmp] contents
kill @n[type=minecraft:item_display,tag=daisukes.ph_tmp]

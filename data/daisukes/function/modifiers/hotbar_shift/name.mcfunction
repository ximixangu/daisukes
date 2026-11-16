# Nom tal com el veuria el jugador, amb el color de la raresa (src és al buffer)
scoreboard players set #rar daisukes.shift 0
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[rarity=uncommon] run scoreboard players set #rar daisukes.shift 1
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[rarity=rare] run scoreboard players set #rar daisukes.shift 2
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[rarity=epic] run scoreboard players set #rar daisukes.shift 3
# Encantat: puja un grau, com fa el joc
execute if score #rar daisukes.shift matches 2 if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[enchantments~[{}]] run scoreboard players set #rar daisukes.shift 3
execute if score #rar daisukes.shift matches ..1 if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents *[enchantments~[{}]] run scoreboard players set #rar daisukes.shift 2
data modify storage daisukes:shift look.n set value {text:"",color:"white",italic:0b,extra:[]}
execute if score #rar daisukes.shift matches 1 run data modify storage daisukes:shift look.n.color set value "yellow"
execute if score #rar daisukes.shift matches 2 run data modify storage daisukes:shift look.n.color set value "aqua"
execute if score #rar daisukes.shift matches 3 run data modify storage daisukes:shift look.n.color set value "light_purple"

# Canviat a l'enclusa: el seu nom, en cursiva
execute if data storage daisukes:shift src.components."minecraft:custom_name" run data modify storage daisukes:shift look.n.italic set value 1b
execute if data storage daisukes:shift src.components."minecraft:custom_name" run return run data modify storage daisukes:shift look.n.extra append from storage daisukes:shift src.components."minecraft:custom_name"
# Pocions, fletxes amb efecte, escuts pintats i brúixoles d'imant: el joc en treu el nom del contingut
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents #daisukes:hotbar_shift/potions run return run function daisukes:modifiers/hotbar_shift/name_potion
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents minecraft:shield[base_color] run data modify storage daisukes:shift args.e set from storage daisukes:shift src.components."minecraft:base_color"
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents minecraft:shield[base_color] run return run function daisukes:modifiers/hotbar_shift/name_shield with storage daisukes:shift args
execute if items entity @e[type=item_display,tag=daisukes.shift_buf,limit=1] contents minecraft:compass[lodestone_tracker] run return run data modify storage daisukes:shift look.n.extra append value {translate:"item.minecraft.lodestone_compass"}
# Nom propi o el de per defecte de l'objecte
execute if data storage daisukes:shift src.components."minecraft:item_name" run return run data modify storage daisukes:shift look.n.extra append from storage daisukes:shift src.components."minecraft:item_name"
data modify storage daisukes:shift args.k set string storage daisukes:shift src.id 10
function daisukes:modifiers/hotbar_shift/name_id with storage daisukes:shift args

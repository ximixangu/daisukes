# Com a corona que s'acaba de posar sobre el cap de l'hereu (king_dest): visca el Rei!
tag @s remove daisukes.king_fly
tag @s remove daisukes.king_vacant
tag @s remove daisukes.king_worn
tag @s add daisukes.king_reign
scoreboard players set @s daisukes.king 0
data merge entity @s {text: {text: "♚", color: "#FFC83D", bold: true}}

# Per al titol si un dia desapareix sense morir (crown/vanished)
execute if entity @e[type=minecraft:creeper,tag=daisukes.king_dest] run tag @s add daisukes.king_creeper
execute if entity @e[type=minecraft:silverfish,tag=daisukes.king_dest] run tag @s add daisukes.king_silverfish
execute if entity @e[type=minecraft:creaking,tag=daisukes.king_dest] run tag @s add daisukes.king_creaking

execute store result storage daisukes:king arg.id int 1 run scoreboard players get @s daisukes.king_id
execute as @e[tag=daisukes.king_dest] run function daisukes:modifiers/king/ruler/crown

playsound minecraft:item.armor.equip_gold master @a[distance=..32] ~ ~ ~ 1.5 0.9
particle minecraft:wax_on ~ ~0.4 ~ 0.4 0.3 0.4 0 20
particle minecraft:end_rod ~ ~0.4 ~ 0.1 0.1 0.1 0.08 10
tag @s remove daisukes.king_dirge
tag @s add daisukes.king_fanfare
scoreboard players set @s daisukes.king_fx 17
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest

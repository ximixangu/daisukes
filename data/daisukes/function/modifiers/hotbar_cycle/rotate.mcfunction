summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["daisukes.temp_holder"]}

item replace entity @e[type=armor_stand,tag=daisukes.temp_holder,limit=1] armor.head from entity @s hotbar.8

item replace entity @s hotbar.8 from entity @s hotbar.7
item replace entity @s hotbar.7 from entity @s hotbar.6
item replace entity @s hotbar.6 from entity @s hotbar.5
item replace entity @s hotbar.5 from entity @s hotbar.4
item replace entity @s hotbar.4 from entity @s hotbar.3
item replace entity @s hotbar.3 from entity @s hotbar.2
item replace entity @s hotbar.2 from entity @s hotbar.1
item replace entity @s hotbar.1 from entity @s hotbar.0

item replace entity @s hotbar.0 from entity @e[type=armor_stand,tag=daisukes.temp_holder,limit=1] armor.head

kill @e[type=armor_stand,tag=daisukes.temp_holder]
playsound minecraft:item.bundle.drop_contents player @s ~ ~ ~ 0.8 1.4
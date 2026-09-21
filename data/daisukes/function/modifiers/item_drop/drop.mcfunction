playsound minecraft:entity.item.drop player @a ~ ~ ~ 1 1

data modify storage daisukes:temp current_item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air

summon item ~ ~1.2 ~ {Tags:["daisukes.temp_drop"],PickupDelay:30,Item:{id:"minecraft:stone",count:1}}

data modify entity @e[type=item,tag=daisukes.temp_drop,sort=nearest,limit=1] Item set from storage daisukes:temp current_item

summon marker 0.0 0.0 0.0 {Tags:["daisukes.vec"]}
execute positioned 0.0 0.0 0.0 rotated as @s run tp @e[type=marker,tag=daisukes.vec,limit=1] ^ ^0.1 ^0.35

execute store result entity @e[type=item,tag=daisukes.temp_drop,sort=nearest,limit=1] Motion[0] double 0.0001 run data get entity @e[type=marker,tag=daisukes.vec,limit=1] Pos[0] 10000
execute store result entity @e[type=item,tag=daisukes.temp_drop,sort=nearest,limit=1] Motion[1] double 0.0001 run data get entity @e[type=marker,tag=daisukes.vec,limit=1] Pos[1] 10000
execute store result entity @e[type=item,tag=daisukes.temp_drop,sort=nearest,limit=1] Motion[2] double 0.0001 run data get entity @e[type=marker,tag=daisukes.vec,limit=1] Pos[2] 10000

kill @e[type=marker,tag=daisukes.vec]
tag @e[type=item,tag=daisukes.temp_drop,sort=nearest,limit=1] remove daisukes.temp_drop
data remove storage daisukes:temp current_item
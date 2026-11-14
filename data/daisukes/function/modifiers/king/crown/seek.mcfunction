# Com a corona sense Rei quan ja s'ha acabat l'interregne (cada segon fins que en troba un): un monstre a l'atzar
# a prop (24 blocs a cada costat, 10 amunt i avall) que no porti cap altre monstre a sobre ni cremi en sera
# l'hereu, i la corona hi vola
execute positioned ~-24 ~-10 ~-24 run tag @e[type=#daisukes:king/court,dx=48,dy=20,dz=48,tag=!daisukes.king,tag=!daisukes.king_heir,tag=!daisukes.king_reject,predicate=!daisukes:king/carrier,predicate=!daisukes:king/burning,sort=random,limit=1] add daisukes.king_pick
execute unless entity @e[tag=daisukes.king_pick] run return 0

scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id
execute as @e[tag=daisukes.king_pick] run function daisukes:modifiers/king/ruler/heir

# Si la portava algu, li marxa del cap
execute as @a[tag=daisukes.king_wearer] if score @s daisukes.king_id = #cid daisukes.king_id run function daisukes:modifiers/king/player/unwear
tag @s remove daisukes.king_worn
tag @s remove daisukes.king_vacant
tag @s add daisukes.king_fly
scoreboard players set @s daisukes.king_t 0
data merge entity @s {text: {text: "♚", color: "#FFC83D", bold: true}}
playsound minecraft:entity.allay.item_thrown master @a[distance=..32] ~ ~ ~ 1 0.7

# Com a l'encadenat. Floten com un globus lligat: la gravetat (atribut) es calcula cada tick perque vagi cap a
# 3,2 blocs per sobre de l'ancora, amb un balanceig suau (+-0,4 blocs cada 6 s). Res de lentitud ni velocitat (zoom)
#  g = 0,002 x (alcada - objectiu) + 0,05 x velocitat, entre -0,025 i 0,025 (la normal es 0,08). Tot en milionesimes
execute store result score #y daisukes.anchor run data get entity @s Pos[1] 1000
# Balanceig: un cercle (s, c entre -1000 i 1000) que gira 52/1000 cada tick, estable amb enters
scoreboard players operation #ds daisukes.anchor = #c daisukes.anchor
scoreboard players operation #ds daisukes.anchor *= #52 daisukes.anchor
scoreboard players operation #ds daisukes.anchor /= #1000 daisukes.anchor
scoreboard players operation #s daisukes.anchor += #ds daisukes.anchor
scoreboard players operation #dc daisukes.anchor = #s daisukes.anchor
scoreboard players operation #dc daisukes.anchor *= #52 daisukes.anchor
scoreboard players operation #dc daisukes.anchor /= #1000 daisukes.anchor
scoreboard players operation #c daisukes.anchor -= #dc daisukes.anchor
scoreboard players operation #goal daisukes.anchor = #s daisukes.anchor
scoreboard players operation #goal daisukes.anchor *= #2 daisukes.anchor
scoreboard players operation #goal daisukes.anchor /= #5 daisukes.anchor
scoreboard players operation #goal daisukes.anchor += #ry daisukes.anchor
scoreboard players add #goal daisukes.anchor 3200
scoreboard players operation #g daisukes.anchor = #y daisukes.anchor
scoreboard players operation #g daisukes.anchor -= #goal daisukes.anchor
scoreboard players operation #g daisukes.anchor *= #2 daisukes.anchor
scoreboard players operation #v daisukes.anchor = #y daisukes.anchor
scoreboard players operation #v daisukes.anchor -= #last daisukes.anchor
scoreboard players operation #v daisukes.anchor *= #50 daisukes.anchor
scoreboard players operation #g daisukes.anchor += #v daisukes.anchor
scoreboard players operation #last daisukes.anchor = #y daisukes.anchor
execute if score #g daisukes.anchor matches 25001.. run scoreboard players set #g daisukes.anchor 25000
execute if score #g daisukes.anchor matches ..-25001 run scoreboard players set #g daisukes.anchor -25000
# Modificador add_value = g - 0,08
scoreboard players remove #g daisukes.anchor 80000
execute store result storage daisukes:anchor g.grav double 0.000001 run scoreboard players get #g daisukes.anchor
attribute @s minecraft:gravity modifier remove daisukes:anchor
function daisukes:modifiers/anchor/gravity with storage daisukes:anchor g
# Corda de 7 blocs: mes lluny, l'estira cap a l'ancora
execute unless entity @e[type=minecraft:marker,tag=daisukes.anchor_root,distance=..7] run function daisukes:modifiers/anchor/pull

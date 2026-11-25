# Com al jugador que mira una paret, al punt de just davant de la superficie. El foc aniria al bloc d'aquest punt.
# Si es dins seu (mira de cara la paret que te enganxada o el terra que trepitja), no escalfa res
scoreboard players set #kind daisukes.le 1
execute align xyz if entity @s[dx=0,dy=0,dz=0] run return run function daisukes:modifiers/laser_eyes/heat/none
# El mateix bloc que abans? La seva marca hi es. Si no, la marca hi va i comenca de zero
scoreboard players set #same daisukes.le 0
execute if score #tgt daisukes.le matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=daisukes.le_spot,distance=..0.1] if score @s daisukes.le_id = #me daisukes.le run scoreboard players set #same daisukes.le 1
execute if score #same daisukes.le matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function daisukes:modifiers/laser_eyes/heat/spot
scoreboard players add #heat daisukes.le 1
function daisukes:modifiers/laser_eyes/heat/fx
execute if score #heat daisukes.le >= #ignite daisukes.le align xyz positioned ~0.5 ~0.5 ~0.5 run function daisukes:modifiers/laser_eyes/fire/place

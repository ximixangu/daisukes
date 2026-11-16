# El primer bloc solid del raig. Si n'hi havia diversos de possibles (#tie), nomes si es un d'ells
execute if score #tie daisukes.heavy matches 1 unless entity @e[type=minecraft:marker,tag=daisukes.heavy_cand,distance=..0.1] run return 0
return run function daisukes:modifiers/heavy_blocks/found

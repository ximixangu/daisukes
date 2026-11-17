# Un bloc que trepitja (al seu racó de baix): compta i, amb #do 1, un marcador (un de sol per bloc)
scoreboard players add #cols daisukes.weight 1
execute if score #do daisukes.weight matches 1 unless entity @e[type=minecraft:marker,tag=daisukes.weight_col,distance=..0.01] run summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.weight", "daisukes.weight_col"]}

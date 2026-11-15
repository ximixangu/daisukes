execute rotated ~110 0 run function daisukes:modifiers/anchor/shard
execute if score #burst daisukes.anchor matches 2.. rotated ~-110 0 run function daisukes:modifiers/anchor/shard
playsound minecraft:block.chain.hit player @a ~ ~ ~ 0.8 1.5
particle minecraft:block{block_state:"minecraft:iron_chain"} ~ ~ ~ 0.15 0.1 0.15 0 10 force @a[distance=..48]
particle minecraft:electric_spark ~ ~ ~ 0.2 0.1 0.2 0.15 6 force @a[distance=..48]

$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~ minecraft:air
$execute positioned $(x) $(y) $(z) run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.8 1.0
$execute positioned $(x) $(y) $(z) run particle block{block_state:"minecraft:glass"} ~ ~ ~ 0.4 0.4 0.4 0.1 40 force @a
$execute positioned $(x) $(y) $(z) run kill @e[type=marker,tag=daisukes.glass_marker,distance=..0.8,limit=1]
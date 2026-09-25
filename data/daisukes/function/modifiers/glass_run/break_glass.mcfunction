# Se posiciona en las coordenadas exactas $(pos[0]), $(pos[1]), $(pos[2]) guardadas en la cola
$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~ minecraft:air
$execute positioned $(x) $(y) $(z) run playsound minecraft:block.glass.break block @a ~ ~ ~ 0.8 1.0
$execute positioned $(x) $(y) $(z) run kill @e[type=marker,tag=daisukes.glass_marker,distance=..0.8,limit=1]
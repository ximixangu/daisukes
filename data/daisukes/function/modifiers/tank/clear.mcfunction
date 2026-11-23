# Fora les mines (sense esclatar), el fre de girar i les etiquetes. El que no estigui carregat (una mina en un chunk
# llunya, un jugador desconnectat) ho treu leftovers quan torni a ser-ho
kill @e[type=minecraft:block_display,tag=daisukes.tk_mine]
execute as @a[tag=daisukes.tk_turn] run attribute @s minecraft:movement_speed modifier remove daisukes:tank_turn
tag @a remove daisukes.tk_turn
tag @a remove daisukes.tk_sneak
tag @a remove daisukes.tk_hop
tag @a remove daisukes.tk_ground

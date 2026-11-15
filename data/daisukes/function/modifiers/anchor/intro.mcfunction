# Com a cada jugador: sis cadenes en cercle (2,6 blocs), cada una surt 2 ticks despres de l'anterior
execute rotated ~0 0 positioned ^ ^ ^2.6 run function daisukes:modifiers/anchor/intro_chain
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor_t 2
tag @e[type=minecraft:block_display,tag=daisukes.anchor_new] remove daisukes.anchor_new
execute rotated ~60 0 positioned ^ ^ ^2.6 run function daisukes:modifiers/anchor/intro_chain
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor_t 4
tag @e[type=minecraft:block_display,tag=daisukes.anchor_new] remove daisukes.anchor_new
execute rotated ~120 0 positioned ^ ^ ^2.6 run function daisukes:modifiers/anchor/intro_chain
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor_t 6
tag @e[type=minecraft:block_display,tag=daisukes.anchor_new] remove daisukes.anchor_new
execute rotated ~180 0 positioned ^ ^ ^2.6 run function daisukes:modifiers/anchor/intro_chain
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor_t 8
tag @e[type=minecraft:block_display,tag=daisukes.anchor_new] remove daisukes.anchor_new
execute rotated ~240 0 positioned ^ ^ ^2.6 run function daisukes:modifiers/anchor/intro_chain
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor_t 10
tag @e[type=minecraft:block_display,tag=daisukes.anchor_new] remove daisukes.anchor_new
execute rotated ~300 0 positioned ^ ^ ^2.6 run function daisukes:modifiers/anchor/intro_chain
scoreboard players set @e[type=minecraft:block_display,tag=daisukes.anchor_new] daisukes.anchor_t 12
tag @e[type=minecraft:block_display,tag=daisukes.anchor_new] remove daisukes.anchor_new

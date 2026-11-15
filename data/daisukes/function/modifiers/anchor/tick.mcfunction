scoreboard players add #time daisukes.anchor 1
# Cadascu pot trencar com a molt una vegada per tick (si prem Q molt de pressa sobre una pila que brilla, dos objectes
# marcats poden arribar al mateix tick: nomes compta el primer)
tag @a[tag=daisukes.anchor_once] remove daisukes.anchor_once

execute if score #time daisukes.anchor matches 400 run function daisukes:modifiers/anchor/stage {total: 4, every: 500}
execute if score #time daisukes.anchor matches 0 run function daisukes:modifiers/anchor/stage {total: 10, every: 400}

# Objectes nous a terra (abans que res: si algu acaba de llencar el que li brilla, compta ara)
execute as @e[type=minecraft:item,tag=!daisukes.anchor_seen] run function daisukes:modifiers/anchor/item

# 0 espera, 1 cau, 2 la cadena surt, 3 encadenat, 4 s'allibera. Al reves: quan una fase passa a la seguent,
# la seguent comenca al tick que ve
execute if score #phase daisukes.anchor matches 4 run function daisukes:modifiers/anchor/release
execute if score #phase daisukes.anchor matches 3 run function daisukes:modifiers/anchor/held
execute if score #phase daisukes.anchor matches 2 run function daisukes:modifiers/anchor/chain_out
execute if score #phase daisukes.anchor matches 1 run function daisukes:modifiers/anchor/fall
execute if score #phase daisukes.anchor matches 0 run function daisukes:modifiers/anchor/idle

execute as @e[type=minecraft:block_display,tag=daisukes.anchor_ring,tag=daisukes.anchor_pop] run function daisukes:modifiers/anchor/pop_tick
# Cadenes de l'entrada i baules que salten
execute as @e[type=minecraft:block_display,tag=daisukes.anchor_intro] run function daisukes:modifiers/anchor/intro_step
execute as @e[type=minecraft:block_display,tag=daisukes.anchor_shard] run function daisukes:modifiers/anchor/shard_tick
scoreboard players add #sweep daisukes.anchor 1
execute if score #sweep daisukes.anchor matches 20.. run function daisukes:modifiers/anchor/sweep

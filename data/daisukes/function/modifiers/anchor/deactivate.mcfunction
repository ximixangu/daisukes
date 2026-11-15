# Si hi havia algu encadenat, baixa suau; res no queda brillant i fora l'ancora
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] run particle minecraft:poof ~ ~1 ~ 0.4 0.8 0.4 0.02 20 force @a[distance=..48]
execute as @a[tag=daisukes.anchor_p] run function daisukes:modifiers/anchor/restore
execute as @a run function daisukes:modifiers/anchor/unmark_all
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{daisukes_anchor:{}}] run item modify entity @s contents daisukes:anchor/unmark
execute as @e[type=#daisukes:anchor/holders] run function daisukes:modifiers/anchor/sweep_holder
kill @e[tag=daisukes.anchor,type=!minecraft:player]
tag @e[type=minecraft:item,tag=daisukes.anchor_seen] remove daisukes.anchor_seen
tag @a remove daisukes.anchor_m
tag @a remove daisukes.anchor_last
tag @a remove daisukes.anchor_once
bossbar remove daisukes:anchor
scoreboard objectives remove daisukes.anchor
scoreboard objectives remove daisukes.anchor_i
scoreboard objectives remove daisukes.anchor_t
data remove storage daisukes:anchor m
data remove storage daisukes:anchor g
data remove storage daisukes:anchor rot

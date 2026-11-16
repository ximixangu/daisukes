execute unless block ~ ~ ~ #minecraft:replaceable run return run function daisukes:modifiers/hotbar_shift/fix_block
scoreboard players remove #ray daisukes.shift 1
execute if score #ray daisukes.shift matches 1.. positioned ^ ^ ^0.05 run function daisukes:modifiers/hotbar_shift/ray

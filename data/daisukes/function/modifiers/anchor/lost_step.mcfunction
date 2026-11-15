scoreboard players add #step daisukes.anchor 1
execute if score #step daisukes.anchor matches 25.. run return 0
execute unless block ~ ~ ~ #daisukes:anchor/open run return run function daisukes:modifiers/anchor/clean_block
execute positioned ^ ^ ^0.25 run function daisukes:modifiers/anchor/lost_step

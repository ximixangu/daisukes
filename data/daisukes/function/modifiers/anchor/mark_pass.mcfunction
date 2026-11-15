execute store result score #i daisukes.anchor run random value 0..8
scoreboard players set #lo daisukes.anchor 0
scoreboard players set #size daisukes.anchor 9
scoreboard players set #k daisukes.anchor 9
function daisukes:modifiers/anchor/mark_loop
execute if score #found daisukes.anchor matches 1 run return 1
execute store result score #i daisukes.anchor run random value 9..35
scoreboard players set #lo daisukes.anchor 9
scoreboard players set #size daisukes.anchor 27
scoreboard players set #k daisukes.anchor 27
function daisukes:modifiers/anchor/mark_loop

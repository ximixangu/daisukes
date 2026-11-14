execute if score #try daisukes.bspot matches ..0 run return 0
scoreboard players remove #try daisukes.bspot 1
execute store result score #ok daisukes.bspot run function daisukes:modifiers/blind_spot/seed
execute if score #ok daisukes.bspot matches -1 run return 0
function daisukes:modifiers/blind_spot/fill_loop

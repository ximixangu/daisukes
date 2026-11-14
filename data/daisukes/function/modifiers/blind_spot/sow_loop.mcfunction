execute if score #k daisukes.bspot matches ..0 run return 0
execute if score #try daisukes.bspot matches ..0 run return 0
scoreboard players remove #try daisukes.bspot 1
execute store result score #ok daisukes.bspot run function daisukes:modifiers/blind_spot/seed
execute if score #ok daisukes.bspot matches -1 run return 0
execute if score #ok daisukes.bspot matches 1 run scoreboard players remove #k daisukes.bspot 1
function daisukes:modifiers/blind_spot/sow_loop

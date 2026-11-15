execute if score #found daisukes.anchor matches 1 run return 0
execute if score #k daisukes.anchor matches ..0 run return 0
scoreboard players remove #k daisukes.anchor 1
execute store result storage daisukes:anchor m.i int 1 run scoreboard players get #i daisukes.anchor
function daisukes:modifiers/anchor/mark_try with storage daisukes:anchor m
scoreboard players add #i daisukes.anchor 1
scoreboard players operation #end daisukes.anchor = #lo daisukes.anchor
scoreboard players operation #end daisukes.anchor += #size daisukes.anchor
execute if score #i daisukes.anchor >= #end daisukes.anchor run scoreboard players operation #i daisukes.anchor -= #size daisukes.anchor
function daisukes:modifiers/anchor/mark_loop

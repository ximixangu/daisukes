# Tecles: #p = 2 si ha premut nomes la que toca, 1 si n'ha premut una altra; #h = 1 si te premuda la que toca
scoreboard players set #p daisukes.rush 0
scoreboard players set #h daisukes.rush 0
function daisukes:modifiers/arrow_rush/key {key: "forward", n: 1}
function daisukes:modifiers/arrow_rush/key {key: "left", n: 2}
function daisukes:modifiers/arrow_rush/key {key: "backward", n: 3}
function daisukes:modifiers/arrow_rush/key {key: "right", n: 4}
function daisukes:modifiers/arrow_rush/key {key: "jump", n: 5}
function daisukes:modifiers/arrow_rush/key {key: "sneak", n: 6}
execute store result storage daisukes:rush tmp.id int 1 run scoreboard players get @s daisukes.rush_id
execute if score @s daisukes.rush matches 1.. run function daisukes:modifiers/arrow_rush/play
execute if score @s daisukes.rush matches ..-1 run function daisukes:modifiers/arrow_rush/after with storage daisukes:rush tmp
tag @s remove daisukes.rush_clicked

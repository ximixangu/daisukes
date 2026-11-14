# Com a corona, cada 5 ticks
execute store result storage daisukes:king arg.id int 1 run scoreboard players get @s daisukes.king_id
function daisukes:modifiers/king/bar/update with storage daisukes:king arg

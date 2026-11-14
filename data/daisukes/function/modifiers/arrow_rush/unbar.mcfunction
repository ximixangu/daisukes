execute store result storage daisukes:rush tmp.id int 1 run scoreboard players get #ids daisukes.rush
function daisukes:modifiers/arrow_rush/unbar_one with storage daisukes:rush tmp
scoreboard players remove #ids daisukes.rush 1
execute if score #ids daisukes.rush matches 1.. run function daisukes:modifiers/arrow_rush/unbar

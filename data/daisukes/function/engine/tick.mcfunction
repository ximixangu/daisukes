scoreboard players add #timer daisukes.timer 1

execute if score #timer daisukes.timer matches 100.. run function daisukes:engine/next2
execute if score #timer daisukes.timer matches 100.. run scoreboard players set #timer daisukes.timer 0

function daisukes:engine/tick_execute with storage daisukes:state
scoreboard players add #timer daisukes.timer 1

execute if score #timer daisukes.timer matches 600.. run function daisukes:engine/next
execute if score #timer daisukes.timer matches 600.. run scoreboard players set #timer daisukes.timer 0

function daisukes:engine/tick_active with storage daisukes:state
execute store result score #count daisukes.random run data get storage daisukes:registry modifiers

scoreboard players remove #count daisukes.random 1

execute store result storage daisukes:state max int 1 run scoreboard players get #count daisukes.random

function daisukes:engine/random_index with storage daisukes:state
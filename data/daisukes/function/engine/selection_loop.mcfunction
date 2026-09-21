execute store result score #size daisukes.math run data get storage daisukes:temp pool

execute if score #size daisukes.math matches 1.. run function daisukes:engine/pick_one

scoreboard players remove #remaining daisukes.math 1

execute if score #remaining daisukes.math matches 1.. if data storage daisukes:temp pool[0] run function daisukes:engine/selection_loop
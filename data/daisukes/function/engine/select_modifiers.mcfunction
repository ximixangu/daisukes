data remove storage daisukes:state active

data remove storage daisukes:temp pool
data modify storage daisukes:temp pool set from storage daisukes:registry modifiers

execute store result score #remaining daisukes.math run data get storage daisukes:config count
execute if score #remaining daisukes.math matches 1.. run function daisukes:engine/selection_loop
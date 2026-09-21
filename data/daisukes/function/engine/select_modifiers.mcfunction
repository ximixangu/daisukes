data remove storage daisukes:state active
data remove storage daisukes:temp display_texts

execute store result score #pool_size daisukes.math run data get storage daisukes:temp pool
execute store result score #count daisukes.math run data get storage daisukes:config count

# Treure aquest if per agafar de tota la pool cada cop (habilitar repeticions en cada roll)
execute if score #pool_size daisukes.math < #count daisukes.math run data modify storage daisukes:temp pool set from storage daisukes:registry modifiers

execute store result score #remaining daisukes.math run data get storage daisukes:config count
execute if score #remaining daisukes.math matches 1.. run function daisukes:engine/selection_loop
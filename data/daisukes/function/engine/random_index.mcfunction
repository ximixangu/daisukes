$execute store result storage daisukes:state index int 1 run random value 0..$(max)

execute store result score #index daisukes.index run data get storage daisukes:state index

execute store result score #active_index daisukes.index run data get storage daisukes:state active_index

execute if score #index daisukes.index = #active_index daisukes.index run function daisukes:engine/random_index with storage daisukes:state

execute unless score #index daisukes.index = #active_index daisukes.index run function daisukes:engine/resolve_index with storage daisukes:state
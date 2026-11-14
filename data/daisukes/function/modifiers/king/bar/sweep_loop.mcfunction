execute store result score #x daisukes.king_id run data get storage daisukes:king sweep[0].id
data modify storage daisukes:king arg.id set from storage daisukes:king sweep[0].id
execute unless function daisukes:modifiers/king/bar/alive run function daisukes:modifiers/king/bar/hide with storage daisukes:king arg
data remove storage daisukes:king sweep[0]
execute if data storage daisukes:king sweep[0] run function daisukes:modifiers/king/bar/sweep_loop

data modify storage daisukes:temp macro_build.a set from storage daisukes:temp build_queue[0]
function daisukes:engine/incompat/build_one with storage daisukes:temp macro_build

data remove storage daisukes:temp build_queue[0]

execute if data storage daisukes:temp build_queue[0] run function daisukes:engine/incompat/build_loop

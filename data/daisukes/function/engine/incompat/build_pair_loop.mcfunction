data modify storage daisukes:temp macro_build.b set from storage daisukes:temp pair_queue[0]
function daisukes:engine/incompat/add with storage daisukes:temp macro_build

data remove storage daisukes:temp pair_queue[0]

execute if data storage daisukes:temp pair_queue[0] run function daisukes:engine/incompat/build_pair_loop

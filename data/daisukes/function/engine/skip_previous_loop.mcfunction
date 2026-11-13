# Treu dels candidats (no de la pool) els modificadors de la tirada anterior, un a un
data modify storage daisukes:temp macro_block.id set from storage daisukes:temp previous[0]
function daisukes:engine/incompat/block_one with storage daisukes:temp macro_block

data remove storage daisukes:temp previous[0]

execute if data storage daisukes:temp previous[0] run function daisukes:engine/skip_previous_loop

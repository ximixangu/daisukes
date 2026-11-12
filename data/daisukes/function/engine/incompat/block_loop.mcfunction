data modify storage daisukes:temp macro_block.id set from storage daisukes:temp block_queue[0].id
function daisukes:engine/incompat/block_one with storage daisukes:temp macro_block

data remove storage daisukes:temp block_queue[0]

execute if data storage daisukes:temp block_queue[0] run function daisukes:engine/incompat/block_loop

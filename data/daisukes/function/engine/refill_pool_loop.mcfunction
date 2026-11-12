data modify storage daisukes:temp pool append value {}
data modify storage daisukes:temp pool[-1].id set from storage daisukes:temp refill_queue[0]

data remove storage daisukes:temp refill_queue[0]

execute if data storage daisukes:temp refill_queue[0] run function daisukes:engine/refill_pool_loop

# Un modificador de la llista cap a la pool, si no s'ha desactivat al menu (engine/refill_pool_add)
data modify storage daisukes:temp macro_refill.id set from storage daisukes:temp refill_queue[0]
function daisukes:engine/refill_pool_add with storage daisukes:temp macro_refill

data remove storage daisukes:temp refill_queue[0]

execute if data storage daisukes:temp refill_queue[0] run function daisukes:engine/refill_pool_loop

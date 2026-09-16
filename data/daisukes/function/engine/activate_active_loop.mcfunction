data modify storage daisukes:temp macro_exec.active set from storage daisukes:temp queue[0]

function daisukes:engine/activate with storage daisukes:temp macro_exec

data remove storage daisukes:temp queue[0]

execute if data storage daisukes:temp queue[0] run function daisukes:engine/activate_active_loop
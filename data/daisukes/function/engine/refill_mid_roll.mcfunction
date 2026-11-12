# La pool s'ha quedat sense candidats compatibles a mitja tirada: es torna a omplir
# i se'n treuen els que ja han sortit en aquesta tirada i tots els seus incompatibles.
function daisukes:engine/refill_pool

data remove storage daisukes:temp candidates
data modify storage daisukes:temp candidates set from storage daisukes:temp pool

data remove storage daisukes:temp reapply_queue
data modify storage daisukes:temp reapply_queue set from storage daisukes:state active

execute if data storage daisukes:temp reapply_queue[0] run function daisukes:engine/refill_mid_roll_loop

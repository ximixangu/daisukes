data modify storage daisukes:temp macro_pick.id set from storage daisukes:temp reapply_queue[0]
function daisukes:engine/incompat/exclude with storage daisukes:temp macro_pick

data remove storage daisukes:temp reapply_queue[0]

execute if data storage daisukes:temp reapply_queue[0] run function daisukes:engine/refill_mid_roll_loop

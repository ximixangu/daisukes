data modify storage daisukes:temp macro_disable.id set from storage daisukes:temp all_queue[0]
function daisukes:menu/modifiers/disable_one with storage daisukes:temp macro_disable
data remove storage daisukes:temp all_queue[0]
execute if data storage daisukes:temp all_queue[0] run function daisukes:menu/modifiers/disable_all_loop

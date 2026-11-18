data modify storage daisukes:temp macro_count.id set from storage daisukes:temp count_queue[0]
function daisukes:settings/count_enabled_one with storage daisukes:temp macro_count
data remove storage daisukes:temp count_queue[0]
execute if data storage daisukes:temp count_queue[0] run function daisukes:settings/count_enabled_loop

execute unless data storage daisukes:shift slots[0] run return 0
data modify storage daisukes:shift args.slot set from storage daisukes:shift slots[0]
data remove storage daisukes:shift slots[0]
function daisukes:modifiers/hotbar_shift/fix with storage daisukes:shift args
function daisukes:modifiers/hotbar_shift/strays_loop

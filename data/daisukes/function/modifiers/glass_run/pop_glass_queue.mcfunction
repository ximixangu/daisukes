data modify storage daisukes:glass_run x set from storage daisukes:data GlassQueue[0][0]
data modify storage daisukes:glass_run y set from storage daisukes:data GlassQueue[0][1]
data modify storage daisukes:glass_run z set from storage daisukes:data GlassQueue[0][2]

function daisukes:modifiers/glass_run/break_glass with storage daisukes:glass_run

data remove storage daisukes:data GlassQueue[0]
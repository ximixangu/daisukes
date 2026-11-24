# Com a candidata triada, al seu origen: caixa blava de la parella #next (porta la dimensio)
function daisukes:modifiers/world_edit/box/new
tag @s add daisukes.we_blue
data modify entity @s data.dim set from storage daisukes:world_edit dim
function daisukes:modifiers/world_edit/box/edges with storage daisukes:world_edit config.blue

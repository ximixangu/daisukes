# Com a caixa blava: quan s'acaba el compte, l'intercanvi (swap/start)
function daisukes:modifiers/world_edit/box/tick
execute if score @s daisukes.we_t matches ..0 run function daisukes:modifiers/world_edit/swap/start

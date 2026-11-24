# Com a caixa vermella: si s'acaba el compte i encara hi es, la blava no l'ha trobat (era en un chunk sense carregar):
# s'esvaeix sense intercanviar res
function daisukes:modifiers/world_edit/box/tick
execute if score @s daisukes.we_t matches ..0 run function daisukes:modifiers/world_edit/box/fizzle

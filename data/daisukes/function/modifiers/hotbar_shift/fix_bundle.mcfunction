# Dins del sarró x: el fals fora i el disfressat com era, també als sarrons que porti dins (a qualsevol fondària).
# fix_list fa servir x, list i done: abans de baixar un nivell es desen a la pila, i després es recuperen
data modify storage daisukes:shift stack prepend value {}
data modify storage daisukes:shift stack[0].x set from storage daisukes:shift x
data modify storage daisukes:shift stack[0].list set from storage daisukes:shift list
data modify storage daisukes:shift stack[0].done set from storage daisukes:shift done
data modify storage daisukes:shift list set from storage daisukes:shift x.components."minecraft:bundle_contents"
data modify storage daisukes:shift done set value []
function daisukes:modifiers/hotbar_shift/fix_list
data modify storage daisukes:shift x set from storage daisukes:shift stack[0].x
data modify storage daisukes:shift x.components."minecraft:bundle_contents" set from storage daisukes:shift done
data remove storage daisukes:shift list
data remove storage daisukes:shift done
data modify storage daisukes:shift list set from storage daisukes:shift stack[0].list
data modify storage daisukes:shift done set from storage daisukes:shift stack[0].done
data remove storage daisukes:shift stack[0]

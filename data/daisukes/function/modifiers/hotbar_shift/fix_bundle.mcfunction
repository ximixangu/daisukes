# Dins d'un sarró: el fals fora i el disfressat com era (fix_list fa servir x, per això el sarró passa per bx)
data modify storage daisukes:shift bx set from storage daisukes:shift x
data modify storage daisukes:shift list set from storage daisukes:shift bx.components."minecraft:bundle_contents"
data modify storage daisukes:shift done set value []
function daisukes:modifiers/hotbar_shift/fix_list
data modify storage daisukes:shift bx.components."minecraft:bundle_contents" set from storage daisukes:shift done
data modify storage daisukes:shift x set from storage daisukes:shift bx

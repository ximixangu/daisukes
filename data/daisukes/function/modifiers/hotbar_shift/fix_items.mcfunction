# Arregla una llista d'objectes (Items) d'una entitat o d'un bloc
$data modify storage daisukes:shift list set from $(src) Items
data modify storage daisukes:shift done set value []
function daisukes:modifiers/hotbar_shift/fix_list
$data modify $(src) Items set from storage daisukes:shift done

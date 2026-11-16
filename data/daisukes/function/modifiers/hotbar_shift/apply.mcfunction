# Mira què hi ha a S (a) i a T (b)
data remove storage daisukes:shift a
data remove storage daisukes:shift b
$function daisukes:modifiers/hotbar_shift/read {slot:"hotbar.$(s)"}
data modify storage daisukes:shift a set from storage daisukes:shift x
$function daisukes:modifiers/hotbar_shift/read {slot:"hotbar.$(t)"}
data modify storage daisukes:shift b set from storage daisukes:shift x
# T té objecte: a S hi va l'objecte de T disfressat del de S, i a T una còpia falsa de T
execute if data storage daisukes:shift b run return run function daisukes:modifiers/hotbar_shift/apply_full with storage daisukes:shift args
# T és buida i S no: a S hi va una còpia falsa de S (de veritat té la mà buida)
execute if data storage daisukes:shift a run function daisukes:modifiers/hotbar_shift/apply_hand with storage daisukes:shift args

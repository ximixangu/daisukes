# Desfà el que vam fer l'última vegada, si n'hi ha
data remove storage daisukes:shift e
$data modify storage daisukes:shift e set from storage daisukes:shift p."$(u)"
$data remove storage daisukes:shift p."$(u)"
execute if data storage daisukes:shift e run function daisukes:modifiers/hotbar_shift/restore with storage daisukes:shift e
# I neteja qualsevol objecte marcat que hagi quedat per l'inventari
execute if predicate daisukes:hotbar_shift/marked run function daisukes:modifiers/hotbar_shift/strays

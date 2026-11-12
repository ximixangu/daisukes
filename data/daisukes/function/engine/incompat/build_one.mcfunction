# Macro: {a: "modificador"} -> recorre la seva llista incompatible.<a> (si en te)
data remove storage daisukes:temp pair_queue
$data modify storage daisukes:temp pair_queue set from storage daisukes:registry incompatible.$(a)

execute if data storage daisukes:temp pair_queue[0] run function daisukes:engine/incompat/build_pair_loop

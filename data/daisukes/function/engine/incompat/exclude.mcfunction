# Macro: {id: "modificador"}
# Treu el modificador de la pool i dels candidats, i treu dels candidats tots els seus incompatibles.
$data remove storage daisukes:temp pool[{id: "$(id)"}]
$data remove storage daisukes:temp candidates[{id: "$(id)"}]

data remove storage daisukes:temp block_queue
$data modify storage daisukes:temp block_queue set from storage daisukes:registry conflicts.$(id)

execute if data storage daisukes:temp block_queue[0] run function daisukes:engine/incompat/block_loop

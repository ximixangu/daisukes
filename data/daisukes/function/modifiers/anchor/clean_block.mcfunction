function daisukes:modifiers/anchor/clean_slots
# Un cofre doble: l'altra meitat
execute if block ~ ~ ~ #daisukes:anchor/chests positioned ~1 ~ ~ if block ~ ~ ~ #daisukes:anchor/chests run function daisukes:modifiers/anchor/clean_slots
execute if block ~ ~ ~ #daisukes:anchor/chests positioned ~-1 ~ ~ if block ~ ~ ~ #daisukes:anchor/chests run function daisukes:modifiers/anchor/clean_slots
execute if block ~ ~ ~ #daisukes:anchor/chests positioned ~ ~ ~1 if block ~ ~ ~ #daisukes:anchor/chests run function daisukes:modifiers/anchor/clean_slots
execute if block ~ ~ ~ #daisukes:anchor/chests positioned ~ ~ ~-1 if block ~ ~ ~ #daisukes:anchor/chests run function daisukes:modifiers/anchor/clean_slots

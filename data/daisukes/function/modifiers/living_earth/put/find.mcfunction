# Com a un negre (no una ombra), al seu centre: el mateix bloc amb les mateixes propietats, sense actualitzar res del
# voltant (com si no s'hagues mogut mai). Si ja hi es, res. Torna 1 si l'ha posat
data remove storage daisukes:earth p
execute if score @s daisukes.earth_v matches 1.. run data modify storage daisukes:earth p set from entity @s block_state.Properties
data modify storage daisukes:earth p.Name set from entity @s block_state.Name
return run function daisukes:modifiers/living_earth/put/t0_114

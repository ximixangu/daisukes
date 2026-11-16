# Com al marcador d'un bloc afegit, al seu centre: torna a deixar el bloc que hi havia abans
data remove storage daisukes:earth p
execute if score @s daisukes.earth_v matches 1.. run data modify storage daisukes:earth p set from entity @s data.prev.Properties
data modify storage daisukes:earth p.Name set from entity @s data.prev.Name
return run function daisukes:modifiers/living_earth/put/t0_114

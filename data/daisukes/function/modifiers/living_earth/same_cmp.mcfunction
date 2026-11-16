# Com era el bloc el tick d'abans (la copia de la caixa forta) i com es ara
scoreboard players set #diff daisukes.earth 0
data remove storage daisukes:earth s
scoreboard players set #k daisukes.earth 0
$execute in minecraft:overworld positioned $(vx) $(vy) $(vz) run function daisukes:modifiers/living_earth/st/find
scoreboard players operation #pk daisukes.earth = #k daisukes.earth
data modify storage daisukes:earth prev set from storage daisukes:earth s
data remove storage daisukes:earth s
function daisukes:modifiers/living_earth/st/find
data modify storage daisukes:earth tmp set from storage daisukes:earth prev
execute store success score #diff daisukes.earth run data modify storage daisukes:earth tmp set from storage daisukes:earth s

# Com al cursor, al centre del bloc que es mira ara. Si es el mateix d'abans (i ja estava guardat), res
execute if entity @s[distance=..0.01] if score @s daisukes.earth_k matches 1.. run return 0
tp @s ~ ~ ~
scoreboard players set @s daisukes.earth_k 0
execute if block ~ ~ ~ #daisukes:living_earth/usable run return 0
scoreboard players set @s daisukes.earth_k 1
# Es guarda a la caixa (tal com es), per si el trenca
scoreboard players operation #v daisukes.earth = #slot daisukes.earth
function daisukes:modifiers/living_earth/vault_xyz
function daisukes:modifiers/living_earth/snap with storage daisukes:earth v

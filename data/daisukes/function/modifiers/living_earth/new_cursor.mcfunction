# Un marcador per jugador, que es posa al centre del bloc que mira. Si n'havia tingut un (ha mort, ha tornat...),
# torna a picar normal fins que miri un bloc negre
execute if entity @s[tag=daisukes.earth_tough] run function daisukes:modifiers/living_earth/tough_off
summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.earth", "daisukes.earth_cursor", "daisukes.earth_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=daisukes.earth_new] daisukes.earth = #me daisukes.earth
scoreboard players set @e[type=minecraft:marker,tag=daisukes.earth_new] daisukes.earth_t 0
# La seva casella de la caixa forta (on va la copia del que mira), a les dades del marcador
scoreboard players operation #v daisukes.earth = #me daisukes.earth
scoreboard players operation #v daisukes.earth %= #players daisukes.earth
function daisukes:modifiers/living_earth/vault_xyz
data modify entity @e[type=minecraft:marker,tag=daisukes.earth_new,limit=1] data set from storage daisukes:earth v
tag @e[type=minecraft:marker,tag=daisukes.earth_new] remove daisukes.earth_new

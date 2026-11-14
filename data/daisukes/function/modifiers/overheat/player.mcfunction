# Com a jugador viu, als seus peus. Cada tick

# Encara no te barra (s'acaba d'activar, o ha entrat tard): la seva, buida
execute unless score @s daisukes.heat_id matches 1.. run function daisukes:modifiers/overheat/join
execute store result storage daisukes:heat tmp.id int 1 run scoreboard players get @s daisukes.heat_id

# Toca aigua? Ficat a l'aigua (tambe blocs inundats) o dins d'un cauldron amb aigua (al Nether no n'hi ha d'altra)
scoreboard players set #wet daisukes.heat 0
execute if predicate daisukes:overheat/wet run scoreboard players set #wet daisukes.heat 1
execute if score #wet daisukes.heat matches 1 run function daisukes:modifiers/overheat/wet
execute if score #wet daisukes.heat matches 0 run function daisukes:modifiers/overheat/dry

# Barra: el valor cada tick; el color i el text, nomes quan canvien
#   1 fresc (blanca) | 2 calent, de la meitat (groga) | 3 molt calent, del 80 % (vermella) | 4 crema | 5 es refreda (blava)
scoreboard players set #want daisukes.heat 1
execute if score @s daisukes.heat >= #warm daisukes.heat run scoreboard players set #want daisukes.heat 2
execute if score @s daisukes.heat >= #hot daisukes.heat run scoreboard players set #want daisukes.heat 3
execute if score #wet daisukes.heat matches 1 if score @s daisukes.heat matches 1.. run scoreboard players set #want daisukes.heat 5
execute if score @s daisukes.heat_b matches 1.. run scoreboard players set #want daisukes.heat 4
execute unless score @s daisukes.heat_v = #want daisukes.heat run function daisukes:modifiers/overheat/bar/set with storage daisukes:heat tmp
function daisukes:modifiers/overheat/bar/value with storage daisukes:heat tmp

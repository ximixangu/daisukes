# Com a jugador sense barra: li toca un numero i la seva barra (nomes la veu ell). Comenca fred
execute store result score @s daisukes.heat_id run scoreboard players add #ids daisukes.heat 1
execute store result storage daisukes:heat tmp.id int 1 run scoreboard players get @s daisukes.heat_id
function daisukes:modifiers/overheat/bar/create with storage daisukes:heat tmp

scoreboard players set @s daisukes.heat 0
scoreboard players set @s daisukes.heat_b 0
scoreboard players set @s daisukes.heat_w 0
scoreboard players set @s daisukes.heat_v -1

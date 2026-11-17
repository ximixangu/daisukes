# L'altura de referencia passa a ser la d'ara
scoreboard players operation @s daisukes.weight = #y daisukes.weight
scoreboard players set @s daisukes.weight_fall 0

# Si acabes de reapareixer, la cadena de cops tambe es reinicia
execute if score @s daisukes.weight_dead matches 1.. run scoreboard players set @s daisukes.weight_hits 0
scoreboard players set @s daisukes.weight_dead 0

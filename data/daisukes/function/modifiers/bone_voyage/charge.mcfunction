# Com a cada jugador. Mateix sistema que thunderstruck, item_drop i cursed_potato:
# cada tick suma un valor aleatori (aqui 1..3, de mitjana 2) i, quan arriba a #interval, toca fer sortir un esquelet.
execute store result score @s daisukes.bone_voyage_add run random value 1..3
scoreboard players operation @s daisukes.bone_voyage += @s daisukes.bone_voyage_add

execute if score @s daisukes.bone_voyage >= #interval daisukes.bone_voyage at @s run function daisukes:modifiers/bone_voyage/try

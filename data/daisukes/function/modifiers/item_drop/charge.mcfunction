# Com a cada jugador, als seus peus. Mateix sistema que bone_voyage, thunderstruck i cursed_potato:
# cada tick suma un valor aleatori (aqui 1..35, de mitjana 18) i, a 2000 (uns 5,5 s), li rellisca el que te a la ma.
# Abans, quan li tocava a un jugador, ho deixaven anar TOTS (amb dos jugadors, el doble de sovint)
execute store result score @s daisukes.item_drop_add run random value 1..35
scoreboard players operation @s daisukes.item_drop += @s daisukes.item_drop_add
execute unless score @s daisukes.item_drop matches 2000.. run return 0

scoreboard players set @s daisukes.item_drop 0
execute if items entity @s weapon.mainhand * run function daisukes:modifiers/item_drop/drop

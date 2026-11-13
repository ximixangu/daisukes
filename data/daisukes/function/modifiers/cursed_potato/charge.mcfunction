# Com a cada jugador. Mateix sistema que bone_voyage, thunderstruck i item_drop:
# cada tick suma un valor aleatori (aqui 1..5, de mitjana 3) i, a 300, toca patata
execute store result score @s daisukes.potato_add run random value 1..5
scoreboard players operation @s daisukes.potato += @s daisukes.potato_add
execute if score @s daisukes.potato matches 300.. run function daisukes:modifiers/cursed_potato/try_give

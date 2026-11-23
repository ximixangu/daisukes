# Macro: {a, b, c}: graus del primer tick, del segon i dels seguents (negatius, cap a l'esquerra). Com a jugador que
# gira: la camera gira i ell no es mou (hold), com un tanc que pivota. Les erugues sonen cada 5 ticks
execute unless score @s daisukes.tk_n matches 3.. run scoreboard players add @s daisukes.tk_n 1
$execute if score @s daisukes.tk_n matches 1 run rotate @s ~$(a) ~
$execute if score @s daisukes.tk_n matches 2 run rotate @s ~$(b) ~
$execute if score @s daisukes.tk_n matches 3.. run rotate @s ~$(c) ~
function daisukes:modifiers/tank/hold with storage daisukes:tank config
execute if score #c5 daisukes.tk matches 0 run playsound minecraft:block.chain.step player @a ~ ~ ~ 0.4 0.6

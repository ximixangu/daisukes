# Macro: {move}. Mentre gira, la velocitat es multiplica per 1 + move (-1: quiet, no llisca de costat). Es torna a
# posar cada tick (si ja hi es, no fa res): morint es perd i aixi hi torna a ser
$attribute @s minecraft:movement_speed modifier add daisukes:tank_turn $(move) add_multiplied_total
tag @s add daisukes.tk_turn

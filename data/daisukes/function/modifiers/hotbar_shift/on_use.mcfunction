advancement revoke @s only daisukes:hotbar_shift/use
execute unless predicate daisukes:hotbar_shift/active run return 0
# Ha obert un cofre, ha parlat amb un vilatà, ha posat alguna cosa en un marc...: l'inventari torna a ser el de veritat
function daisukes:modifiers/hotbar_shift/recover
execute at @s as @e[type=#daisukes:hotbar_shift/holders,distance=..8] run function daisukes:modifiers/hotbar_shift/fix_entity
# I es queda així fins que torni a moure la vista (amb una pantalla oberta no pot)
function daisukes:modifiers/hotbar_shift/rot
scoreboard players operation @s daisukes.shift_rot = #rot daisukes.shift

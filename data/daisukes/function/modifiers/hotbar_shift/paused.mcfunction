# Té una pantalla oberta: quan torni a moure la vista (tancada la pantalla), la il·lusió torna
function daisukes:modifiers/hotbar_shift/rot
execute if score #rot daisukes.shift = @s daisukes.shift_rot run return 0
scoreboard players reset @s daisukes.shift_rot
function daisukes:modifiers/hotbar_shift/sync

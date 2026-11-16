# Primer cop que el veiem durant aquest modificador
execute unless score @s daisukes.shift_uid = @s daisukes.shift_uid run function daisukes:modifiers/hotbar_shift/first
# Té una pantalla oberta (cofre, vilatà...): la il·lusió espera que torni a moure la vista
execute if score @s daisukes.shift_rot = @s daisukes.shift_rot run return run function daisukes:modifiers/hotbar_shift/paused
function daisukes:modifiers/hotbar_shift/sync

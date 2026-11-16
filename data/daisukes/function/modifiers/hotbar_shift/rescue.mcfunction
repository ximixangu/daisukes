# Torna a un món on Sleight of Hand ja no és actiu però li'n quedaven restes (món tancat, desconnexió...): tot torna a la normalitat
function daisukes:modifiers/hotbar_shift/recover
kill @e[type=item_display,tag=daisukes.shift_fx,distance=..32]

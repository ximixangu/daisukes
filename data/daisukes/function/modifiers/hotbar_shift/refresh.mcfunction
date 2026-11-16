# Mateixa casella i tot al seu lloc: només es posa al dia la còpia falsa.
# La casella de la mà no es toca, així no es talla res (menjar seguit, tensar l'arc, protegir-se, picar).
function daisukes:modifiers/hotbar_shift/buffer
$execute if items entity @s hotbar.$(s) *[custom_data~{daisukes_shift:{d:1b}}] run function daisukes:modifiers/hotbar_shift/refresh_fake {s:$(s),t:$(t)}
$execute if items entity @s hotbar.$(s) *[custom_data~{daisukes_shift:{j:1b}}] run function daisukes:modifiers/hotbar_shift/refresh_hand {u:$(u),s:$(s)}
kill @e[type=item_display,tag=daisukes.shift_buf]
scoreboard players reset @s daisukes.shift_dirty

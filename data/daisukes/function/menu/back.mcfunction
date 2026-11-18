# Torna al menu principal (Back, Cancel i Esc dels altres dialegs).
# Si aquest jugador ha canviat quins modificadors poden sortir, ara s'avisa a tothom, un sol cop
execute if entity @s[tag=daisukes.mods_changed] run function daisukes:menu/modifiers/announce
dialog show @s daisukes:menu

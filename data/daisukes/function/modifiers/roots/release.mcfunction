# Com al jugador: fora lligams, i la resta de les seves arrels s'enfonsen
function daisukes:modifiers/roots/unbind
execute as @e[type=minecraft:block_display,tag=daisukes.roots_tuft,tag=daisukes.roots_mine,tag=!daisukes.roots_dying] run function daisukes:modifiers/roots/sink
execute as @e[type=minecraft:block_display,tag=daisukes.roots_rope,tag=daisukes.roots_mine,tag=!daisukes.roots_dying] run function daisukes:modifiers/roots/remove
kill @e[type=minecraft:marker,tag=daisukes.roots_center,tag=daisukes.roots_mine]
kill @e[type=minecraft:interaction,tag=daisukes.roots_cut,tag=daisukes.roots_mine]

# Clic a un modificador de la llista (1000 + el seu index al registre): s'activa o es desactiva i la seva pagina torna
# a sortir. S'avisa a tothom quan aquest jugador torni al menu principal (menu/back), no a cada clic
scoreboard players operation #index daisukes.math = #menu daisukes.math
scoreboard players remove #index daisukes.math 1000
data remove storage daisukes:menu args
execute store result storage daisukes:menu args.index int 1 run scoreboard players get #index daisukes.math
function daisukes:menu/modifiers/toggle_find with storage daisukes:menu args
execute if data storage daisukes:menu args.id run function daisukes:menu/modifiers/toggle_apply with storage daisukes:menu args
execute if data storage daisukes:menu args.id run tag @s add daisukes.mods_changed

scoreboard players operation #page daisukes.math = #index daisukes.math
scoreboard players operation #page daisukes.math /= #18 daisukes.math
scoreboard players add #page daisukes.math 1
function daisukes:menu/modifiers/show

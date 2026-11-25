# Com a jugador amb alguna carbassa a l'inventari o a la segona ma (en creatiu se la pot treure del cap), on es: cada
# una torna a ser el que guardava, o desapareix si no guardava res. Un item_display ajudant (ph_tmp) fa la feina
execute summon minecraft:item_display run tag @s add daisukes.ph_tmp
function daisukes:modifiers/pumpkin_head/unwrap/inventory
kill @n[type=minecraft:item_display,tag=daisukes.ph_tmp]

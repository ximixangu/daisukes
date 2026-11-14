# Hi ha alguna corona de la cort #x (carregada)? 1 si, falla si no
execute as @e[type=minecraft:text_display,tag=daisukes.king_crown] if score @s daisukes.king_id = #x daisukes.king_id run return 1
return fail

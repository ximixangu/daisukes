# Com a un bloc d'una cadena de l'entrada: espera el seu torn, surt, aguanta 1 s i s'enfonsa
scoreboard players remove @s daisukes.anchor_t 1
execute if score @s daisukes.anchor_t matches 0 run function daisukes:modifiers/anchor/intro_up
execute if score @s daisukes.anchor_t matches -20 run function daisukes:modifiers/anchor/intro_down
execute if score @s daisukes.anchor_t matches ..-30 run function daisukes:modifiers/anchor/remove

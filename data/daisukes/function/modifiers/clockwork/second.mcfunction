scoreboard players set #sec daisukes.cw 0
# Claus i rellotges d'algu que ja no hi es (mort, desconnectat, en creatiu...) o d'abans: fora
execute as @e[type=minecraft:item_display,tag=daisukes.cw] run function daisukes:modifiers/clockwork/owner
# Qui ara no juga (creatiu, espectador): sense atributs, sense brillar i sense barra
execute as @a[tag=daisukes.cw_has] unless entity @s[gamemode=!creative,gamemode=!spectator] run function daisukes:modifiers/clockwork/clear
execute as @a[tag=daisukes.cw_frozen] unless entity @s[gamemode=!creative,gamemode=!spectator] run function daisukes:modifiers/clockwork/unfreeze
execute as @a[gamemode=creative] if score @s daisukes.cw matches 1.. run function daisukes:modifiers/clockwork/hide_bar
execute as @a[gamemode=spectator] if score @s daisukes.cw matches 1.. run function daisukes:modifiers/clockwork/hide_bar

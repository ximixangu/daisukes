# Pumpkin Head. Cada jugador (no espectador) porta una carbassa tallada amb Curse of Binding: en supervivencia i
# aventura no se la pot treure, i tapa la vista com qualsevol carbassa. El que dugues al cap (casc, cap de mob, res...)
# no es perd: es guarda dins la mateixa carbassa (custom_data daisukes_pumpkin.helmet) i en acabar torna al seu lloc.
# Si mors, la carbassa que cau es converteix en el que guardava (cau on has mort, com hauria caigut el casc) i en
# reviure en reps una de nova (tick). Res a configurar
kill @e[type=minecraft:item_display,tag=daisukes.ph_tmp]
execute as @e[type=minecraft:player,gamemode=!spectator] unless items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] at @s run function daisukes:modifiers/pumpkin_head/wear
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/pumpkin_head/intro

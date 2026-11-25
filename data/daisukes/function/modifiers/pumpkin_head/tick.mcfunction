# Qui no porta la carbassa (acaba d'entrar o de reviure, deixa de ser espectador...) en rep una, amb el que dugues al
# cap a dins. Nomes els jugadors vius (@e): qui es a la pantalla de mort la rep en reviure
execute as @e[type=minecraft:player,gamemode=!spectator] unless items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] at @s run function daisukes:modifiers/pumpkin_head/wear

# Carbasses fora del cap: a l'inventari o a la segona ma (en creatiu se la pot treure) i a terra (cau en morir, tambe
# si revius a l'acte i ja ets lluny). Tornen a ser el que guardaven abans que ningu les pugui agafar
execute as @a if items entity @s container.* minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] at @s run function daisukes:modifiers/pumpkin_head/strays
execute as @a if items entity @s weapon.offhand minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] at @s run function daisukes:modifiers/pumpkin_head/strays
execute as @e[type=minecraft:item] if items entity @s contents minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] run function daisukes:modifiers/pumpkin_head/unwrap/ground

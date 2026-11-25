# Tot el que estigui carregat torna a ser com abans: el cap (i l'inventari) de cada jugador i les carbasses de terra.
# Les dels jugadors desconnectats i les dels chunks sense carregar, quan tornin (leftovers)
execute as @a at @s run function daisukes:modifiers/pumpkin_head/restore
execute as @e[type=minecraft:item] if items entity @s contents minecraft:carved_pumpkin[minecraft:custom_data~{daisukes_pumpkin: {}}] run function daisukes:modifiers/pumpkin_head/unwrap/ground
kill @e[type=minecraft:item_display,tag=daisukes.ph_tmp]

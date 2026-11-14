# Cada jugador va acumulant brossa per a l'inventari i per a terra (davant seu si camina, o al voltant)
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/junk/player

# Cada 5 ticks: la brossa que llencen els jugadors (o que cau quan moren) desapareix al cap de poc.
# Si no, la tornarien a recollir en passar-hi per sobre i no se'n podrien desfer mai
scoreboard players add #mark daisukes.junk 1
execute if score #mark daisukes.junk matches 5.. as @e[type=minecraft:item,tag=!daisukes.junk] if items entity @s contents *[minecraft:custom_data~{junk: 1b}] run function daisukes:modifiers/junk/mark
execute if score #mark daisukes.junk matches 5.. run scoreboard players set #mark daisukes.junk 0

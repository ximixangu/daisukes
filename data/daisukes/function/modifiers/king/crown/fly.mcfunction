# Com a corona que vola (cada tick): cap al cap de l'hereu (monstre) o, amb king_to_wearer, de qui ha mort el Rei
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest
scoreboard players add @s daisukes.king_t 1
scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id
execute if entity @s[tag=daisukes.king_to_wearer] as @e[type=minecraft:player,tag=daisukes.king_wearer,gamemode=!spectator] if score @s daisukes.king_id = #cid daisukes.king_id run tag @s add daisukes.king_dest
execute if entity @s[tag=!daisukes.king_to_wearer] as @e[tag=daisukes.king_heir] if score @s daisukes.king_id = #cid daisukes.king_id run tag @s add daisukes.king_dest

# On anava ja no hi es (ha mort, ha marxat...): queda flotant on es
execute unless entity @e[tag=daisukes.king_dest] run return run function daisukes:modifiers/king/crown/lost

# Ja hi ha arribat (o fa 4 s que vola i no l'atrapa): s'hi posa
execute at @e[tag=daisukes.king_dest,limit=1] anchored eyes positioned ^ ^ ^ if entity @s[distance=..1.2] run return run function daisukes:modifiers/king/crown/land
execute if score @s daisukes.king_t matches 80.. run return run function daisukes:modifiers/king/crown/land

# Si no, avanca 0,8 blocs cap als seus ulls deixant un rastre daurat (les particules surten on era)
execute facing entity @e[tag=daisukes.king_dest,limit=1] eyes run tp @s ^ ^ ^0.8
particle minecraft:dust{color: [1.0, 0.82, 0.25], scale: 1.0} ~ ~0.3 ~ 0.05 0.05 0.05 0 2
particle minecraft:wax_on ~ ~0.3 ~ 0.1 0.1 0.1 0 1
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest

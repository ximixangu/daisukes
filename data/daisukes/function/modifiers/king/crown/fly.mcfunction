# Com a corona que vola (cada tick): cap al cap de l'hereu (monstre) o, amb king_to_wearer, de qui ha mort el Rei
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest
scoreboard players add @s daisukes.king_t 1
scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id
execute if entity @s[tag=daisukes.king_to_wearer] as @e[type=minecraft:player,tag=daisukes.king_wearer,gamemode=!spectator] if score @s daisukes.king_id = #cid daisukes.king_id run tag @s add daisukes.king_dest
execute if entity @s[tag=!daisukes.king_to_wearer] as @e[tag=daisukes.king_heir] if score @s daisukes.king_id = #cid daisukes.king_id run tag @s add daisukes.king_dest

# On anava ja no hi es (ha mort, ha marxat...): queda flotant on es
execute unless entity @e[tag=daisukes.king_dest] run return run function daisukes:modifiers/king/crown/lost

# Ja hi ha arribat (o fa 4 s que vola i no l'atrapa): s'hi posa. Cap a un monstre va als seus ulls; cap a un
# jugador, 2 blocs per sobre dels ulls, on la portara (si anes als ulls, li passaria pel mig de la pantalla)
execute if entity @s[tag=!daisukes.king_to_wearer] at @e[tag=daisukes.king_dest,limit=1] anchored eyes positioned ^ ^ ^ if entity @s[distance=..1.2] run return run function daisukes:modifiers/king/crown/land
execute if entity @s[tag=daisukes.king_to_wearer] at @e[tag=daisukes.king_dest,limit=1] anchored eyes positioned ^ ^ ^ positioned ~ ~2 ~ if entity @s[distance=..1.2] run return run function daisukes:modifiers/king/crown/land
execute if score @s daisukes.king_t matches 80.. run return run function daisukes:modifiers/king/crown/land

# Si no, avanca 0,8 blocs cap alla deixant un rastre daurat (les particules surten on era). Per apuntar 2 blocs per
# sobre dels ulls del jugador, mira els seus ulls des de 2 blocs mes avall i torna a pujar
execute if entity @s[tag=!daisukes.king_to_wearer] facing entity @e[tag=daisukes.king_dest,limit=1] eyes run tp @s ^ ^ ^0.8
execute if entity @s[tag=daisukes.king_to_wearer] positioned ~ ~-2 ~ facing entity @e[tag=daisukes.king_dest,limit=1] eyes positioned ~ ~2 ~ run tp @s ^ ^ ^0.8
particle minecraft:dust{color: [1.0, 0.82, 0.25], scale: 1.0} ~ ~0.3 ~ 0.05 0.05 0.05 0 2
particle minecraft:wax_on ~ ~0.3 ~ 0.1 0.1 0.1 0 1
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest

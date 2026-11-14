# Com a corona sobre el cap de qui ha mort el Rei, cada tick: el segueix (tambe si canvia de mon) 2 blocs per sobre
# dels ulls (amb el balanceig, uns 2 blocs per sobre del cap). Tan amunt, nomes la veu si mira amunt: ni saltant,
# que la corona li arriba un parell de ticks tard, no li baixa fins als ulls
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest
scoreboard players operation #cid daisukes.king_id = @s daisukes.king_id
execute as @e[type=minecraft:player,tag=daisukes.king_wearer,gamemode=!spectator] if score @s daisukes.king_id = #cid daisukes.king_id run tag @s add daisukes.king_dest

# Ha mort, ha marxat del servidor o s'ha fet espectador: la corona cau on es
execute unless entity @e[tag=daisukes.king_dest] run return run function daisukes:modifiers/king/crown/drop

execute at @e[tag=daisukes.king_dest,limit=1] anchored eyes positioned ^ ^ ^ run tp @s ~ ~2 ~
tag @e[tag=daisukes.king_dest] remove daisukes.king_dest

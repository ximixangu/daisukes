tag @s add daisukes.orb_seen
# Segueix l'orba girant sobre si mateixa (el nucli del volt, al reves)
execute if entity @s[tag=daisukes.orb_spin_back] rotated as @s run tp @s ~ ~ ~ ~-7 0
execute if entity @s[tag=!daisukes.orb_spin_back] rotated as @s run tp @s ~ ~ ~ ~11 0
execute store result entity @s glow_color_override int 1 run scoreboard players get #glow daisukes.orb
# Quan parpelleja en vermell, tremola: esta a punt d'esclatar
execute if score #flash daisukes.orb matches 1 run tp @s ~0.05 ~0.04 ~
# Mida: apareix de zero passant-se (rup!), s'assenta, creix fins al final i s'infla just abans d'esclatar
execute if score #age daisukes.orb matches 1 run function daisukes:modifiers/orbital/size {k: 1300, d: 3}
execute if score #age daisukes.orb matches 4 run function daisukes:modifiers/orbital/size {k: 1000, d: 3}
execute if score #age daisukes.orb matches 8 run function daisukes:modifiers/orbital/grow
execute if score #left daisukes.orb matches 3 run function daisukes:modifiers/orbital/size {k: 2100, d: 3}

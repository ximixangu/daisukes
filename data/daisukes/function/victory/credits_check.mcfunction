# Mentre sona "chirp" (victory/beat): qui entra al portal de sortida de l'End veu els credits, que tenen
# la seva musica. Aleshores ja no es al mon (@e no el troba, @a si): se li atura la canco. Tambe als morts
tag @e[type=minecraft:player] add daisukes.in_world
execute as @a[tag=!daisukes.in_world] run stopsound @s record minecraft:music_disc.chirp
tag @a remove daisukes.in_world

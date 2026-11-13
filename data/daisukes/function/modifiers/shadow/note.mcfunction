# Macro: {pitch: to de la nota, color: color de la particula de nota (0-1)}
$execute as @e[type=mannequin,tag=daisukes.shadow] at @s run playsound minecraft:block.note_block.bell hostile @a ~ ~ ~ 1 $(pitch)
$execute as @e[type=mannequin,tag=daisukes.shadow] at @s run particle minecraft:note ~ ~2.2 ~ $(color) 0 0 1 0

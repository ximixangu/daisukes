# Macro: {pitch: nota aguda de l'acord, bass: nota del baix}. Totes les ombres toquen l'acord
# i les que han saltat colpegen.
$execute as @e[type=mannequin,tag=daisukes.shadow] at @s run playsound minecraft:block.note_block.bell record @a ~ ~ ~ 1.5 $(pitch)
$execute as @e[type=mannequin,tag=daisukes.shadow] at @s run playsound minecraft:block.note_block.bass record @a ~ ~ ~ 1.5 $(bass)
execute as @e[type=mannequin,tag=daisukes.shadow_armed] at @s run function daisukes:modifiers/shadow/hit

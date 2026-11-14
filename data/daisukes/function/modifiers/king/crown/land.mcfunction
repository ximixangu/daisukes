# Com a corona que arriba on anava (king_dest)
execute if entity @s[tag=daisukes.king_to_wearer] run return run function daisukes:modifiers/king/crown/wear

# S'hi posa a sobre. Si no pot (no el pot muntar, o se n'ha anat a un altre mon), aquest no sera mai Rei
execute store success score #ok daisukes.king run ride @s mount @e[tag=daisukes.king_dest,limit=1]
execute if score #ok daisukes.king matches 0 run return run function daisukes:modifiers/king/crown/refused
function daisukes:modifiers/king/crown/crowned

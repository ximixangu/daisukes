# Qui l'ha picat (clic esquerre o dret)
execute on attacker run tag @s add daisukes.orb_popper
execute on target run tag @s add daisukes.orb_popper
data remove entity @s attack
data remove entity @s interaction
# El coure aguanta tres cops
execute if entity @s[tag=daisukes.orb_copper] run scoreboard players remove @s daisukes.orb_hp 1
execute if entity @s[tag=daisukes.orb_copper] if score @s daisukes.orb_hp matches 1.. run function daisukes:modifiers/orbital/copper/crack
execute unless entity @s[tag=daisukes.orb_copper,scores={daisukes.orb_hp=1..}] run function daisukes:modifiers/orbital/pop
tag @a remove daisukes.orb_popper

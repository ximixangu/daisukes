# Jugador nou per a Orbital: identificador i primera orba d'aqui a 5 s
execute unless score @s daisukes.orb_id matches 1.. run function daisukes:modifiers/orbital/join
scoreboard players operation #owner daisukes.orb = @s daisukes.orb_id
tag @s add daisukes.orb_me

# Les seves orbes, amb els seus ulls com a centre
execute anchored eyes positioned ^ ^ ^ as @e[type=minecraft:interaction,tag=daisukes.orb] if score @s daisukes.orb_owner = #owner daisukes.orb run function daisukes:modifiers/orbital/orb

scoreboard players remove @s daisukes.orb_timer 1
execute if score @s daisukes.orb_timer matches ..0 anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/orbital/spawn
tag @s remove daisukes.orb_me

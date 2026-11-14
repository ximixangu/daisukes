# Valors d'aquest tick per a les pells: edat, el que queda i el color del contorn
scoreboard players operation #age daisukes.orb = @s daisukes.orb_age
scoreboard players operation #left daisukes.orb = @s daisukes.orb_life
scoreboard players operation #left daisukes.orb -= #age daisukes.orb
# Blanc mentre es pot fer un perfect (1,2 s), despres el del tipus, vermell intermitent l'ultim segon i mig
# i blanc quan s'infla per esclatar
scoreboard players operation #glow daisukes.orb = @s daisukes.orb_color
execute if score #age daisukes.orb matches ..24 run scoreboard players set #glow daisukes.orb 16777215
scoreboard players operation #m daisukes.orb = #age daisukes.orb
scoreboard players operation #m daisukes.orb %= #6 daisukes.orb
scoreboard players set #flash daisukes.orb 0
execute if score #left daisukes.orb matches ..30 if score #m daisukes.orb matches ..2 run scoreboard players set #flash daisukes.orb 1
execute if score #flash daisukes.orb matches 1 run scoreboard players set #glow daisukes.orb 16723504
execute if score #left daisukes.orb matches ..3 run scoreboard players set #glow daisukes.orb 16777215

# Avis: cinc pitets cada cop mes aguts. Sonen des de l'orba, aixi ajuden a trobar-la
execute if score #left daisukes.orb matches 30 at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute if score #left daisukes.orb matches 24 at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.19
execute if score #left daisukes.orb matches 18 at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.41
execute if score #left daisukes.orb matches 12 at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.68
execute if score #left daisukes.orb matches 6 at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 2

execute at @s positioned ~ ~0.4 ~ run function daisukes:modifiers/orbital/trail
execute if entity @s[tag=daisukes.orb_copper] run function daisukes:modifiers/orbital/copper/rust

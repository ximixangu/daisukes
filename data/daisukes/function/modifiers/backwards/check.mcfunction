# Com a jugador, als seus peus. El primer cop se li dona un numero
execute unless score @s daisukes.backwards matches 1.. store result score @s daisukes.backwards run scoreboard players add #ids daisukes.backwards 1
scoreboard players operation #me daisukes.backwards = @s daisukes.backwards

# El seu marker (pel numero, no el mes proper: amb dos jugadors a prop s'haurien confos)
tag @s add daisukes.backwards_self
scoreboard players set #found daisukes.backwards 0
execute as @e[type=minecraft:marker,tag=daisukes.backwards] if score @s daisukes.backwards = #me daisukes.backwards run function daisukes:modifiers/backwards/evaluate

# Encara no en te (acaba d'entrar, o s'ha quedat en un chunk sense carregar): se'n crea un aqui
execute if score #found daisukes.backwards matches 0 summon minecraft:marker run function daisukes:modifiers/backwards/claim
tag @s remove daisukes.backwards_self

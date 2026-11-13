# Com a jugador, als seus peus. Amb llum (mes de 1): el comptador torna a 0
execute unless predicate daisukes:dark/location_check run return run scoreboard players set @s daisukes.dark 0

# A la foscor. En entrar-hi, un avis del Warden (nomes el sent ell)
execute unless score @s daisukes.dark matches 1.. run playsound minecraft:entity.warden.nearby_close player @s ~ ~ ~ 0.8 0.7
scoreboard players add @s daisukes.dark 1

effect give @s minecraft:darkness 3 0 true
effect give @s minecraft:weakness 1 0 true
effect give @s minecraft:mining_fatigue 1 0 true
effect give @s minecraft:hunger 1 0 true

# Mes de 8 s seguits a la foscor: wither
execute if score @s daisukes.dark matches 160.. run effect give @s minecraft:wither 2 0 true

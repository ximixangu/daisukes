# Fora de l'aigua t'escalfes i a dins et refredes (player). Qui mor torna a comencar fred
execute as @a[scores={daisukes.heat_d=1..}] run function daisukes:modifiers/overheat/died

# Els espectadors no tenen barra (torna si es tornen a posar a jugar)
execute as @a[gamemode=spectator,scores={daisukes.heat_id=1..}] unless score @s daisukes.heat_v matches 0 run function daisukes:modifiers/overheat/hide

execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/overheat/player

# Com a jugador fora de l'aigua, als seus peus
scoreboard players set @s daisukes.heat_w 0

# Ja crema: continua cremant fins que toqui aigua
execute if score @s daisukes.heat_b matches 1.. run return run function daisukes:modifiers/overheat/burn

# S'escalfa. Quan arriba a dalt, comenca a cremar
scoreboard players add @s daisukes.heat 1
execute if score @s daisukes.heat >= #max daisukes.heat run return run function daisukes:modifiers/overheat/ignite

# Avisos, cada cop mes seguits: de la meitat, sua; del 80 %, a mes fumeja i espetega.
# Just quan arriba al 80 %, un crepitar de foc suau que nomes sent ell
execute if score @s daisukes.heat = #hot daisukes.heat run playsound minecraft:block.fire.ambient player @s ~ ~ ~ 0.5 1.3
execute if score @s daisukes.heat >= #hot daisukes.heat run return run function daisukes:modifiers/overheat/fx/hot
execute if score @s daisukes.heat >= #warm daisukes.heat run function daisukes:modifiers/overheat/fx/warm

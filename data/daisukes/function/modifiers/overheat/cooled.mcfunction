# Com a jugador que s'acaba de refredar del tot a l'aigua. Si hi havia entrat calent, una campaneta suau (nomes la sent ell)
scoreboard players set @s daisukes.heat 0
execute if score @s daisukes.heat_w matches 2 run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.5 1.5
scoreboard players set @s daisukes.heat_w 1

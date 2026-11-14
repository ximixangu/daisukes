# Com a jugador que toca aigua, als seus peus

# Cremava: s'apaga al moment
execute if score @s daisukes.heat_b matches 1.. run function daisukes:modifiers/overheat/extinguish

# Hi acaba d'entrar calent (del 20 %): un "tsss" suau, i quan es refredi del tot sonara la campaneta.
# Si nomes era tebi, res (que caminar per un rierol no faci soroll a cada passa)
execute if score @s daisukes.heat_w matches 0 if score @s daisukes.heat >= #hiss daisukes.heat run function daisukes:modifiers/overheat/fx/hiss
execute if score @s daisukes.heat_w matches 0 run scoreboard players set @s daisukes.heat_w 1

# Es refreda: la barra baixa (de plena a buida en #cool_time, 1 s)
execute if score @s daisukes.heat matches 1.. run function daisukes:modifiers/overheat/cool

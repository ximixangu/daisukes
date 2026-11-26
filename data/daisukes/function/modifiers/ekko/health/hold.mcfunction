# Com al jugador amb la vida maxima tallada: al cap de 2 ticks (la vida ja ha baixat) torna a la normal
scoreboard players remove @s daisukes.ek_hp 1
execute if score @s daisukes.ek_hp matches ..0 run function daisukes:modifiers/ekko/health/release

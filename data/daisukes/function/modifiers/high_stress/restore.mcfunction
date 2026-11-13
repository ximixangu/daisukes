# Com al jugador: s'acaba l'estres, torna la vida maxima i es cura del tot en 1 s
scoreboard players set @s daisukes.high_stress 0
attribute @s minecraft:max_health modifier remove daisukes:high_stress
effect give @s minecraft:regeneration 1 8 true
advancement revoke @s only daisukes:high_stress/player_hurt

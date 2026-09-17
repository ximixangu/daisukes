execute as @a[scores={daisukes.high_stress_timer=1..}] run function daisukes:modifiers/high_stress/restore_health
scoreboard players set #active daisukes.high_stress 0
scoreboard players set @a daisukes.high_stress_timer -1
advancement grant @s only daisukes:high_stress/player_hurt
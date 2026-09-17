execute as @a[scores={daisukes.high_stress_timer=1..}] run scoreboard players remove @s daisukes.high_stress_timer 1

execute as @a[scores={daisukes.high_stress_timer=0}] run function daisukes:modifiers/high_stress/restore_health

execute if score #active daisukes.high_stress matches 0 as @a[scores={daisukes.high_stress_timer=1..}] run function daisukes:restore_health
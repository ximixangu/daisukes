scoreboard players set @s daisukes.high_stress_timer -1
attribute @s max_health base set 20
execute as @a run effect give @s minecraft:regeneration 1 8 true
advancement revoke @s only daisukes:high_stress/player_hurt
scoreboard objectives add daisukes.high_stress_timer dummy
scoreboard objectives add daisukes.high_stress dummy
scoreboard players set #active daisukes.high_stress 1
scoreboard players set @a daisukes.high_stress_timer -1
advancement revoke @a only daisukes:high_stress/player_hurt
# Com al jugador del salt que el servidor veu enlaire per primer cop
scoreboard players set #first daisukes.jk 1
tag @s add daisukes.jk_air
scoreboard players operation @s daisukes.jk_lag = @s daisukes.jk_t
scoreboard players remove @s daisukes.jk_lag 2
execute if score @s daisukes.jk_lag matches ..-1 run scoreboard players set @s daisukes.jk_lag 0
execute if score @s daisukes.jk_lag matches 11.. run scoreboard players set @s daisukes.jk_lag 10

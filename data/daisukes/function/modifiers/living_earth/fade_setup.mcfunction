# Cada tick, la tisora (#cut) avanca prou perque, abans que s'acabi el temps (#left), hagi passat el negre mes nou
scoreboard players set #lo daisukes.earth_q 2147483647
scoreboard players set #hi daisukes.earth_q -2147483648
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] run scoreboard players operation #lo daisukes.earth_q < @s daisukes.earth_q
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] run scoreboard players operation #hi daisukes.earth_q > @s daisukes.earth_q
scoreboard players operation #div daisukes.earth_q = #left daisukes.earth_q
scoreboard players remove #div daisukes.earth_q 1
scoreboard players operation #step daisukes.earth_q = #hi daisukes.earth_q
scoreboard players operation #step daisukes.earth_q -= #lo daisukes.earth_q
scoreboard players operation #step daisukes.earth_q += #div daisukes.earth_q
scoreboard players operation #step daisukes.earth_q /= #div daisukes.earth_q
scoreboard players operation #cut daisukes.earth_q = #lo daisukes.earth_q
scoreboard players remove #cut daisukes.earth_q 1

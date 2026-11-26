# Com al jugador, l'ultim segon: el seu eco s'apaga i s'encen cada 4 ticks, avisant que hi torna
scoreboard players operation #b daisukes.ek = @s daisukes.ek_t
scoreboard players operation #b daisukes.ek /= #4 daisukes.ek
scoreboard players operation #b daisukes.ek %= #2 daisukes.ek
execute if score #b daisukes.ek matches 0 as @e[type=minecraft:mannequin,tag=daisukes.ek_this] run data merge entity @s {Glowing: true}
execute if score #b daisukes.ek matches 1 as @e[type=minecraft:mannequin,tag=daisukes.ek_this] run data merge entity @s {Glowing: false}

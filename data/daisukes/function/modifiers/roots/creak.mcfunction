# Com al jugador que estira: grinyol, mes agut com mes a prop de trencar-se (4 trams fins a #tough)
scoreboard players operation #q daisukes.roots = @s daisukes.roots_s
scoreboard players operation #q daisukes.roots *= #4 daisukes.roots
scoreboard players operation #q daisukes.roots /= #tough daisukes.roots
execute if score #q daisukes.roots matches 0 run playsound minecraft:item.crossbow.loading_middle player @a ~ ~ ~ 0.5 0.7
execute if score #q daisukes.roots matches 1 run playsound minecraft:item.crossbow.loading_middle player @a ~ ~ ~ 0.5 0.9
execute if score #q daisukes.roots matches 2 run playsound minecraft:item.crossbow.loading_middle player @a ~ ~ ~ 0.5 1.1
execute if score #q daisukes.roots matches 3.. run playsound minecraft:item.crossbow.loading_middle player @a ~ ~ ~ 0.5 1.3

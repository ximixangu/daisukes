# Com a corona, cada segon
# Ningu a menys de 64 blocs (al mateix mon): s'esvaeix, i el seu Rei, si en te, abdica
execute unless entity @e[type=minecraft:player,gamemode=!spectator,distance=..64] run return run function daisukes:modifiers/king/crown/fade

# Sense Rei: quan s'acaba l'interregne busca un hereu al voltant. Si en 30 s no en troba cap, s'esvaeix
execute if entity @s[tag=!daisukes.king_reign,tag=!daisukes.king_fly] if score @s daisukes.king matches ..-600 run return run function daisukes:modifiers/king/crown/fade
execute if entity @s[tag=!daisukes.king_reign,tag=!daisukes.king_fly] if score @s daisukes.king matches ..0 run function daisukes:modifiers/king/crown/seek

# Es balanceja amunt i avall (1 s cada cop)
execute if entity @s[tag=!daisukes.king_fly] if score #bob daisukes.king matches 0 run data merge entity @s {start_interpolation: 0, interpolation_duration: 20, transformation: {translation: [0f, 0.4f, 0f]}}
execute if entity @s[tag=!daisukes.king_fly] if score #bob daisukes.king matches 1 run data merge entity @s {start_interpolation: 0, interpolation_duration: 20, transformation: {translation: [0f, 0.15f, 0f]}}

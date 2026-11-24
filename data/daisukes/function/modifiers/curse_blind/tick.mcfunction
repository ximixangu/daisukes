# Un tick si i un no (#clock 0): els objectes de terra
scoreboard players add #clock daisukes.cb 1
execute if score #clock daisukes.cb matches 2.. run scoreboard players set #clock daisukes.cb 0

# Inventari de cada jugador (no espectador)
execute as @a[gamemode=!spectator] run function daisukes:modifiers/curse_blind/player

# Objectes a terra a #ground blocs o menys d'un jugador, abans que els agafi
execute if score #clock daisukes.cb matches 0 if score #ground daisukes.cb matches 1.. as @a[gamemode=!spectator] at @s run function daisukes:modifiers/curse_blind/ground with storage daisukes:curse_blind config

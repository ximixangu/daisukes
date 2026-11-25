scoreboard players add #time daisukes.le 1
scoreboard players operation #odd daisukes.le = #time daisukes.le
scoreboard players operation #odd daisukes.le %= #2 daisukes.le

# Entrada: 1.5 s carregant (sense lasers) i, en acabar, s'encenen
execute if score #time daisukes.le matches ..30 run return 0
execute if score #time daisukes.le matches 31 as @e[type=minecraft:player,gamemode=!spectator] at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.6

# Els espectadors no aturen cap laser
tag @a[gamemode=spectator] add daisukes.le_ghost
tag @a[gamemode=!spectator] remove daisukes.le_ghost

# Cada jugador viu: on toca el seu raig, el que escalfa i els seus lasers
execute as @e[type=minecraft:player,gamemode=!spectator] at @s run function daisukes:modifiers/laser_eyes/player

# Lasers que el seu amo no ha mogut aquest tick (ha mort, dorm, s'ha desconnectat o s'ha fet espectador): fora
kill @e[type=minecraft:block_display,tag=daisukes.le_beam,tag=!daisukes.le_seen]
tag @e[type=minecraft:block_display,tag=daisukes.le_seen] remove daisukes.le_seen

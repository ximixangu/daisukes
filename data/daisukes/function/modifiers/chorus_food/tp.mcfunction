execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 30
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1

# 3. Teletransportar al jugador en un radio aleatorio de 16 bloques (X/Z)
spreadplayers ~ ~ 1 16 false @s

# 4. Reproducir el sonido en la ubicación de llegada
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1
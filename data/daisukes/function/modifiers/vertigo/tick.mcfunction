# Mal per caiguda x4 a cada jugador (x4 sobre el que ja tingues), tambe a qui entra mes tard o reapareix.
# Si ja el te, la comanda falla i no fa res
execute as @e[type=minecraft:player] run attribute @s minecraft:fall_damage_multiplier modifier add daisukes:vertigo 3 add_multiplied_total

# A l'aire mes de 1,5 s seguits: ceguesa
execute as @e[type=minecraft:player,gamemode=!spectator] run function daisukes:modifiers/vertigo/check

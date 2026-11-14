# Ningu salta (saltar es un TP) i tothom puja sol els graons d'un bloc. No toca la velocitat: el camp de
# visio queda normal. Cada tick: tambe a qui entra tard o reapareix; si ja el te, no passa res
execute as @a run attribute @s minecraft:jump_strength modifier add daisukes:ender_step -1 add_multiplied_total
execute as @a run attribute @s minecraft:step_height modifier add daisukes:ender_step 0.4 add_value

# Rellotge de 4 ticks (aura)
scoreboard players add #t daisukes.ender_step 1
execute if score #t daisukes.ender_step matches 4.. run scoreboard players set #t daisukes.ender_step 0

execute as @e[type=player,gamemode=!spectator] at @s run function daisukes:modifiers/ender_step/player

# Els de la tirada anterior (encara a daisukes:state active) no tornen a sortir de seguida
data remove storage daisukes:temp previous
data modify storage daisukes:temp previous set from storage daisukes:state active

data remove storage daisukes:state active
data remove storage daisukes:temp display_texts
data remove storage daisukes:temp chat_texts

scoreboard players set #pool_size daisukes.math 0
execute store result score #pool_size daisukes.math run data get storage daisukes:temp pool
execute store result score #count daisukes.math run data get storage daisukes:config count

# La pool nomes es pot tornar a omplir un cop per tirada (refill_pool posa #refilled a 1)
scoreboard players set #refilled daisukes.math 0

# Treure aquest if per agafar de tota la pool cada cop (habilitar repeticions en cada roll)
execute if score #pool_size daisukes.math < #count daisukes.math run function daisukes:engine/refill_pool

# Candidats d'aquesta tirada = el que queda a la pool, menys els de la tirada anterior
# (nomes si encara n'hi ha prou per arribar a "count"; si no, poden repetir).
# Cada cop que en surt un, es treu dels candidats ell i tots els seus incompatibles.
data remove storage daisukes:temp candidates
data modify storage daisukes:temp candidates set from storage daisukes:temp pool
execute store result score #spare daisukes.math run data get storage daisukes:temp candidates
execute store result score #prev daisukes.math run data get storage daisukes:temp previous
scoreboard players operation #spare daisukes.math -= #prev daisukes.math
execute if score #spare daisukes.math >= #count daisukes.math if data storage daisukes:temp previous[0] run function daisukes:engine/skip_previous_loop

execute store result score #remaining daisukes.math run data get storage daisukes:config count
execute if score #remaining daisukes.math matches 1.. run function daisukes:engine/selection_loop

data remove storage daisukes:temp candidates
data remove storage daisukes:temp previous

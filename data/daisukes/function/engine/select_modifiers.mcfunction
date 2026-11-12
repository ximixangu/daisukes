data remove storage daisukes:state active
data remove storage daisukes:temp display_texts

scoreboard players set #pool_size daisukes.math 0
execute store result score #pool_size daisukes.math run data get storage daisukes:temp pool
execute store result score #count daisukes.math run data get storage daisukes:config count

# La pool nomes es pot tornar a omplir un cop per tirada (refill_pool posa #refilled a 1)
scoreboard players set #refilled daisukes.math 0

# Treure aquest if per agafar de tota la pool cada cop (habilitar repeticions en cada roll)
execute if score #pool_size daisukes.math < #count daisukes.math run function daisukes:engine/refill_pool

# Candidats d'aquesta tirada = el que queda a la pool.
# Cada cop que en surt un, es treu dels candidats ell i tots els seus incompatibles.
data remove storage daisukes:temp candidates
data modify storage daisukes:temp candidates set from storage daisukes:temp pool

execute store result score #remaining daisukes.math run data get storage daisukes:config count
execute if score #remaining daisukes.math matches 1.. run function daisukes:engine/selection_loop

data remove storage daisukes:temp candidates

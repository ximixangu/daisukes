# Cada tick: tambe a qui entra tard o reapareix (en morir es perden els modificadors d'atribut).
# Si ja el te, "modifier add" falla i no passa res
execute as @a run attribute @s minecraft:jump_strength modifier add daisukes:no_jump -1 add_multiplied_base

# Abast 4.5 -> 1.6 (blocs) i 3 -> 1.3 (entitats). Cada tick: tambe a qui entra tard o reapareix
# (amb "base set" nomes ho tenien els que hi eren en activar-se). Si ja el te, "modifier add" falla i no passa res
execute as @a run attribute @s minecraft:block_interaction_range modifier add daisukes:no_arms -2.9 add_value
execute as @a run attribute @s minecraft:entity_interaction_range modifier add daisukes:no_arms -1.7 add_value

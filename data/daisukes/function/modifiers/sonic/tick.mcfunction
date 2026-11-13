# Velocitat x10 (corrent, uns 56 blocs/s) i pujar blocs sencers sense saltar.
# Abans era "base set 5" (x50): en un servidor el joc ho detecta com a "moved too quickly" i et fa tornar
# enrere sense parar (el limit son 10 blocs per tick). Cada tick: tambe a qui entra tard o reapareix
execute as @a run attribute @s minecraft:movement_speed modifier add daisukes:sonic 9 add_multiplied_base
execute as @a run attribute @s minecraft:step_height modifier add daisukes:sonic 0.4 add_value

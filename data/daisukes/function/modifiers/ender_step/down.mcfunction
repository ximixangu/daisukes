# En un bloc lliure, a l'altura #h (respecte dels peus d'on surt). Baixa fins a terra
# Massa avall: faria mal de caiguda
execute if score #h daisukes.ender_step < #min daisukes.ender_step run return 0

# Aigua, portals, escales i lianes: s'hi queda (no fan mal ni el deixen caure de cop)
execute if block ~ ~ ~ #daisukes:ender_step/stop run return run function daisukes:modifiers/ender_step/arrive

# Bastida a sota: s'hi queda a sobre (com caminant per una plataforma, no a dins)
execute if block ~ ~-1 ~ minecraft:scaffolding run return run function daisukes:modifiers/ender_step/arrive

# Buit a sota: un bloc mes avall (#h ja passa a ser l'altura d'aquest bloc de sota)
scoreboard players remove #h daisukes.ender_step 1
execute positioned ~ ~-1 ~ if predicate daisukes:ender_step/open run return run function daisukes:modifiers/ender_step/down

# Terra. Si nomes ho comprova (ja hi es caminant), qualsevol; si hi salta, que l'aguanti
# (ni lava, ni foc, ni cactus, ni tanques...)
execute if score #probe daisukes.ender_step matches 1 run return run function daisukes:modifiers/ender_step/arrive
execute unless block ~ ~-1 ~ #daisukes:teleport/no_floor run function daisukes:modifiers/ender_step/arrive

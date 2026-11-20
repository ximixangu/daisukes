# (per si ve d'un mon amb la versio anterior, on encara no existia)
scoreboard objectives add daisukes.ice_run dummy

# Trenca tots els blocs del rastre que quedin.
# Els que son en zones no carregades no es poden tocar: es guarden i es trencaran
# el proxim cop que el modificador estigui actiu i la zona es carregui.
data modify storage daisukes:ice_run kept set value []
execute if data storage daisukes:ice_run trail[0] run function daisukes:modifiers/ice_run/cleanup_loop
data modify storage daisukes:ice_run trail set from storage daisukes:ice_run kept
data remove storage daisukes:ice_run kept
data remove storage daisukes:ice_run new
data remove storage daisukes:ice_run pos

# Cap marker del modificador es queda al mon (els temporals ja es maten al moment; aixo es nomes per seguretat)
kill @e[type=minecraft:marker,tag=daisukes.ice_run]

# Restes de la versio anterior (cristall + markers que no s'havien esborrat)
data remove storage daisukes:data GlassQueue

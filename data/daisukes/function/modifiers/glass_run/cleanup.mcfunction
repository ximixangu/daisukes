# (per si ve d'un mon amb la versio anterior, on encara no existia)
scoreboard objectives add daisukes.glass_run dummy

# Trenca tots els blocs del rastre que quedin.
# Els que son en zones no carregades no es poden tocar: es guarden i es trencaran
# el proxim cop que el modificador estigui actiu i la zona es carregui.
data modify storage daisukes:glass_run kept set value []
execute if data storage daisukes:glass_run trail[0] run function daisukes:modifiers/glass_run/cleanup_loop
data modify storage daisukes:glass_run trail set from storage daisukes:glass_run kept
data remove storage daisukes:glass_run kept
data remove storage daisukes:glass_run new
data remove storage daisukes:glass_run pos

# Cap marker del modificador es queda al mon (els temporals ja es maten al moment; aixo es nomes per seguretat)
kill @e[type=minecraft:marker,tag=daisukes.glass_run]

# Restes de la versio anterior (cristall + markers que no s'havien esborrat)
data remove storage daisukes:data GlassQueue

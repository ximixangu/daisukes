# Converteix el bloc en gel i l'apunta al rastre (posicio, dimensio i tick en que s'ha de trencar).
# La dimensio es guarda perque el trencament s'executa des del servidor (Overworld).
data remove storage daisukes:glass_run new
execute if dimension minecraft:overworld run data modify storage daisukes:glass_run new.dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage daisukes:glass_run new.dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage daisukes:glass_run new.dim set value "minecraft:the_end"
execute unless data storage daisukes:glass_run new.dim run return 0

# Gel compactat: no es fon ni es converteix en aigua
setblock ~ ~ ~ minecraft:packed_ice

# Marker temporal nomes per llegir les coordenades del bloc: es mata en aquest mateix tick
execute align xyz summon minecraft:marker run function daisukes:modifiers/glass_run/record

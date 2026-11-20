# Trenca el bloc del rastre a la seva dimensio. Retorna 0 si la zona no esta carregada.
# Nomes es trenca si encara es gel (si algu l'ha picat i hi ha posat un altre bloc, no es toca).
# "destroy" fa el so i les particules de trencar; el gel compactat sense toc de seda no deixa res.
$execute in $(dim) unless loaded $(x) $(y) $(z) run return 0
$execute in $(dim) positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:air destroy
return 1

# Macro: {dx, dz}. L'enclusa apareix 100 blocs per sobre del jugador i cau. Nomes si alla hi ha aire:
# mai substitueix cap bloc (una muntanya, el sostre de la base, un cofre...), i qui es sota cobert no rep
$execute positioned ~$(dx) ~100 ~$(dz) if block ~ ~ ~ #minecraft:air run setblock ~ ~ ~ minecraft:damaged_anvil

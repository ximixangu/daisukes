# Macro: {x, y, z, x2, y2, z2}. A l'origen de la casella: si no hi ha res que no s'hagi de moure (bedrock, portals i
# marcs de l'End: un clone filtrat cap a la caixa forta els compta), queda un marcador candidat que ja sap on es
$execute store result score #n daisukes.we run clone $(x) $(y) $(z) $(x2) $(y2) $(z2) to minecraft:overworld 29998976 200 29998976 strict filtered #daisukes:world_edit/fixed
$execute if score #n daisukes.we matches 0 run summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.we", "daisukes.we_cand"], data: {x: $(x), y: $(y), z: $(z), x2: $(x2), y2: $(y2), z2: $(z2)}}

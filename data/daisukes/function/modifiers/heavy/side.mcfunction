# Sense paret a l'altura dels peus: s'enfonsa el terra del costat (la superficie)
execute if block ~ ~ ~ #daisukes:heavy_empty run return run execute positioned ~ ~-1 ~ run function daisukes:modifiers/heavy/break

# Amb paret (o un graó): es trenquen els dos blocs de baix, perque hi puguis passar
function daisukes:modifiers/heavy/break
execute positioned ~ ~1 ~ run function daisukes:modifiers/heavy/break

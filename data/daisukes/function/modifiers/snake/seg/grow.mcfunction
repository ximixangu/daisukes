# Com a tros posat el tick anterior (el client ja l'ha vist petit): creix fins a ser un bloc sencer en 3 ticks. Una
# milesima mes petit que el bloc: si hi ha un bloc de debo a la mateixa casella (algu l'hi ha posat, l'aigua d'una
# vora...), les cares no coincideixen i no fan pampallugues
tag @s remove daisukes.sn_new
data merge entity @s {start_interpolation: 0, interpolation_duration: 3, transformation: {translation: [0.001f, 0.001f, 0.001f], scale: [0.998f, 0.998f, 0.998f]}}

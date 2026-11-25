# Fora totes les cues, de cop, i les etiquetes dels jugadors. El que no estigui carregat (una cua en un chunk llunya, un
# jugador desconnectat) ho treu leftovers quan torni a ser-ho
kill @e[type=minecraft:block_display,tag=daisukes.sn]
tag @a remove daisukes.sn_on
tag @a remove daisukes.sn_me

# El fons d'una columna: a l'ultim cop de la cadena, s'hi obrira el voltant (un marcador)
execute if score #hits daisukes.weight = #chain daisukes.weight run summon minecraft:marker ~ ~ ~ {Tags: ["daisukes.weight", "daisukes.weight_bot"]}

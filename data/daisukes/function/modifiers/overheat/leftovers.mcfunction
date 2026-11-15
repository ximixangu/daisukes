# Overheat no deixa res quan s'acaba (deactivate ho treu tot: barres i puntuacions), aixi que aqui no hi ha
# res a netejar. Ha d'existir perque es a la llista de leftovers: si hi falta, Minecraft descarta la llista sencera
execute if data storage daisukes:state {active: ["overheat"]} run return 0

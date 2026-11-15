# Bossbar del compte enrere. Es crea un sol cop (si ja existeix, l'add falla i no passa res).
# S'amaga a engine/clear: si una partida continua (mon tornat a obrir, /reload), es queda com estava
bossbar add daisukes:countdown ""
bossbar set daisukes:countdown max 100
bossbar set daisukes:countdown style progress

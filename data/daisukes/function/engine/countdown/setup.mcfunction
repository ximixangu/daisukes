# Bossbar del compte enrere. Es crea un sol cop (si ja existeix, l'add falla i no passa res).
bossbar add daisukes:countdown ""
bossbar set daisukes:countdown max 100
bossbar set daisukes:countdown style progress
bossbar set daisukes:countdown visible false

scoreboard players set #reveal daisukes.timer 0

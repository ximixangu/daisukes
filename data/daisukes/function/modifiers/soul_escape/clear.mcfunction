# Fora markers, animes i marques dels mobs (els que encara voltin es tornaran a marcar si torna a sortir)
kill @e[type=minecraft:marker,tag=daisukes.soul_marker]
kill @e[type=minecraft:interaction,tag=daisukes.soul]
tag @e[tag=daisukes.soul_host] remove daisukes.soul_host
tag @a remove daisukes.soul_killer
# Restes de la versio anterior (Creeper)
kill @e[type=minecraft:marker,tag=daisukes.creeper_marker]
tag @e[tag=daisukes.creeper_host] remove daisukes.creeper_host

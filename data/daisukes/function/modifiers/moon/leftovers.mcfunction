# Cada segon mentre Outer Space no esta actiu: mobs en chunks que no estaven carregats i jugadors que
# estaven desconnectats (es quedarien amb gravetat baixa per sempre)
execute if data storage daisukes:state {active: ["moon"]} run return 0
execute as @e[tag=daisukes.moon] run function daisukes:modifiers/moon/restore

# Versio anterior del datapack: "base set 0.01" i l'etiqueta "moon"
execute as @e[tag=moon] run function daisukes:modifiers/moon/restore_legacy

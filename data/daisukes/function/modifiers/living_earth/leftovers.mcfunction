# Cada segon (core/leftovers), nomes si Living Earth no esta actiu. Qui no hi era quan es va acabar, torna a picar normal
execute if data storage daisukes:state {active: ["living_earth"]} run return 0
execute as @a[tag=daisukes.earth_tough] run function daisukes:modifiers/living_earth/tough_off
# (etiquetes de jugador de la primera versio de Living Earth, si n'hi havia)
tag @a[tag=daisukes.earth_heavy] remove daisukes.earth_heavy
tag @a[tag=daisukes.earth_keep] remove daisukes.earth_keep
# Mentre els negres desapareixen (fade), res mes; si encara dura als 5 s (s'ha encallat), s'acaba aqui
execute if data storage daisukes:earth {fading: 1b} run return run function daisukes:modifiers/living_earth/fade_watch
# El que hagi quedat en chunks sense carregar (i el seu bloc negre)
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=daisukes.earth_sub] at @s if block ~ ~ ~ #daisukes:living_earth/sub run function daisukes:modifiers/living_earth/clear_cell
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black,tag=daisukes.earth_set,tag=!daisukes.earth_ghost,tag=!daisukes.earth_sub] at @s run function daisukes:modifiers/living_earth/unset with entity @s block_state
kill @e[tag=daisukes.earth,type=!minecraft:player]

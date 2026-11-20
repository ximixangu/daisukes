# Cada segon (core/leftovers), nomes si Ctrl+Z no esta actiu (i no estan desapareixent els negres):
# el que era en chunks sense carregar, els jugadors que no hi eren i la caixa forta
execute if data storage daisukes:state {active: ["living_earth"]} run return 0
execute if data storage daisukes:earth {fading: 1b} run return 0
execute as @e[type=minecraft:block_display,tag=daisukes.earth_black] at @s run function daisukes:modifiers/living_earth/fade_one
kill @e[tag=daisukes.earth,type=!minecraft:player]
execute as @a[tag=daisukes.earth_tough] run function daisukes:modifiers/living_earth/tough_off
advancement revoke @a[tag=daisukes.earth_placing] only daisukes:living_earth/where
tag @a remove daisukes.earth_placing
tag @a remove daisukes.earth_many
execute if data storage daisukes:earth {vault: 1b} in minecraft:overworld run forceload remove 29999008 29999008
data remove storage daisukes:earth vault

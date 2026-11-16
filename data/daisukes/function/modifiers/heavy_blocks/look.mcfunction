# Tick seguent al clic, com al marcador (als peus del jugador quan va fer clic)
data remove storage daisukes:heavy main
data remove storage daisukes:heavy off
data modify storage daisukes:heavy main set from entity @s data.main
data modify storage daisukes:heavy off set from entity @s data.off
scoreboard players operation #me daisukes.heavy = @s daisukes.heavy
tag @s add daisukes.heavy_cur
execute as @e[type=minecraft:player] if score @s daisukes.heavy = #me daisukes.heavy run tag @s add daisukes.heavy_who
scoreboard players set #ok daisukes.heavy 0
scoreboard players set #tie daisukes.heavy 0
# 1) On es exactament: dels 8 llocs possibles, els que hi encaixen. Si nomes n'hi ha un, aquest
scoreboard players set #n daisukes.heavy 0
execute if entity @a[tag=daisukes.heavy_who,tag=!daisukes.heavy_many] run function daisukes:modifiers/heavy_blocks/where
execute if score #n daisukes.heavy matches 1 as @e[type=minecraft:marker,tag=daisukes.heavy_cand,distance=..12] at @s run function daisukes:modifiers/heavy_blocks/found
# 2) Si n'hi encaixa mes d'un: el que es veu amb la mirada d'ara o, si no, amb la del clic. Si cap, cap
execute if score #n daisukes.heavy matches 2.. run function daisukes:modifiers/heavy_blocks/tie
# 3) Si no se sap on es (n'ha posat mes d'un alhora...): el raig amb la mirada d'ara
scoreboard players set #step daisukes.heavy 0
execute if score #n daisukes.heavy matches 0 as @a[tag=daisukes.heavy_who,limit=1] at @s anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/heavy_blocks/ray
kill @e[type=minecraft:marker,tag=daisukes.heavy_cand]
tag @a[tag=daisukes.heavy_who] remove daisukes.heavy_who
kill @s

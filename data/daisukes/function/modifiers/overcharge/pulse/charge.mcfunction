# Macro: {r, rh}. Com al pols, a terra, abans de la descarga: espurnes per tot el cercle i, cada 2 ticks, la vora
# dibuixada (fins on arribara). Al parallamps, espurnes que hi corren
execute if entity @s[tag=daisukes.oc_grounded] run return run particle minecraft:electric_spark ~ ~-0.5 ~ 0.05 0.4 0.05 0.02 3 force
$particle minecraft:electric_spark ~ ~0.1 ~ $(rh) 0 $(rh) 0 3 force
scoreboard players operation #f daisukes.oc = @s daisukes.oc_a1
scoreboard players operation #f daisukes.oc %= #2 daisukes.oc
execute if score #f daisukes.oc matches 1 run function daisukes:modifiers/overcharge/pulse/ring with storage daisukes:overcharge config.ring3

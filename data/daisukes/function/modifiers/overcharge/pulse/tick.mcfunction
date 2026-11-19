# Com al pols. oc: ticks des de la mort; oc_a1: des que ha tocat a terra; oc_a2: des de la descarga. Baixa fins a
# terra (o a l'aigua), avisa i, a #pulse_delay (i com a minim 4 ticks despres de tocar a terra), es descarrega
scoreboard players add @s daisukes.oc 1
execute unless entity @a[distance=..48] run return run kill @s
execute if entity @s[tag=daisukes.oc_done] run return run function daisukes:modifiers/overcharge/pulse/after with storage daisukes:overcharge config
execute unless entity @s[tag=daisukes.oc_landed] run function daisukes:modifiers/overcharge/pulse/fall
# Si en 2 s no ha trobat terra (s'ha mort molt amunt), s'esvaeix
execute unless entity @s[tag=daisukes.oc_landed] if score @s daisukes.oc matches 40.. run return run kill @s
execute unless entity @s[tag=daisukes.oc_landed] run return 0
scoreboard players add @s daisukes.oc_a1 1
execute if score @s daisukes.oc >= #pulse_delay daisukes.oc if score @s daisukes.oc_a1 matches 4.. run return run function daisukes:modifiers/overcharge/pulse/discharge with storage daisukes:overcharge config
function daisukes:modifiers/overcharge/pulse/charge with storage daisukes:overcharge config

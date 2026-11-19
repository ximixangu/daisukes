# Com al mob que s'acaba de morir, als peus. Fora el seu marker; el pols surt a mitja alcada (el cos que es mor ja
# fa la mida d'un mob mort, aixi que no es pot fer servir per trobar-ne el centre)
execute on passengers if entity @s[tag=daisukes.oc_rider] run kill @s
execute positioned ~ ~0.9 ~ run function daisukes:modifiers/overcharge/pulse/start

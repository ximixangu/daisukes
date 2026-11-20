# Com al jugador que toca un raig actiu, al punt del raig (un cop per tick)
tag @s add daisukes.oc_zapped
# L'aparta 0,6 blocs en horitzontal, lluny del raig, si hi cap (cos i cap) i no va muntat: tant si li fa mal com si
# no (just despres d'un cop no se'n pot rebre un altre), no el pot travessar
execute unless predicate daisukes:overcharge/riding facing entity @s feet rotated ~ 0 positioned as @s positioned ^ ^ ^0.6 if block ~ ~0.6 ~ #daisukes:overcharge/clear if block ~ ~1.5 ~ #daisukes:overcharge/clear unless block ~ ~0.6 ~ minecraft:lava run tp @s ~ ~ ~
# Mal: una picada minima des del raig, que l'empeny enrere, i la descarga (magic no empeny)
damage @s 0.01 minecraft:sting at ~ ~ ~
function daisukes:modifiers/overcharge/beam/shock with storage daisukes:overcharge config

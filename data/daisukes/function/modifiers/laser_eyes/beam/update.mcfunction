# Com a jugador: els seus dos lasers (block_display) al seu lloc, girats com ell i estirats fins on toca el raig.
# Per que ell no els vegi: l'entitat es 4.5 blocs DARRERE dels ulls i la seva caixa de visibilitat (width/height) es
# petita. El joc nomes dibuixa una entitat si aquesta caixa es dins del camp de visio, i en primera persona sempre
# queda a l'esquena, tambe quan el client va endarrerit en girar de pressa (fins a FOV 90). Els altres i ell en F5
# (vista de cara) si que la tenen davant
scoreboard players set #found daisukes.le 0
execute anchored eyes positioned ^ ^ ^-4.5 as @e[type=minecraft:block_display,tag=daisukes.le_beam,distance=..30] if score @s daisukes.le_id = #me daisukes.le run function daisukes:modifiers/laser_eyes/beam/aim
execute unless score #found daisukes.le matches 2 run function daisukes:modifiers/laser_eyes/beam/new

# Llargada: de la cara (0.25 davant dels ulls) fins on toca, en vuitens. Nomes s'estiren si ha canviat
scoreboard players operation #blen daisukes.le = #dist daisukes.le
scoreboard players remove #blen daisukes.le 2
execute if score #blen daisukes.le matches ..0 run scoreboard players set #blen daisukes.le 1
execute unless score @s daisukes.le_len = #blen daisukes.le run function daisukes:modifiers/laser_eyes/beam/stretch

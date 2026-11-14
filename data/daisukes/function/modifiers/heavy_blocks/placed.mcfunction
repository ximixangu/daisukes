# Recompensa de l'avancament daisukes:modifiers/heavy_blocks/place: aquest jugador acaba de posar un bloc sense res a sota (aire, aigua, herba...).
# Es torna a poder activar. El bloc es busca seguint on mira, i ha de ser del tipus que tenia a la ma (encara hi es)
advancement revoke @s only daisukes:modifiers/heavy_blocks/place
data remove storage daisukes:heavy main
data remove storage daisukes:heavy off
data modify storage daisukes:heavy main.block set from entity @s SelectedItem.id
data modify storage daisukes:heavy off.block set from entity @s equipment.offhand.id
scoreboard players set #step daisukes.heavy 0
execute anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/heavy_blocks/ray

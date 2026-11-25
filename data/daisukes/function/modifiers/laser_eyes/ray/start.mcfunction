# Com a jugador: el raig surt dels ulls cap on mira i avanca bloc a bloc fins que toca una paret, un mob o un jugador,
# o fins a l'abast. #dist: fins on ha arribat (vuitens de bloc des dels ulls). #kind: 0 res, 1 paret, 2 mob o jugador
scoreboard players set #dist daisukes.le 0
scoreboard players set #kind daisukes.le 0
# Purpurina pel raig per als altres jugadors (si n'hi ha), un bloc si i un no, i cada tick als altres
execute store success score #specks daisukes.le if entity @a[tag=!daisukes.le_me]
scoreboard players operation #flip daisukes.le = #odd daisukes.le
execute anchored eyes positioned ^ ^ ^1 run function daisukes:modifiers/laser_eyes/ray/step

# No toca res a l'abast: no escalfa res
execute if score #kind daisukes.le matches 0 run scoreboard players set #tgt daisukes.le -1
execute if score #kind daisukes.le matches 0 run scoreboard players set #heat daisukes.le 0

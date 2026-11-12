# Index a l'atzar entre 0 i #size-1 dins dels candidats.
# Si nomes en queda 1, l'index es 0 directament ("random value 0..0" dona error).
scoreboard players set #index daisukes.math 0

execute store result score #max_index daisukes.math run scoreboard players get #size daisukes.math
scoreboard players remove #max_index daisukes.math 1

execute store result storage daisukes:temp macro_rand.max int 1 run scoreboard players get #max_index daisukes.math
execute if score #max_index daisukes.math matches 1.. run function daisukes:engine/get_random_index with storage daisukes:temp macro_rand

execute store result storage daisukes:temp macro_rand.index int 1 run scoreboard players get #index daisukes.math
function daisukes:engine/transfer_modifier with storage daisukes:temp macro_rand

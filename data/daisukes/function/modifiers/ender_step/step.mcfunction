# A la columna de desti, a l'altura #h (respecte dels peus d'on surt)
# Lliure: hi baixa fins a terra
execute if predicate daisukes:ender_step/open run return run function daisukes:modifiers/ender_step/down

# Hi ha un bloc: hi puja a sobre, si hi ha lloc
scoreboard players add #h daisukes.ender_step 1
execute positioned ~ ~1 ~ if predicate daisukes:ender_step/open run function daisukes:modifiers/ender_step/down

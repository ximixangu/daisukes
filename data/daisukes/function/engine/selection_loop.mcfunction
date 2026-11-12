scoreboard players set #size daisukes.math 0
execute store result score #size daisukes.math run data get storage daisukes:temp candidates

# Si a la pool ja no queda cap candidat compatible, es torna a omplir (un sol cop) per poder arribar a "count"
execute if score #size daisukes.math matches 0 if score #refilled daisukes.math matches 0 run function daisukes:engine/refill_mid_roll
execute if score #size daisukes.math matches 0 store result score #size daisukes.math run data get storage daisukes:temp candidates

# No en queda cap que sigui compatible amb els que ja han sortit: s'acaba la tirada
execute if score #size daisukes.math matches 0 run return 0

function daisukes:engine/pick_one

scoreboard players remove #remaining daisukes.math 1

execute if score #remaining daisukes.math matches 1.. run function daisukes:engine/selection_loop

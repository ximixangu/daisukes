# Ja no queda ningu agafat: la seguent tanda, d'aqui a #every (si no n'han agafat cap, d'aqui a 5 s)
scoreboard players set #round daisukes.roots 0
scoreboard players set #wait daisukes.roots 100
execute if score #bound daisukes.roots matches 1 run scoreboard players operation #wait daisukes.roots = #every daisukes.roots

# Boto Start del menu principal: es tanca el dialeg i comenca el repte (o continua, si s'havia aturat)

# Partida acabada (victoria o derrota): en lloc de comencar, pregunta si se'n vol fer una de nova
scoreboard players set #finished daisukes.math 0
execute if score #victory daisukes.engine matches 1 run scoreboard players set #finished daisukes.math 1
execute if score #defeat daisukes.engine matches 1 run scoreboard players set #finished daisukes.math 1
execute if score #finished daisukes.math matches 1 run dialog show @s daisukes:new_game
execute if score #finished daisukes.math matches 1 run return 0

# Sense cap modificador activat no pot comencar: a la llista, que ho diu en vermell
function daisukes:settings/count_enabled
scoreboard players set #page daisukes.math 1
execute if score #enabled daisukes.math matches 0 run function daisukes:menu/modifiers/show
execute if score #enabled daisukes.math matches 0 run return 0

dialog clear @s
time set day
function daisukes:start

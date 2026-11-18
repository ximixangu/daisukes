# Activar-los tots (31-39, des d'aquella pagina de la llista, que torna a sortir). La pool es torna a omplir
# a la tirada seguent, amb tots
data remove storage daisukes:settings disabled
data remove storage daisukes:temp pool
tag @s add daisukes.mods_changed
scoreboard players operation #page daisukes.math = #menu daisukes.math
scoreboard players remove #page daisukes.math 30
function daisukes:menu/modifiers/show

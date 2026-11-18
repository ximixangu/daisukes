# Desactivar-los tots (41-49, des d'aquella pagina de la llista, que torna a sortir). Despres es poden activar
# els que es vulguin. Sense cap d'activat el repte no pot comencar (start)
data modify storage daisukes:temp all_queue set from storage daisukes:registry modifiers
execute if data storage daisukes:temp all_queue[0] run function daisukes:menu/modifiers/disable_all_loop
data remove storage daisukes:temp pool
tag @s add daisukes.mods_changed
scoreboard players operation #page daisukes.math = #menu daisukes.math
scoreboard players remove #page daisukes.math 40
function daisukes:menu/modifiers/show

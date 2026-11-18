# Llista de modificadors des d'un boto: 3 (menu principal) la primera pagina, 21-29 aquella pagina
scoreboard players set #page daisukes.math 1
execute if score #menu daisukes.math matches 21..29 run scoreboard players operation #page daisukes.math = #menu daisukes.math
execute if score #menu daisukes.math matches 21..29 run scoreboard players remove #page daisukes.math 20
function daisukes:menu/modifiers/show

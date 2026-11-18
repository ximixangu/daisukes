# Botons de pagina anterior i seguent (menu/modifiers/show), donant la volta
scoreboard players operation #prev daisukes.math = #page daisukes.math
scoreboard players remove #prev daisukes.math 1
execute if score #prev daisukes.math matches ..0 run scoreboard players operation #prev daisukes.math = #pages daisukes.math
scoreboard players operation #next daisukes.math = #page daisukes.math
scoreboard players add #next daisukes.math 1
execute if score #next daisukes.math > #pages daisukes.math run scoreboard players set #next daisukes.math 1
execute store result storage daisukes:menu args.prev int 1 run scoreboard players get #prev daisukes.math
execute store result storage daisukes:menu args.next int 1 run scoreboard players get #next daisukes.math
function daisukes:menu/modifiers/nav_buttons with storage daisukes:menu args

# Com a corona sense Rei ni ningu que la porti: queda flotant on es, mes apagada, i la barra compta l'interregne
tag @s remove daisukes.king_fly
tag @s remove daisukes.king_to_wearer
tag @s remove daisukes.king_worn
tag @s add daisukes.king_vacant
data merge entity @s {text: {text: "♚", color: "#B08A2E", bold: true}}
execute store result storage daisukes:king arg.id int 1 run scoreboard players get @s daisukes.king_id
function daisukes:modifiers/king/bar/vacant with storage daisukes:king arg

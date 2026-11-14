# Treu totes les barres, de daisukes:heat_#ids a daisukes:heat_1 (deactivate, i activate per si en quedava alguna)
execute store result storage daisukes:heat tmp.id int 1 run scoreboard players get #ids daisukes.heat
function daisukes:modifiers/overheat/bar/remove with storage daisukes:heat tmp
scoreboard players remove #ids daisukes.heat 1
execute if score #ids daisukes.heat matches 1.. run function daisukes:modifiers/overheat/bar/remove_all

# Macro: {s: 1, 2 o 3}. Com a mob de la xarxa: el raig de la casella s (si es trenca, la casella queda lliure)
$scoreboard players operation #t daisukes.oc = @s daisukes.oc_l$(s)
$scoreboard players operation #age daisukes.oc = @s daisukes.oc_a$(s)
function daisukes:modifiers/overcharge/link/beam
$execute if score #res daisukes.oc matches 0 run scoreboard players set @s daisukes.oc_l$(s) 0
$scoreboard players operation @s daisukes.oc_a$(s) = #age daisukes.oc

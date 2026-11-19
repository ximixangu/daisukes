# Com a mob de la xarxa (l'altra punta te l'etiqueta oc_b): el raig s'acaba d'activar. Clic electric i, si alguna
# punta es un creeper, es carrega
playsound minecraft:block.copper_bulb.turn_on hostile @a ~ ~ ~ 0.6 1.4
execute if score #creepers daisukes.oc matches 1 if entity @s[type=minecraft:creeper] run function daisukes:modifiers/overcharge/creeper
execute if score #creepers daisukes.oc matches 1 as @e[type=minecraft:creeper,tag=daisukes.oc_b] at @s run function daisukes:modifiers/overcharge/creeper

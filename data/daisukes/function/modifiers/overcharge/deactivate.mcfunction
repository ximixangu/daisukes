# La xarxa s'apaga
execute as @a at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~ 0.7 1.4
function daisukes:modifiers/overcharge/clear
scoreboard objectives remove daisukes.oc
scoreboard objectives remove daisukes.oc_id
scoreboard objectives remove daisukes.oc_l1
scoreboard objectives remove daisukes.oc_l2
scoreboard objectives remove daisukes.oc_l3
scoreboard objectives remove daisukes.oc_a1
scoreboard objectives remove daisukes.oc_a2
scoreboard objectives remove daisukes.oc_a3
data remove storage daisukes:overcharge config

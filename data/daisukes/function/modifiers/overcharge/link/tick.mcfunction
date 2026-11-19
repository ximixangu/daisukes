# Com a mob de la xarxa, als peus (un tick de cada dos): els seus rajos; cada 2 s, si n'hi ha algun d'actiu, un
# brunzit; i cada 10 ticks, si li queden rajos per fer, en busca
scoreboard players operation #a daisukes.oc = @s daisukes.oc_id
scoreboard players set #live daisukes.oc 0
execute if score #links daisukes.oc matches 1.. if score @s daisukes.oc_l1 matches 1.. run function daisukes:modifiers/overcharge/link/slot {s: 1}
execute if score #links daisukes.oc matches 2.. if score @s daisukes.oc_l2 matches 1.. run function daisukes:modifiers/overcharge/link/slot {s: 2}
execute if score #links daisukes.oc matches 3.. if score @s daisukes.oc_l3 matches 1.. run function daisukes:modifiers/overcharge/link/slot {s: 3}
scoreboard players operation #f daisukes.oc = @s daisukes.oc_id
scoreboard players operation #f daisukes.oc += #clock daisukes.oc
scoreboard players operation #h daisukes.oc = #f daisukes.oc
scoreboard players operation #h daisukes.oc %= #40 daisukes.oc
execute if score #live daisukes.oc matches 1.. if score #h daisukes.oc matches 0..1 run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 0.3 1.8
scoreboard players operation #f daisukes.oc %= #10 daisukes.oc
execute if score #f daisukes.oc matches 0..1 if score #links daisukes.oc matches 1.. run function daisukes:modifiers/overcharge/link/fill

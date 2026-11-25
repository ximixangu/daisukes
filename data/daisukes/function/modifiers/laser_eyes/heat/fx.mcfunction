# Al punt que s'escalfa, per a tothom (tambe per a qui mira, es l'avis): res el primer quart, despres fum, flames
# quan falta la meitat, mes flames l'ultim quart i un espetec quan hi entra
scoreboard players operation #q daisukes.le = #heat daisukes.le
scoreboard players operation #q daisukes.le *= #4 daisukes.le
scoreboard players operation #q daisukes.le /= #ignite daisukes.le
execute if score #q daisukes.le matches 1.. if score #odd daisukes.le matches 0 run particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.01 1 force
execute if score #q daisukes.le matches 2 if score #odd daisukes.le matches 0 run particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.005 1 force
execute if score #q daisukes.le matches 3.. run particle minecraft:flame ~ ~ ~ 0.08 0.08 0.08 0.01 1 force
execute if score #heat daisukes.le = #warn daisukes.le run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 0.6 1.5

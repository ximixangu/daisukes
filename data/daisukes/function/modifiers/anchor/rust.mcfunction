scoreboard players set #rust daisukes.anchor 0
scoreboard players operation #before daisukes.anchor = #links daisukes.anchor
scoreboard players remove #links daisukes.anchor 1
execute at @e[type=minecraft:marker,tag=daisukes.anchor_root,limit=1] positioned ^ ^2.59 ^ run playsound minecraft:block.chain.step block @a ~ ~ ~ 1 0.5
function daisukes:modifiers/anchor/snap

# Com a cada jugador que pot jugar (viu, en supervivencia o aventura)
execute unless score @s daisukes.cw matches 1.. run function daisukes:modifiers/clockwork/join
scoreboard players operation #me daisukes.cw = @s daisukes.cw
# No el veiem des de fa mes d'un tick (ha mort, era en creatiu o espectador, s'havia desconnectat): corda plena
scoreboard players operation #gap daisukes.cw = #now daisukes.cw
scoreboard players operation #gap daisukes.cw -= @s daisukes.cw_l
scoreboard players operation @s daisukes.cw_l = #now daisukes.cw
execute if score #gap daisukes.cw matches 2.. run function daisukes:modifiers/clockwork/absent
tag @s add daisukes.cw_me
function daisukes:modifiers/clockwork/turn
function daisukes:modifiers/clockwork/spend
function daisukes:modifiers/clockwork/level
function daisukes:modifiers/clockwork/key
execute if score #intro daisukes.cw matches 1.. run function daisukes:modifiers/clockwork/intro/tick
tag @s remove daisukes.cw_me

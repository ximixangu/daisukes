tellraw @a {"text":"Daisukes Challenge Datapack loaded!","color":"green"}

data modify storage daisukes:registry modifiers set value []

function #daisukes:register

data modify storage daisukes:state active set value "no_jump"
data modify storage daisukes:state active_index set value 0

scoreboard objectives add daisukes.timer dummy
scoreboard objectives add daisukes.random dummy
scoreboard objectives add daisukes.index dummy
scoreboard objectives add daisukes.engine dummy

scoreboard players set #active_index daisukes.index 0
scoreboard players set #engine_active daisukes.engine 1

function daisukes:engine/activate with storage daisukes:state

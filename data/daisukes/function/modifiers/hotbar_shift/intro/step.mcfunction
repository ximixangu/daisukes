scoreboard players operation #step daisukes.shift = #c daisukes.shift
# Clic que puja de to a cada casella
scoreboard players operation #pp daisukes.shift = #step daisukes.shift
scoreboard players add #pp daisukes.shift 8
execute store result storage daisukes:shift args.p float 0.1 run scoreboard players get #pp daisukes.shift
function daisukes:modifiers/hotbar_shift/intro/sound with storage daisukes:shift args
execute if score #d daisukes.shift matches 1 run bossbar set daisukes:shift name ["",{"text":"⇄ Sleight of Hand ⇄","color":"light_purple","bold":true},{"text":"   Select ","color":"gray"},{"score":{"name":"#step","objective":"daisukes.shift"},"color":"white","bold":true},{"text":" ←","color":"white","bold":true},{"text":"","color":"gray"}]
execute if score #d daisukes.shift matches 2 run bossbar set daisukes:shift name ["",{"text":"⇄ Sleight of Hand ⇄","color":"light_purple","bold":true},{"text":"   Select ","color":"gray"},{"score":{"name":"#step","objective":"daisukes.shift"},"color":"white","bold":true},{"text":" →","color":"white","bold":true},{"text":"","color":"gray"}]

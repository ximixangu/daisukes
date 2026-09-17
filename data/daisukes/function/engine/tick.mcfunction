scoreboard players add #timer daisukes.timer 1

execute if score #timer daisukes.timer matches 1000.. run function daisukes:engine/next2
execute if score #timer daisukes.timer matches 1000.. run scoreboard players set #timer daisukes.timer 0

function daisukes:engine/tick_execute with storage daisukes:state
execute if data storage daisukes:temp display_texts[0] run title @a actionbar {"nbt": "display_texts[]", "storage": "daisukes:temp", "separator": {"text": " + ", "color": "white", "bold": false}, "interpret": true}
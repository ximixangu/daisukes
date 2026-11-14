# JUMP i SNEAK: temps per pulsacio + 2. CLICK (des del nivell 2): + 4
execute store result score #i daisukes.rush run random value 5..7
execute if score #i daisukes.rush matches 7 if score #lv daisukes.rush matches 1 run scoreboard players set #i daisukes.rush 5
scoreboard players operation #t daisukes.rush += #b daisukes.rush
scoreboard players add #t daisukes.rush 2
execute if score #i daisukes.rush matches 7 run scoreboard players add #t daisukes.rush 2
execute if score #i daisukes.rush matches 5 run data modify storage daisukes:rush gen append value {a: 5, k: 0, s: [{text: "JUMP", color: "#7FE3FF"}], top: {text: "  JUMP", color: "#7FE3FF"}}
execute if score #i daisukes.rush matches 6 run data modify storage daisukes:rush gen append value {a: 6, k: 0, s: [{text: "SNEAK", color: "#7FE3FF"}], top: {text: "  SNEAK", color: "#7FE3FF"}}
execute if score #i daisukes.rush matches 7 run data modify storage daisukes:rush gen append value {a: 7, k: 0, s: [{text: "CLICK", color: "#7FE3FF"}], top: {text: "  CLICK", color: "#7FE3FF"}}

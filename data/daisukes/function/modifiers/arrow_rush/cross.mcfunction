$data modify storage daisukes:rush p.$(id).done append value {text: "✘  ", color: "#FF4D4D"}
scoreboard players remove #x daisukes.rush 1
execute if score #x daisukes.rush matches 1.. run function daisukes:modifiers/arrow_rush/cross with storage daisukes:rush tmp

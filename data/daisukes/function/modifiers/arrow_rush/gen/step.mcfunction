# Un pas: accio (15 %) o fletxa
execute store result score #r daisukes.rush run random value 1..100
execute if score #r daisukes.rush matches ..15 run function daisukes:modifiers/arrow_rush/gen/action
execute if score #r daisukes.rush matches 16.. run function daisukes:modifiers/arrow_rush/gen/arrow
scoreboard players remove #len daisukes.rush 1
execute if score #len daisukes.rush matches 1.. run function daisukes:modifiers/arrow_rush/gen/step

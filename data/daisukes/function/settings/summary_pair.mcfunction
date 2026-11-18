# Una fase del resum per fites (settings/summary_milestones): #t gran i #l petit (sense els de mes a l'inici),
# a daisukes:menu steps.s<#n> com a text: "3-2" si alterna, "3" si no
scoreboard players operation #t daisukes.math += #o daisukes.math
scoreboard players operation #l daisukes.math += #o daisukes.math
execute if score #max_count daisukes.config matches 1.. run scoreboard players operation #t daisukes.math < #max_count daisukes.config
execute if score #max_count daisukes.config matches 1.. run scoreboard players operation #l daisukes.math < #max_count daisukes.config
scoreboard players set #split daisukes.math 0
execute if score #l daisukes.math < #t daisukes.math run scoreboard players set #split daisukes.math 1
execute store result storage daisukes:menu step.n int 1 run scoreboard players get #n daisukes.math
execute store result storage daisukes:menu step.t int 1 run scoreboard players get #t daisukes.math
execute store result storage daisukes:menu step.l int 1 run scoreboard players get #l daisukes.math
function daisukes:settings/summary_step with storage daisukes:menu step

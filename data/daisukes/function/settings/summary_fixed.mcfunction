# Resum del mode fix (settings/summary): sempre #start_count, o el maxim si es mes petit
scoreboard players operation #t daisukes.math = #start_count daisukes.config
execute if score #max_count daisukes.config matches 1.. run scoreboard players operation #t daisukes.math < #max_count daisukes.config
execute store result storage daisukes:menu step.t int 1 run scoreboard players get #t daisukes.math
function daisukes:settings/summary_fixed_text with storage daisukes:menu step

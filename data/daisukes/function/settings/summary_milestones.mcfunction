# Resum del mode per fites (settings/summary): el nombre de cada fase, amb els de mes a l'inici i el maxim, com
# engine/progress/mode_milestones. Si alterna, els dos nombres (2-1). Per exemple: 1 · 2-1 · 2 · 3-2 · 3 · 4
scoreboard players operation #o daisukes.math = #start_count daisukes.config
scoreboard players remove #o daisukes.math 1
data remove storage daisukes:menu steps

scoreboard players set #n daisukes.math 1
scoreboard players set #t daisukes.math 1
scoreboard players set #l daisukes.math 1
function daisukes:settings/summary_pair
scoreboard players set #n daisukes.math 2
scoreboard players operation #t daisukes.math = #alternate_high daisukes.config
scoreboard players operation #l daisukes.math = #alternate_low daisukes.config
function daisukes:settings/summary_pair
scoreboard players set #n daisukes.math 3
scoreboard players operation #t daisukes.math = #nether_goals_count daisukes.config
scoreboard players operation #l daisukes.math = #nether_goals_count daisukes.config
function daisukes:settings/summary_pair
scoreboard players set #n daisukes.math 4
scoreboard players operation #t daisukes.math = #late_high daisukes.config
scoreboard players operation #l daisukes.math = #late_low daisukes.config
function daisukes:settings/summary_pair
scoreboard players set #n daisukes.math 5
scoreboard players operation #t daisukes.math = #stronghold_count daisukes.config
scoreboard players operation #l daisukes.math = #stronghold_count daisukes.config
function daisukes:settings/summary_pair
scoreboard players set #n daisukes.math 6
scoreboard players operation #t daisukes.math = #end_count daisukes.config
scoreboard players operation #l daisukes.math = #end_count daisukes.config
function daisukes:settings/summary_pair

function daisukes:settings/summary_milestones_text with storage daisukes:menu steps

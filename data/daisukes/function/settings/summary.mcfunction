# Resum de la configuracio en un text (daisukes:menu summary): el dialeg d'opcions el mostra a dalt i settings/announce
# el diu al xat quan algu la canvia. Per exemple, la de per defecte:
#   Daisuke's milestones: 1 · 2-1 · 2 · 3-2 · 3 · 4 — they change every 2 min, 1 min in the End — a death ends the challenge
data remove storage daisukes:menu args
data modify storage daisukes:menu summary set value {text: "", color: "white", extra: [{text: ""}, {text: " — ", color: "dark_gray"}, {text: ""}, {text: " — ", color: "dark_gray"}, {text: ""}]}

# Noms de les opcions, com al dialeg (half: la meitat, a l'End)
data modify storage daisukes:menu names set value {every: ["", "10 min", "15 min", "20 min", "30 min", "45 min", "1 hour"], change: ["", "30 s", "45 s", "1 min", "1 min 30 s", "2 min", "3 min", "4 min", "5 min"], half: ["", "15 s", "22 s", "30 s", "45 s", "1 min", "1 min 30 s", "2 min", "2 min 30 s"]}
execute store result storage daisukes:menu args.start int 1 run scoreboard players get #start_count daisukes.config
execute store result storage daisukes:menu args.max int 1 run scoreboard players get #max_count daisukes.config
execute store result storage daisukes:menu args.every int 1 run scoreboard players get #every_choice daisukes.config
execute store result storage daisukes:menu args.change int 1 run scoreboard players get #change_choice daisukes.config
function daisukes:settings/summary_names with storage daisukes:menu args

# 1. Quants n'hi ha alhora, segons el mode
execute if score #mode daisukes.config matches 1 run function daisukes:settings/summary_milestones
execute if score #mode daisukes.config matches 2 run function daisukes:settings/summary_time with storage daisukes:menu args
execute if score #mode daisukes.config matches 3 run function daisukes:settings/summary_fixed

# 2. Cada quant canvien
function daisukes:settings/summary_change with storage daisukes:menu args

# 3. Morir
execute if score #death_ends daisukes.config matches 1 run data modify storage daisukes:menu summary.extra[4].text set value "a death ends the challenge"
execute unless score #death_ends daisukes.config matches 1 run data modify storage daisukes:menu summary.extra[4].text set value "deaths don't end the challenge"

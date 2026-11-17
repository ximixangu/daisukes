$execute if score #lk daisukes.cw matches 0 run bossbar set daisukes:clockwork_$(n) color green
$execute if score #lk daisukes.cw matches 1 run bossbar set daisukes:clockwork_$(n) color yellow
$execute if score #lk daisukes.cw matches 2 run bossbar set daisukes:clockwork_$(n) color red
$execute if score #lk daisukes.cw matches 0..1 run bossbar set daisukes:clockwork_$(n) name {type: "object", object: "atlas", atlas: "minecraft:items", sprite: "item/trial_key"}
$execute if score #lk daisukes.cw matches 2 run bossbar set daisukes:clockwork_$(n) name {type: "object", object: "atlas", atlas: "minecraft:items", sprite: "item/ominous_trial_key"}

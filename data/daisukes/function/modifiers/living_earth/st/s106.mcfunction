# Blocs amb aquestes propietats: trial_spawner
scoreboard players set #k daisukes.earth 107
$data modify storage daisukes:earth s set value {Name: "$(name)", Properties: {}}
$execute if block ~ ~ ~ $(name)[ominous=true] run data modify storage daisukes:earth s.Properties.ominous set value "true"
$execute if block ~ ~ ~ $(name)[ominous=false] run data modify storage daisukes:earth s.Properties.ominous set value "false"
$execute if block ~ ~ ~ $(name)[trial_spawner_state=inactive] run data modify storage daisukes:earth s.Properties.trial_spawner_state set value "inactive"
$execute if block ~ ~ ~ $(name)[trial_spawner_state=waiting_for_players] run data modify storage daisukes:earth s.Properties.trial_spawner_state set value "waiting_for_players"
$execute if block ~ ~ ~ $(name)[trial_spawner_state=active] run data modify storage daisukes:earth s.Properties.trial_spawner_state set value "active"
$execute if block ~ ~ ~ $(name)[trial_spawner_state=waiting_for_reward_ejection] run data modify storage daisukes:earth s.Properties.trial_spawner_state set value "waiting_for_reward_ejection"
$execute if block ~ ~ ~ $(name)[trial_spawner_state=ejecting_reward] run data modify storage daisukes:earth s.Properties.trial_spawner_state set value "ejecting_reward"
$execute if block ~ ~ ~ $(name)[trial_spawner_state=cooldown] run data modify storage daisukes:earth s.Properties.trial_spawner_state set value "cooldown"

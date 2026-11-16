# trial_spawner
$execute if block ~ ~ ~ $(Name)[ominous=$(ominous),trial_spawner_state=$(trial_spawner_state)] run return 0
$setblock ~ ~ ~ $(Name)[ominous=$(ominous),trial_spawner_state=$(trial_spawner_state)] strict
return 1

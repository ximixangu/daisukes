# Una tecla: compta quan la prems (no mentre la mantens). L'etiqueta recorda si estava premuda.
# Si al mateix tick en prems mes d'una, es error (aixi no serveix aixafar-les totes alhora)
$execute unless predicate {condition: "minecraft:entity_properties", entity: "this", predicate: {type_specific: {type: "minecraft:player", input: {$(key): true}}}} run return run tag @s remove daisukes.rush_$(key)
$execute if score @s daisukes.rush_a matches $(n) run scoreboard players set #h daisukes.rush 1
$execute if entity @s[tag=daisukes.rush_$(key)] run return 0
$tag @s add daisukes.rush_$(key)
$execute if score @s daisukes.rush_a matches $(n) if score #p daisukes.rush matches 0 run return run scoreboard players set #p daisukes.rush 2
scoreboard players set #p daisukes.rush 1

# Macro, com a ombra: {pos: [x, y, z]} = on ha de saltar. Deixa un rastre de llum fins alla i hi apareix.
$particle minecraft:trail{color: [0.3, 0.9, 1.0], target: $(pos), duration: 8} ~ ~1 ~ 0.2 0.5 0.2 0 20 force
data modify entity @s Pos set from storage daisukes:shadow target.pos
tag @s add daisukes.shadow_armed
execute at @s run playsound minecraft:entity.illusioner.mirror_move record @a ~ ~ ~ 1 1.2

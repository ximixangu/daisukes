# Com al pols, mentre baixa: 0,6 blocs per tick, fins que topa amb terra o entra a l'aigua o la lava
execute if block ~ ~ ~ #daisukes:overcharge/liquid run return run function daisukes:modifiers/overcharge/pulse/land
execute unless block ~ ~-0.6 ~ #daisukes:overcharge/clear run return run function daisukes:modifiers/overcharge/pulse/land
particle minecraft:electric_spark ~ ~ ~ 0.06 0.06 0.06 0.02 5 force
particle minecraft:dust_color_transition{from_color: [0.8, 0.95, 1.0], to_color: [0.25, 0.6, 1.0], scale: 1.2} ~ ~-0.3 ~ 0.03 0.15 0.03 0 3 force
tp @s ~ ~-0.6 ~

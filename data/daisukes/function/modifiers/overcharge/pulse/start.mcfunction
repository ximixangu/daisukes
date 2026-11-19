# Un mob s'acaba de morir: el seu corrent baixa a terra i en un moment s'hi descarrega (pulse/tick). Avis: esclat
# blau i el so de carregar
execute summon minecraft:marker run function daisukes:modifiers/overcharge/pulse/setup
particle minecraft:electric_spark ~ ~ ~ 0.25 0.35 0.25 0.12 24 force
particle minecraft:dust_color_transition{from_color: [0.8, 0.95, 1.0], to_color: [0.25, 0.6, 1.0], scale: 1.4} ~ ~ ~ 0.2 0.3 0.2 0 10 force
playsound minecraft:block.respawn_anchor.charge hostile @a ~ ~ ~ 0.9 1.5
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.35 2

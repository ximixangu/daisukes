# S'oxida: cada fase canvia de color i toca la seva trompeta de coure (nou a la 26.1), cada cop mes aguda
execute if score #age daisukes.orb matches 30 run function daisukes:modifiers/orbital/copper/stage {item: "minecraft:exposed_copper", glow: 13211502, note: "block.note_block.trumpet_exposed", pitch: 0.8}
execute if score #age daisukes.orb matches 60 run function daisukes:modifiers/orbital/copper/stage {item: "minecraft:weathered_copper", glow: 7581838, note: "block.note_block.trumpet_weathered", pitch: 1.0}
execute if score #age daisukes.orb matches 90 run function daisukes:modifiers/orbital/copper/stage {item: "minecraft:oxidized_copper", glow: 5233080, note: "block.note_block.trumpet_oxidized", pitch: 1.2}

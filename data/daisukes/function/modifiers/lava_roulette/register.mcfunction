data modify storage daisukes:registry modifiers append value "lava_roulette"
data modify storage daisukes:texts map.lava_roulette set value {"text": "Lava Roulette", "color": "#FF7A1A", "bold": true}
data modify storage daisukes:texts desc.lava_roulette set value "A roulette keeps picking a block next to one of you. 2 s later every block of that type turns to lava for 6 s: stand on anything else."

# Hush (no et pots moure), Gorgun's Gaze (petrificat) i Heisenberg (no et deixa quiet) et deixarien sobre la lava
# sense poder-hi fer res, i Ice Run converteix en gel tot el que trepitges
data modify storage daisukes:registry incompatible.lava_roulette set value ["hush", "gorguns_gaze", "heisenberg", "glass_run"]

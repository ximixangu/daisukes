data modify storage daisukes:registry modifiers append value "living_earth"
data modify storage daisukes:texts map.living_earth set value {"text": "Living Earth", "color": "#8FBF5A", "bold": true}
data modify storage daisukes:texts desc.living_earth set value "What you break comes back black 4 s later: solid, twice as slow to break, and it drops nothing. Black torches, ladders and rails are only shadows. Blocks you place turn red and jump back to you after 2 s."

# Ice Run trenca els blocs de sota els peus i Heavy Blocks fa caure el que poses: amb aquest, tornarien negres o a l'inventari
data modify storage daisukes:registry incompatible.living_earth set value ["glass_run", "heavy_blocks"]

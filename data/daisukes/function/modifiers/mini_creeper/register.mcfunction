# Soul Escape (abans Creeper): cada mob que mates deixa anar la seva anima. Volta al teu voltant com un vex
# i es llanca contra tu fins a esclatar. Es trenca picant-la (clic esquerre o dret) i l'escut l'atura
data modify storage daisukes:registry modifiers append value "mini_creeper"
data modify storage daisukes:texts map.mini_creeper set value {"text": "Soul Escape", "color": "#4FD6F2", "bold": true}
data modify storage daisukes:texts desc.mini_creeper set value "Every mob you kill releases its soul. It circles you like a vex, then dives in and explodes: punch it (left or right click) or block it with a shield."

# Amb Short Arms no s'hi arriba, encadenat per Anchor no pots picar i amb Dunce no la veus venir
data modify storage daisukes:registry incompatible.mini_creeper set value ["no_arms", "anchor", "gerxu"]

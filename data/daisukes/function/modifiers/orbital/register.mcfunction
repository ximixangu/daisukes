data modify storage daisukes:registry modifiers append value "orbital"
data modify storage daisukes:texts map.orbital set value {"text": "Orbital", "color": "#B44DFF", "bold": true}
data modify storage daisukes:texts desc.orbital set value "Orbs keep popping up around you: hit them before they burst. Purple ones are deadly, the others hurt in their own way. Hit one while it still shines white for a shield."

# Amb Short Arms no s'hi arriba (1,3 blocs d'abast) i a Hush picar fa soroll i al silenci et castiga
data modify storage daisukes:registry incompatible.orbital set value ["no_arms", "hush"]

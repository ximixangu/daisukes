# Katamari: cada jugador es fa gran a poc a poc amb el que pica, el que mata i el que aixafa caminant. Com mes gran, mes
# aixafa (plantes, despres capcades i mobs prou febles), mes lluny arriba i mes de pressa va, pero menys hi cap
data modify storage daisukes:registry modifiers append value "katamari"
data modify storage daisukes:texts map.katamari set value {"text": "Katamari", "color": "#FF4FA3", "bold": true}
data modify storage daisukes:texts desc.katamari set value "Everything you mine, kill or roll over makes you bigger. Once you're big enough, you flatten what you walk through: plants, then treetops, then any mob weak enough. Sneak to tiptoe."
# Ctrl+Z nomes veu els blocs que piques a 5 blocs, i amb Katamari arribes molt mes lluny. Snake: la cua va casella a
# casella, i un jugador gran ocupa unes quantes caselles alhora (se la trepitjaria sol)
data modify storage daisukes:registry incompatible.katamari set value ["snake"]

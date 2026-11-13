data modify storage daisukes:registry modifiers append value "heisenberg"
data modify storage daisukes:texts map.heisenberg set value {"text": "Heisenberg", "color": "#A66BFF", "bold": true}
data modify storage daisukes:texts desc.heisenberg set value "Stand still for 1 s and you start blinking to random spots nearby, faster and faster, until you move again."

# Petrificat (Gorgun's Gaze) no es pot moure durant 8 s: saltaria sense parar i sense poder-hi fer res
data modify storage daisukes:registry incompatible.heisenberg set value ["gorguns_gaze"]

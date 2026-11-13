data modify storage daisukes:registry modifiers append value "heisenberg"
data merge storage daisukes:texts {map: {heisenberg: {"text": "Heisenberg", "color": "#A66BFF", "bold": true}}}

# Petrificat (Gorgun's Gaze) no es pot moure durant 5 s: saltaria sense parar i sense poder-hi fer res
data modify storage daisukes:registry incompatible.heisenberg set value ["gorguns_gaze"]

data modify storage daisukes:registry modifiers append value "no_jump"
data merge storage daisukes:texts {map: {no_jump: {"text":"Broken Legs", "color": "gray", "bold": true}}}
data modify storage daisukes:registry incompatible.no_jump set value ["laser_limbo"]
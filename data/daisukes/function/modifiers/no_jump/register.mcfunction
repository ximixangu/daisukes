data modify storage daisukes:registry modifiers append value "no_jump"
data modify storage daisukes:texts map.no_jump set value {"text": "Broken Legs", "color": "gray", "bold": true}
data modify storage daisukes:texts desc.no_jump set value "You can't jump at all. Stairs, slabs, ladders and water are your friends."
data modify storage daisukes:registry incompatible.no_jump set value ["laser_limbo"]

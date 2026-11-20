data modify storage daisukes:registry modifiers append value "living_earth"
data modify storage daisukes:texts map.living_earth set value {"text": "Living Earth", "color": "#8FBF5A", "bold": true}
data modify storage daisukes:texts desc.living_earth set value "Everything you break comes back 4 seconds later, pitch black and with the same shape. It flickers right before: until then you can walk through it, but if you're still inside, you suffocate. Black blocks take twice as long to break (leaves don't) and drop nothing; black torches, ladders and rails are just shadows you can't use. Put a block in the hole to stop it. Blocks you place turn red and pop back into your inventory after 2 seconds (things you use, like crafting tables or furnaces, stay)."

# Ice Run trenca els blocs de sota els peus (tornarien negres); amb Heavy Blocks el que poses cau
data modify storage daisukes:registry incompatible.living_earth set value ["ice_run", "heavy_blocks"]

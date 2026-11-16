data modify storage daisukes:registry modifiers append value "roots"
data modify storage daisukes:texts map.roots set value {"text": "Grasping Roots", "color": "#9C6B3C", "bold": true}
data modify storage daisukes:texts desc.roots set value "Now and then, roots burst out of the ground at everyone's feet at once. If you're already walking they miss you, but if you're standing still or sneaking they tie you down. While tied you can't jump or hit anything, and every step pulls on the roots: keep straining against the most stretched one until it snaps. A friend who isn't tied can chop them off with an axe."

# Amb Anchored ja vas lligat a una altra cosa
data modify storage daisukes:registry incompatible.roots set value ["anchor"]

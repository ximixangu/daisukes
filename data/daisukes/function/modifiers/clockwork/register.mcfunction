data modify storage daisukes:registry modifiers append value "clockwork"
data modify storage daisukes:texts map.clockwork set value {"text": "Clockwork", "color": "#D9A441", "bold": true}
data modify storage daisukes:texts desc.clockwork set value "A wind-up key sticks out of your back and its spring runs down fast, faster still when you move: the lower it gets, the slower you walk and mine, and at zero you freeze and it grinds. Spin to the right to wind it up (a friend standing behind you can help). A full wind holds for a while, but stop when it chimes or the spring snaps."
# Supersonic (sonic): a 10 vegades mes velocitat, la corda s'acabaria de cop; Inventory Weight, Crystal Bloom: tres lentituds
# alhora; Heisenberg: per donar corda t'estas quiet (i clavat, saltaries); Gorgun's Gaze: girar-te et faria mirar els ulls;
# Windswept: el vent gira amb tu i donar corda el faria anar boig; Ice Run: clavat sobre el gel, el gel es trenca
data modify storage daisukes:registry incompatible.clockwork set value ["sonic"]

data modify storage daisukes:registry modifiers append value "shadow"
data merge storage daisukes:texts {map: {shadow: {"text": "Shadow Beat", "color": "dark_aqua", "bold": true}}}

# Covid i Mini Creeper actuen sobre totes les entitats, i l'ombra tambe ho es
# (Covid et faria mal sempre i Mini Creeper hi penjaria creepers): no poden sortir junts
data modify storage daisukes:registry incompatible.shadow set value ["covid", "mini_creeper"]

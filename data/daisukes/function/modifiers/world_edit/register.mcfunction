# World Edit: parelles de caixes (una blava i una vermella) surten a les caselles veines de la de cada jugador i, al
# cap d'uns segons, s'intercanvien tots els blocs que tenen a dins (com un //swap del WorldEdit)
data modify storage daisukes:registry modifiers append value "world_edit"
data modify storage daisukes:texts map.world_edit set value {"text": "World Edit", "color": "#B48CFF", "bold": true}
data modify storage daisukes:texts desc.world_edit set value "Pairs of glowing boxes, one blue and one red, keep popping up right next to you. A few seconds later they swap every block inside them. Don't be in one when it happens."
# Ctrl+Z torna blocs a llocs concrets uns segons despres: si entremig s'han intercanviat, en trepitjaria o en regalaria
data modify storage daisukes:registry incompatible.world_edit set value ["living_earth"]

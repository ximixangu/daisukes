data modify storage daisukes:registry modifiers append value "anchor"
data modify storage daisukes:texts map.anchor set value {"text": "Anchored", "color": "#6FA8DC", "bold": true}
data modify storage daisukes:texts desc.anchor set value "Every so often an anchor slams down next to a player and chains them in the air: they can't break, build or hit, but they can still get hurt. Drop the item that glows in your hotbar (or inventory) to break a link; a friend's glowing item breaks two. More links as time goes on."

# La gravetat de la Lluna, salts i vols que no controles, teletransports a l'atzar, la pantalla negra en enlairar-se
# o haver de picar per treure't la patata: tot xoca amb estar encadenat a l'aire. I com que l'encadenat rep mal:
# a Orbital no pot picar les orbes (la lila mata), a Arrow Rush no pot fer CLICK i amb jeb_ no pot anar fins a l'ovella
data modify storage daisukes:registry incompatible.anchor set value ["moon", "balloon", "icarus", "hot_potato", "orbital"]

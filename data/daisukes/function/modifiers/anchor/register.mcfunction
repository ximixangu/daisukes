data modify storage daisukes:registry modifiers append value "anchor"
data modify storage daisukes:texts map.anchor set value {"text": "Anchored", "color": "#6FA8DC", "bold": true}
data modify storage daisukes:texts desc.anchor set value "Every so often an anchor slams down next to a player and chains them in the air: no breaking, building or hitting, but nothing can hurt them either. Drop the item that glows in your inventory to break a link; a friend's glowing item breaks two. More links as time goes on."

# La gravetat de la Lluna, salts i vols que no controles, teletransports a l'atzar, la pantalla negra en enlairar-se
# o haver de picar per treure't la patata: tot xoca amb estar encadenat a l'aire
data modify storage daisukes:registry incompatible.anchor set value ["moon", "icarus", "vertigo", "hot_potato"]

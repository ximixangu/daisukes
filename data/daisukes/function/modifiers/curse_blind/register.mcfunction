# Curse of the Blind (com la malediccio de The Binding of Isaac): tots els objectes que duus (i els de terra a prop)
# semblen un structure void. Funcionen igual; per saber que son, cal passar-hi el ratoli per sobre
data modify storage daisukes:registry modifiers append value "curse_blind"
data modify storage daisukes:texts map.curse_blind set value {"text": "Curse of the Blind", "color": "dark_purple", "bold": true}
data modify storage daisukes:texts desc.curse_blind set value "Every item you carry (and every item lying near you) looks like a Structure Void. They still work as usual: hover over one to see what it really is."
# Hotbar Shift tambe canvia l'aspecte dels objectes (item_model) i el desfa despres: es trepitjarien
data modify storage daisukes:registry incompatible.curse_blind set value ["hotbar_shift"]

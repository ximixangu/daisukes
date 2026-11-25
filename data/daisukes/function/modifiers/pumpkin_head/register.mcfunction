# Pumpkin Head: tothom porta una carbassa tallada al cap amb Curse of Binding (no se la pot treure i gairebe no hi
# veu). El que portava al cap es guarda dins la carbassa i hi torna quan s'acaba
data modify storage daisukes:registry modifiers append value "pumpkin_head"
data modify storage daisukes:texts map.pumpkin_head set value {"text": "Pumpkin Head", "color": "#F08C1E", "bold": true}
data modify storage daisukes:texts desc.pumpkin_head set value "A carved pumpkin with Curse of Binding gets stuck on everyone's head: it won't come off, and you can barely see through it. Your helmet comes back when this ends."
data modify storage daisukes:registry incompatible.uhc set value ["heartbound"]
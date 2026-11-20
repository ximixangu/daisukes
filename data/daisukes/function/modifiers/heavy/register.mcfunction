data modify storage daisukes:registry modifiers append value "heavy"
data modify storage daisukes:texts map.heavy set value {"text": "Chocoflaked", "color": "gray", "bold": true}
data modify storage daisukes:texts desc.heavy set value "Falls make the ground cave in under you: it sinks as many blocks as you fell, and once more when you drop into the hole. Small drops don't count."

# Amb Glass Run el terra et cau cada 2 segons i t'enfonsaries fins al fons
data modify storage daisukes:registry incompatible.heavy set value ["ice_run"]

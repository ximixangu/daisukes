data modify storage daisukes:registry modifiers append value "hotbar_shift"
data merge storage daisukes:texts {map: {hotbar_shift: {"text": "Sleight of Hand", "color": "light_purple", "bold": true}}}
data modify storage daisukes:texts desc.hotbar_shift set value "Your hotbar is shifted: the item you select is only for show, and what you really hold and use is the one a few slots to the side. The number and the direction come up at the top when it starts."

# No pot coincidir amb els altres modificadors que mouen la hotbar o la mà
data modify storage daisukes:registry incompatible.hotbar_shift set value ["hotbar_cycle", "item_drop"]

# Ender Mobs: els mobs (no els jugadors) salten com un enderman quan reben mal i els hostils, de tant en tant,
# perque si. On caiguin, continuen anant a per tu
data modify storage daisukes:registry modifiers append value "ender_mobs"
data modify storage daisukes:texts map.ender_mobs set value {"text": "Ender Mobs", "color": "#E079FA", "bold": true}
data modify storage daisukes:texts desc.ender_mobs set value "Mobs teleport a few blocks away whenever they take damage, just like endermen, and hostile ones also blink around now and then. Wherever they land, they keep coming for you."
# jeb_: si el toquen salta lluny, cau TNT, l'explosio el torna a tocar... i aixi sense parar
data modify storage daisukes:registry incompatible.ender_mobs set value ["jeb"]

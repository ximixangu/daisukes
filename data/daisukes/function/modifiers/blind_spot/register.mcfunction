data modify storage daisukes:registry modifiers append value "blind_spot"
data modify storage daisukes:texts map.blind_spot set value {"text": "Blind Spot", "color": "#FF8A3D", "bold": true}
data modify storage daisukes:texts desc.blind_spot set value "Invisible TNT charges are hidden all around you, wherever you go. Sneak to reveal the ones within 4 blocks (walking, you only spot them 1 block away); they stay marked for 10 s. Cover them with a block or shoot them."

# Teletransports, salts i presses que no controles, o la pantalla tapada, et fan trepitjar carregues sense poder-ho evitar
data modify storage daisukes:registry incompatible.blind_spot set value ["heisenberg", "enderman", "balloon", "sonic", "gerxu", "glass_run", "thunderstruck"]

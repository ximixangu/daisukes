# Soul Escape (abans Creeper): cada mob que mates deixa anar d'1 a 3 animes. Volten al teu voltant com un vex
# i es llancen contra tu fins a esclatar. Es trenquen picant-les (clic esquerre o dret) i l'escut les atura
data modify storage daisukes:registry modifiers append value "soul_escape"
data modify storage daisukes:texts map.soul_escape set value {"text": "Soul Escape", "color": "#4FD6F2", "bold": true}
data modify storage daisukes:texts desc.soul_escape set value "Every mob you kill releases one to three souls. They circle you like a vex, then dive in and explode: punch them (left or right click) or block them with a shield."

data modify storage daisukes:registry incompatible.soul_escape set value ["no_arms"]

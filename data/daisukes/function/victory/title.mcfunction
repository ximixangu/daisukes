# Cada tick durant el primer segon i mig de la victoria (victory/celebrate):
# "VICTORY!" lletra a lletra, cada lletra una nota mes aguda (escala de do major), i despres el titol sencer
scoreboard players add #title_step daisukes.victory 1

execute if score #title_step daisukes.victory matches 1 run function daisukes:victory/letter {text: "V", pitch: 0.707}
execute if score #title_step daisukes.victory matches 4 run function daisukes:victory/letter {text: "VI", pitch: 0.794}
execute if score #title_step daisukes.victory matches 7 run function daisukes:victory/letter {text: "VIC", pitch: 0.891}
execute if score #title_step daisukes.victory matches 10 run function daisukes:victory/letter {text: "VICT", pitch: 0.944}
execute if score #title_step daisukes.victory matches 13 run function daisukes:victory/letter {text: "VICTO", pitch: 1.059}
execute if score #title_step daisukes.victory matches 16 run function daisukes:victory/letter {text: "VICTOR", pitch: 1.189}
execute if score #title_step daisukes.victory matches 19 run function daisukes:victory/letter {text: "VICTORY", pitch: 1.335}
execute if score #title_step daisukes.victory matches 22 run function daisukes:victory/letter {text: "VICTORY!", pitch: 1.414}

# Titol sencer amb un flaix (blanc, groc i daurat), subtitol, fanfara i primera traca de petards
execute if score #title_step daisukes.victory matches 26 run function daisukes:victory/reveal
execute if score #title_step daisukes.victory matches 28 run title @a title {"text": "VICTORY!", "color": "yellow", "bold": true}
execute if score #title_step daisukes.victory matches 30 run title @a title {"text": "VICTORY!", "color": "gold", "bold": true}

execute if score #title_step daisukes.victory matches ..29 run schedule function daisukes:victory/title 1t replace

data modify storage daisukes:registry modifiers append value "hot_potato"
data merge storage daisukes:texts {map: {hot_potato: {"text": "Hot Potato 2", "color": "gold", "bold": true}}}
data modify storage daisukes:texts desc.hush set value "Get rid of the potato by punching other entities, which also resets the countdown to 10s."

# Covid i Mini Creeper actuen sobre totes les entitats, tambe sobre la patata (Covid faria mal a qui la porta)
data modify storage daisukes:registry incompatible.hot_potato set value ["covid", "mini_creeper"]

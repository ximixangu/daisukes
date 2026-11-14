# Cada segon (core/leftovers), nomes si Arrow Rush no esta actiu: caixes de clic que eren en chunks
# sense carregar i les etiquetes de qui estava desconnectat
execute if data storage daisukes:state {active: ["arrow_rush"]} run return 0
kill @e[type=minecraft:interaction,tag=daisukes.rush_box]
tag @a remove daisukes.rush_forward
tag @a remove daisukes.rush_left
tag @a remove daisukes.rush_backward
tag @a remove daisukes.rush_right
tag @a remove daisukes.rush_jump
tag @a remove daisukes.rush_sneak
tag @a remove daisukes.rush_clicked

# Cada segon mentre Kamikasheep no esta actiu: animals que van quedar marcats (la propera vegada es poden tornar a encendre)
execute if data storage daisukes:state {active: ["explosive_mob"]} run return 0
tag @e[tag=daisukes.kamikaze] remove daisukes.kamikaze

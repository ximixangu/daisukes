# Cada segon mentre Bone Voyage no esta actiu: esquelets que s'havien quedat en chunks sense carregar
execute if data storage daisukes:state {active: ["bone_voyage"]} run return 0
kill @e[type=minecraft:skeleton,tag=daisukes.voyage_skeleton]

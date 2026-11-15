# Cada segon mentre Heavy Blocks no esta actiu: markers de mirada que s'havien quedat en chunks sense carregar.
# (Era a la llista de leftovers sense existir, i aixo feia que Minecraft descartes la llista sencera)
execute if data storage daisukes:state {active: ["heavy_blocks"]} run return 0
kill @e[type=minecraft:marker,tag=daisukes.heavy_look]

data modify storage daisukes:registry modifiers append value "heartbound"
data modify storage daisukes:texts map.heartbound set value {"text": "Heartbound", "color": "#FC7812", "bold": true}
data modify storage daisukes:texts desc.heartbound set value "A creaking is bound to each of you: it only moves while nobody is looking at it, and it can't die. Its heart is buried nearby: listen for its beat, or hit the creaking to see where it leads. Dig it out and strike it three times (twice with an axe) to be free for 20 seconds, until the next one comes for you."

# Gorgun's Gaze et fa apartar la mirada (aqui l'has de mantenir); amb Gerxu no hi veus; amb Covid el creaking, sempre a prop,
# et posaria malalt; Living Earth tornaria a posar el cor (com a bloc d'abans) quan s'acabes
data modify storage daisukes:registry incompatible.heartbound set value ["gorguns_gaze", "gerxu", "covid", "living_earth"]

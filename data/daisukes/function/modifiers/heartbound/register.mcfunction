data modify storage daisukes:registry modifiers append value "heartbound"
data modify storage daisukes:texts map.heartbound set value {"text": "Heartbound", "color": "#FC7812", "bold": true}
data modify storage daisukes:texts desc.heartbound set value "A creaking is bound to each of you for the whole modifier: it only moves while nobody is looking at it, it can't die, and it's faster and hits harder than a normal one. If it falls behind, it comes back for you."

# Gorgun's Gaze et fa apartar la mirada (aqui l'has de mantenir); amb Gerxu no hi veus; amb Covid el creaking, sempre a prop,
# et posaria malalt
data modify storage daisukes:registry incompatible.heartbound set value ["gorguns_gaze", "gerxu", "covid"]

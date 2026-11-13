data modify storage daisukes:registry modifiers append value "shadow"
data modify storage daisukes:texts map.shadow set value {"text": "Shadow Beat", "color": "dark_aqua", "bold": true}
data modify storage daisukes:texts desc.shadow set value "Your shadow dances to a song. On some beats it leaps to where you'll be and strikes 2 beats later (2 hearts): change direction!"

# Abans no podia sortir amb Covid ni amb Creeper perque l'ombra (un mannequin) comptava com a mob.
# Ara tots dos ignoren #daisukes:non_mob (que inclou els mannequins), aixi que ja poden coincidir

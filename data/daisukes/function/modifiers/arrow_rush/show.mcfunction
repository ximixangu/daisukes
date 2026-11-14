# Centre: el pas que toca. A dalt: els fets (✔), el que toca (subratllat) i els que falten
# (els temps es tornen a posar sempre: un altre modificador els pot haver canviat)
title @s times 0 200 6
$title @s subtitle {"text": "", "bold": true, "extra": [{"nbt": "p.$(id).cur", "storage": "daisukes:rush", "interpret": true}]}
title @s title ""
$bossbar set daisukes:rush_$(id) name ["", {"nbt": "p.$(id).done[]", "storage": "daisukes:rush", "interpret": true, "separator": ""}, {"text": "", "bold": true, "underlined": true, "extra": [{"nbt": "p.$(id).cur", "storage": "daisukes:rush", "interpret": true}]}, {"nbt": "p.$(id).rest[].top", "storage": "daisukes:rush", "interpret": true, "separator": ""}]

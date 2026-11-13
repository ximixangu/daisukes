# Macro: {key: "modificador"}. Afegeix el nom del modificador a la llista de l'actionbar / bossbar,
# i a la del xat amb la descripcio quan s'hi passa el ratoli per sobre
$data modify storage daisukes:temp display_texts append from storage daisukes:texts map.$(key)
$data modify storage daisukes:temp chat_texts append value {"nbt": "map.$(key)", "storage": "daisukes:texts", "interpret": true, "hover_event": {"action": "show_text", "value": {"nbt": "desc.$(key)", "storage": "daisukes:texts", "interpret": true}}}

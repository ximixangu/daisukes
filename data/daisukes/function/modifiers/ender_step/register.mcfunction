data modify storage daisukes:registry modifiers append value "ender_step"
data modify storage daisukes:texts map.ender_step set value {"text": "Ender Step", "color": "#C77DFF", "bold": true}
data modify storage daisukes:texts desc.ender_step set value "Whenever you step into the next block, you blink over it to the one after (two further when sprinting). Jumping blinks you straight up. You climb 1-block steps on your own, and you can't walk off drops of more than 3."

# Broken Legs i Laser Limbo depenen de saltar (aqui saltar es un TP), Supersonic aniria massa rapid,
# Hush no sentiria els blocs saltats ni els salts, i un jugador petrificat (Gorgun's Gaze) podria saltar
data modify storage daisukes:registry incompatible.ender_step set value ["no_jump", "sonic"]

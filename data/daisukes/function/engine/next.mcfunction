# Canvi de modificadors: fora els actuals, tirada nova i s'activen
scoreboard players set #timer daisukes.timer 0

function daisukes:engine/deactivate_execute

function daisukes:engine/select_modifiers

function daisukes:engine/activate_execute

# So del canvi, la bossbar ensenya els modificadors nous i avis al xat (amb que fa cadascun)
data modify storage daisukes:temp countdown_label set value "Modifier change in "
function daisukes:engine/countdown/end
execute if data storage daisukes:temp chat_texts[0] run tellraw @a ["", {"text": "» ", "color": "dark_red", "bold": true}, {"text": "Now active: ", "color": "gray"}, {"nbt": "chat_texts[]", "storage": "daisukes:temp", "interpret": true, "separator": {"text": ", ", "color": "gray"}}, {"text": "  (hover for details)", "color": "dark_gray", "italic": true}]

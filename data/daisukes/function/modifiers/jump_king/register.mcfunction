# Jump King: l'espai ja no salta en premer-lo. Mantenir-lo carrega el salt (ajupit, quiet) i deixar-lo anar salta, mes
# alt i mes lluny com mes estona s'ha carregat, cap on prems WASD. Les parets et fan rebotar i les caigudes llargues
# t'estampen contra el terra un moment
data modify storage daisukes:registry modifiers append value "jump_king"
data modify storage daisukes:texts map.jump_king set value {"text": "Jump King", "color": "#F2C230", "bold": true}
data modify storage daisukes:texts desc.jump_king set value "Space doesn't jump anymore: hold it to crouch and charge, let go to leap. The longer you hold (just over a second at most), the higher and farther you fly, towards the WASD keys you're holding. Walls bounce you back, and long falls leave you splatted for a moment."
# Broken Legs: no s'hi pot saltar gens. Ender Step tambe treu el salt (saltar es un TP). Tanks: cada salt fa esclatar
# les mines, i amb Jump King per pujar un sol bloc ja cal saltar
data modify storage daisukes:registry incompatible.jump_king set value ["no_jump", "ender_step", "tank"]

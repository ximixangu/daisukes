# Torna l'objecte guardat a S; si S està ocupada, cau als peus del jugador (i l'agafa al moment)
data modify storage daisukes:shift x set from storage daisukes:shift e.item
$execute unless items entity @s hotbar.$(s) * run return run function daisukes:modifiers/hotbar_shift/write {slot:"hotbar.$(s)"}
function daisukes:modifiers/hotbar_shift/give

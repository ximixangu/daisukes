# La còpia de la mà buida torna a tenir la quantitat de l'objecte guardat (per si n'ha llençat)
$data modify storage daisukes:shift src set from storage daisukes:shift p."$(u)".item
function daisukes:modifiers/hotbar_shift/hand
$function daisukes:modifiers/hotbar_shift/write {slot:"hotbar.$(s)"}

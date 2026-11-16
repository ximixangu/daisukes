# La còpia falsa de T segueix l'objecte de veritat que té a la mà (quantitat, durabilitat, ballesta carregada...)
$function daisukes:modifiers/hotbar_shift/read {slot:"hotbar.$(s)"}
function daisukes:modifiers/hotbar_shift/strip
data modify storage daisukes:shift src set from storage daisukes:shift x
function daisukes:modifiers/hotbar_shift/fake
$function daisukes:modifiers/hotbar_shift/write {slot:"hotbar.$(t)"}

# Mou un objecte d'una casella a una altra i, si va disfressat, li treu la disfressa
$function daisukes:modifiers/hotbar_shift/read {slot:"$(from)"}
$item replace entity @s $(from) with air
function daisukes:modifiers/hotbar_shift/strip
$function daisukes:modifiers/hotbar_shift/write {slot:"$(to)"}

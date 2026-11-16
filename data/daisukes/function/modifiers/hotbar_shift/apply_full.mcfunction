data modify storage daisukes:shift x set from storage daisukes:shift b
function daisukes:modifiers/hotbar_shift/disguise
$function daisukes:modifiers/hotbar_shift/write {slot:"hotbar.$(s)"}
data modify storage daisukes:shift src set from storage daisukes:shift b
function daisukes:modifiers/hotbar_shift/fake
$function daisukes:modifiers/hotbar_shift/write {slot:"hotbar.$(t)"}
$function daisukes:modifiers/hotbar_shift/save {u:$(u),s:$(s),t:$(t)}

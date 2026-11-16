data modify storage daisukes:shift src set from storage daisukes:shift a
function daisukes:modifiers/hotbar_shift/hand
$function daisukes:modifiers/hotbar_shift/write {slot:"hotbar.$(s)"}
$function daisukes:modifiers/hotbar_shift/save {u:$(u),s:$(s),t:$(t)}

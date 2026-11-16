# black_candle_cake, blue_candle_cake, brown_candle_cake, candle_cake, cyan_candle_cake, deepslate_redstone_ore...
$execute if block ~ ~ ~ $(Name)[lit=$(lit)] run return 0
$setblock ~ ~ ~ $(Name)[lit=$(lit)] strict
return 1

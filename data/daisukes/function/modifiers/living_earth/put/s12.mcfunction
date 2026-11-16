# black_candle, blue_candle, brown_candle, candle, cyan_candle, gray_candle...
$execute if block ~ ~ ~ $(Name)[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)] run return 0
$setblock ~ ~ ~ $(Name)[candles=$(candles),lit=$(lit),waterlogged=$(waterlogged)] strict
return 1

# crafter
$execute if block ~ ~ ~ $(Name)[crafting=$(crafting),orientation=$(orientation),triggered=$(triggered)] run return 0
$setblock ~ ~ ~ $(Name)[crafting=$(crafting),orientation=$(orientation),triggered=$(triggered)] strict
return 1

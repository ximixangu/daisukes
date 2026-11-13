# Com el nuvol de la pocio. L'aigua nomes ocupa aire o plantes (mai un cofre, un llit, una llosa...):
# si on ha caigut hi ha un bloc, va al de sobre
execute if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~ ~ minecraft:water
execute unless block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run setblock ~ ~1 ~ minecraft:water
kill @s

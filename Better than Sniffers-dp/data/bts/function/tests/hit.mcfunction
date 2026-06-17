#particle angry_villager ~-2 ~-2 ~-2 ~2 ~2 ~2 1 100

execute at @s if block ~ ~ ~ #bts:foliage
execute at @s if block ~ ~ ~ air
execute if entity @s[dx=0] run say die !
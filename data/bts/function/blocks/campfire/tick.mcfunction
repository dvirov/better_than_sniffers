


execute if score .20tick.delay bool matches ..19 run return 0


execute as @s[type=armor_stand,tag=campfire] at @s on passengers run function bts:blocks/campfire/timer



#execute at @a as @e[distance=..30,type=armor_stand,tag=campfire,tag=placed] at @s unless block ~ ~0.2 ~ minecraft:campfire run kill @e[distance=..0.7,type=#bts:visuals]



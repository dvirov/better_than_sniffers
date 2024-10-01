execute at @a as @e[distance=..30,type=armor_stand,tag=campfire,tag=placed] at @s as @n[type=text_display,distance=..1] at @s run function bts:blocks/campfire/timer
execute at @a as @e[distance=..30,type=armor_stand,tag=campfire,tag=placed] at @s unless block ~ ~0.2 ~ minecraft:campfire run function bts:misc/kill

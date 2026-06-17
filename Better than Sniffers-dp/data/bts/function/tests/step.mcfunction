#say step
scoreboard players remove steps temp 1

#particle flame ~ ~ ~ .1 .1 .1 0 1
particle minecraft:angry_villager ~ ~ ~ .1 .1 .1 0 1

execute as @e[type=!player,type=!block_display,dx=0] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] positioned ~.99 ~.99 ~.99 unless function bts:tests/hit run kill @n[tag=slowcast]

tp ~ ~ ~

execute if score slowcast.steps temp matches 1.. positioned ^ ^ ^.1 run function bts:tests/step


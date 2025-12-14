#execute if block ~ ~ ~1 #bts:avoid_culling run setblock ~ ~ ~1 bedrock
#execute if block ~1 ~ ~ #bts:avoid_culling run setblock ~1 ~ ~ bedrock
#execute if block ~ ~ ~-1 #bts:avoid_culling run setblock ~ ~ ~-1 bedrock
#execute if block ~-1 ~ ~ #bts:avoid_culling run setblock ~-1 ~ ~ bedrock

# non
execute if block ~ ~ ~-1 #bts:avoid_culling if block ~ ~ ~1 #bts:avoid_culling as @s[tag=n-s] run data modify entity @s item.components.minecraft:item_model set value air
#north
execute unless block ~ ~ ~-1 #bts:avoid_culling if block ~ ~ ~1 #bts:avoid_culling as @s[tag=n-s] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_north"
#south
execute if block ~ ~ ~-1 #bts:avoid_culling unless block ~ ~ ~1 #bts:avoid_culling as @s[tag=n-s] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_south"
#both
execute unless block ~ ~ ~-1 #bts:avoid_culling unless block ~ ~ ~1 #bts:avoid_culling as @s[tag=n-s] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_north_south"

# non
execute if block ~-1 ~ ~ #bts:avoid_culling if block ~1 ~ ~ #bts:avoid_culling as @s[tag=w-e] run data modify entity @s item.components.minecraft:item_model set value air
#west
execute unless block ~-1 ~ ~ #bts:avoid_culling if block ~1 ~ ~ #bts:avoid_culling as @s[tag=w-e] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_west"
#east
execute if block ~-1 ~ ~ #bts:avoid_culling unless block ~1 ~ ~ #bts:avoid_culling as @s[tag=w-e] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_east"
#both
execute unless block ~-1 ~ ~ #bts:avoid_culling unless block ~1 ~ ~ #bts:avoid_culling as @s[tag=w-e] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_west_east"


# non
execute if block ~ ~-1 ~ #bts:avoid_culling if block ~ ~1 ~ #bts:avoid_culling as @s[tag=u-d] run data modify entity @s item.components.minecraft:item_model set value air
#up
execute unless block ~ ~-1 ~ #bts:avoid_culling if block ~ ~1 ~ #bts:avoid_culling as @s[tag=u-d] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_up"
#down
execute if block ~ ~-1 ~ #bts:avoid_culling unless block ~ ~1 ~ #bts:avoid_culling as @s[tag=u-d] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_down"
#both
execute unless block ~ ~-1 ~ #bts:avoid_culling unless block ~ ~1 ~ #bts:avoid_culling as @s[tag=u-d] run data modify entity @s item.components.minecraft:item_model set value "bts:cull_up_down"



execute if block ~ ~-.5 ~ campfire[lit=true] run scoreboard players add @s timer 1
execute if predicate bts:is_sunny_day run scoreboard players add @s timer 1
execute if predicate bts:world_event/hot_biome run scoreboard players add @s timer 1

# particles
execute if predicate bts:world_event/rng0.0001 run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 0

execute if score @s timer matches 24000.. on passengers run data modify entity @s item.components.minecraft:item_model set value "bts:3d_brick_dry"

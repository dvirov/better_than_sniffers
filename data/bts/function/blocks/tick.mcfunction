# run from main tick
# run as type=#bts:visuals,tag=custom_block 
execute if entity @s[tag=puddle] at @s run function bts:world_event/rain/dry

execute as @s[tag=plant] at @s run function bts:blocks/tick_grow

function bts:blocks/bricks/tick

function bts:blocks/campfire/tick


execute as @s[tag=crucible] at @s positioned ~ ~-0.3 ~ run function bts:blocks/crucible/recipe
execute as @s[tag=fletching] at @s positioned ~ ~-0.3 ~ run function bts:blocks/fletching/recipe
execute as @s[tag=alchemy] at @s positioned ~ ~-0.3 ~ run function bts:blocks/alchemy/recipe
execute as @s[tag=cooking] at @s positioned ~ ~-0.3 ~ run function bts:blocks/cooking/recipe

execute as @s[type=block_display,tag=custom_block,tag=!n-s,tag=!w-e,tag=!u-d] at @s positioned ~ ~-0.3 ~ on passengers run function bts:blocks/culling
 
scoreboard players add .20tick.delay delay 1
execute if score .20tick.delay delay matches 21.. run scoreboard players set .20tick.delay delay 0


function bts:blocks/kill
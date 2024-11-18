#run once when trigger from detect
execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail

setblock ~ ~ ~ barrel[facing=down]{CustomName:'["Cooking Pot  ",{"color":"white","text":"\\uF801\\uF80B\\uF808\\uD002"}]'}
function bts:blocks/cooking/set_grid
summon block_display ~0.5 ~1.1 ~0.5 {Tags:["custom_block"],Passengers:[{id:"minecraft:block_display",Tags:["custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.25f,-0.4f],scale:[0.8f,0.1f,0.8f]},block_state:{Name:"minecraft:green_stained_glass"}},{id:"minecraft:block_display",Tags:["custom_block","cooking"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.1f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:water_cauldron",Properties:{level:"3"}}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.1f,-0.5f],scale:[1f,1f,1f]}}
#execute as @e[type=block_display,distance=..30] at @s run function bts:blocks/light_update2

kill @s



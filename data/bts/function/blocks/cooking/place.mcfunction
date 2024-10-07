#run once when trigger from detect
execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail

setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"color":"white","text":"\\uF808\\uD002"}'}
function bts:blocks/cooking/set_grid
#summon block_display ~-0.5 ~-0.05 ~-0.5 {Motion:[-.0,0.0,0.0],Tags:["custom_block","cooking"],brightness:{sky:6,block:6},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:water_cauldron",Properties:{level:"3"}}}
summon block_display ~ ~ ~ {Tags:["custom_block"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:green_stained_glass",Properties:{}},transformation:[0.8000f,0.0000f,0.0000f,0.1250f,0.0000f,0.0100f,0.0000f,0.9375f,0.0000f,0.0000f,0.8000f,0.1250f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["custom_block"],brightness:{sky:0,block:0}},{id:"minecraft:block_display",block_state:{Name:"minecraft:water_cauldron",Properties:{level:"3"}},transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["custom_block","cooking"],brightness:{sky:0,block:0}}]}
execute as @e[type=block_display,distance=..30] at @s run function bts:blocks/light_update2

kill @s



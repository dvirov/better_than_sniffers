#run once when trigger from detect

execute unless block ~ ~ ~ #air run return run function bts:blocks/fail
execute if block ~ ~-1 ~ #air run return run function bts:blocks/fail
execute if block ~ ~-1 ~ campfire positioned ~.5 ~-.5 ~.5 if entity @e[distance=..0.1 ,type=marker,tag=bricks,limit=1] run return run function bts:blocks/fail


summon interaction ~.25 ~.01 ~.25 {width:.5f,height:0.0f,Tags:["bricks","custom_block","1"],Passengers:[{id:"minecraft:item_display",item_display:"ground",Tags:["custom_block","bricks"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}}]}
summon interaction ~.75 ~.01 ~.25 {width:.5f,height:0.0f,Tags:["bricks","custom_block","2"],Passengers:[{id:"minecraft:item_display",item_display:"ground",Tags:["custom_block","bricks"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}}]}
summon interaction ~.25 ~.01 ~.75 {width:.5f,height:0.0f,Tags:["bricks","custom_block","3"],Passengers:[{id:"minecraft:item_display",item_display:"ground",Tags:["custom_block","bricks"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}}]}
summon interaction ~.75 ~.01 ~.75 {width:.5f,height:0.0f,Tags:["bricks","custom_block","4"],Passengers:[{id:"minecraft:item_display",item_display:"ground",Tags:["custom_block","bricks"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}}]}


execute positioned ~.5 ~ ~.5 summon marker run function bts:blocks/bricks/place_extra



kill @s







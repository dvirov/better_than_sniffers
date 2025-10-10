execute unless block ~ ~-1 ~ farmland run return run function bts:blocks/fail
execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail
summon item_display ~ ~0.5 ~ {item_display:"ground",Tags:["custom_block","rice_plant","plant"],Passengers:[{id:"minecraft:block_display",Tags:["custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:water",Properties:{level:"0"}}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"bts:rice_stage0"}}}

execute if block ~ ~-1 ~ farmland run setblock ~ ~ ~ beetroots

kill @s

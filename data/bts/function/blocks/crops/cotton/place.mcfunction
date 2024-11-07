
execute if block ~ ~-1 ~ farmland run summon item_display ~ ~ ~ {item_display:"ground",Tags:["custom_block","cotton_plant"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"bts:cotton_stage0"}}}
execute if block ~ ~-1 ~ farmland run setblock ~ ~ ~ beetroots

kill @s

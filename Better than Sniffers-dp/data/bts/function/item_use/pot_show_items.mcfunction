tag @s add custom_block
tag @s add pot_display
#data modify entity @s transformation set value {left_rotation:[0f,0f,0f,0.1f],right_rotation:[0f,0f,0f,0.1f],translation:[0f,0.95f,0f],scale:[0.3f,0.3f,0.3f]}
data merge entity @s {billboard:"vertical",text:{},transformation:{left_rotation:[0f,0f,0f,0.1f],right_rotation:[0f,0f,0f,0.1f],translation:[0f,0.95f,0f],scale:[0.3f,0.3f,0.3f]}}

data modify entity @s item set from block ~ ~ ~ item
scoreboard players set @s countdown 60


#summon text_display ~ ~ ~ {billboard:"center",Tags:["custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:"text"}

#execute as @n[type=text_display] run function bts:item_use/pot_show_count

execute summon text_display run function bts:item_use/pot_show_count
ride @n[distance=..0,type=text_display] mount @s
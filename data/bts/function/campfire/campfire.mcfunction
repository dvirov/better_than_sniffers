execute as @s positioned ~ ~-1 ~ if entity @e[distance=..0.1,type=armor_stand,tag=placed] run return run function bts:campfire/campfire_fail
execute as @s positioned ~ ~-0.4 ~ if entity @e[distance=..0.1,type=armor_stand,tag=placed] run return run function bts:campfire/campfire_fail

tag @s add placed

execute if entity @e[distance=..0.1,type=armor_stand,tag=campfire,tag=placed] run summon text_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},billboard:"center",text:'"text"',text:'{"score":{"name":"@s","objective":"campfire_time"}}'}

setblock ~ ~ ~ minecraft:campfire[lit=false]
tag @s add placed
ride @n[type=text_display] mount @s
scoreboard players set @p campfire_place 0

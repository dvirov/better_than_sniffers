execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail

#execute as @s positioned ~ ~-1 ~ if entity @s[distance=..0.1,type=item_frame,tag=placed] run return run function bts:blocks/campfire/campfire_fail
#execute as @s positioned ~ ~-0.4 ~ if entity @s[distance=..0.1,type=item_frame,tag=placed] run return run function bts:blocks/campfire/campfire_fail


summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["campfire","custom_block"],attributes:[{id:"minecraft:generic.scale",base:0.7}],Pose:{LeftArm:[0f,0f,-215f],RightArm:[0f,0f,215f],LeftLeg:[0f,0f,180f],RightLeg:[0f,0f,180f]},DisabledSlots:4079166,CustomName:'" "'}
#execute if entity @e[distance=..0.1,type=armor_stand,tag=campfire,tag=placed] run 
summon text_display ~ ~ ~ {Tags:[custom_block],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},billboard:"center",text:'"text"',text:'{"score":{"name":"@s","objective":"campfire_time"}}'}
setblock ~ ~ ~ minecraft:campfire[lit=false]

ride @n[type=text_display] mount @n[type=armor_stand,tag=campfire]
scoreboard players set @p campfire_place 0

kill @s

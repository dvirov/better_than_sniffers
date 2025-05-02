execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail


summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["campfire","custom_block"],attributes:[{id:"minecraft:scale",base:0.7}],Pose:{LeftArm:[0f,0f,-215f],RightArm:[0f,0f,215f],LeftLeg:[0f,0f,180f],RightLeg:[0f,0f,180f]},DisabledSlots:4079166,CustomName:'" "'}
summon text_display ~ ~ ~ {billboard:"center",Tags:["campfire","custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:{"score":{"name":"@s","objective":"campfire_time"}}}
summon text_display ~ ~ ~ {billboard:"center",Tags:["campfire","custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:{"score":{"name":"@s","objective":"campfire_time"}}}
setblock ~ ~ ~ minecraft:campfire[lit=false]

ride @n[type=text_display] mount @n[type=armor_stand,tag=campfire]
#scoreboard players set @p campfire_place 0

kill @s

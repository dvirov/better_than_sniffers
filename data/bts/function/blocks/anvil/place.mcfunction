#run once when trigger from detect
execute unless block ~ ~ ~ air run return run function bts:blocks/fail

setblock ~ ~ ~ anvil
summon interaction ~ ~.95 ~.2 {width:0.6f,height:0.1f,Tags:["anvil","custom_block"]}
summon interaction ~ ~.95 ~-.2 {width:0.6f,height:0.1f,Tags:["anvil","custom_block"],Passengers:[{id:"minecraft:item_display",Glowing:1b,view_range:0.025f,billboard:"vertical",Tags:["custom_block","anvil_menu"],glow_color_override:4868168,transformation:{left_rotation:[-0.7f,0f,0f,-0.7f],right_rotation:[0f,0f,1.2f,1f],translation:[0f,-0.02f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"structure_void"}}}]}

summon armor_stand ~ ~.2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["custom_block","anvil"],Pose:{Head:[180f,0f,0f,],RightArm:[260f,300f,0f]},DisabledSlots:4079166}

kill @s



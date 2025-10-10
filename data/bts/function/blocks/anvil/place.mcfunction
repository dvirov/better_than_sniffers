#run once when trigger from detect
execute unless block ~ ~ ~ air run return run function bts:blocks/fail


setblock ~ ~ ~ barrel[facing=down]{CustomName:{text:"Anvil",extra:[{color:white,text:"            \uF807\uF80A\uF80A\uF808\uD004"}]}}
function bts:blocks/anvil/set_grid


summon block_display ~0.5 ~1.1 ~0.5 {Motion:[0.0,0.0,0.0],Tags:["custom_block","anvil"],Passengers:[{id:"minecraft:item_display",Tags:["custom_block","n-s"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.6f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}},{id:"minecraft:item_display",Tags:["custom_block","w-e"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.6f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}},{id:"minecraft:item_display",Tags:["custom_block","u-d"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.6f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.1f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:anvil"}}

#setblock ~ ~ ~ anvil
summon interaction ~.5 ~.95 ~.31 {width:.6f,height:0.07f,Tags:["anvil_main","anvil","custom_block"]}
summon interaction ~.5 ~.95 ~.69 {width:.6f,height:0.07f,Tags:["anvil_sub","anvil","custom_block"]}
#summon interaction ~ ~.95 ~-.2 {width:0.6f,height:0.1f,Tags:["anvil","custom_block"],Passengers:[{id:"minecraft:item_display",Glowing:1b,view_range:0.025f,billboard:"vertical",Tags:["custom_block","anvil_menu"],glow_color_override:4868168,transformation:{left_rotation:[-0.7f,0f,0f,-0.7f],right_rotation:[0f,0f,1.2f,1f],translation:[0f,-0.02f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"structure_void"}}}]}

#summon armor_stand ~ ~.2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["custom_block","anvil"],Pose:{Head:[180f,0f,0f,],RightArm:[260f,300f,0f]},DisabledSlots:4079166}

kill @s



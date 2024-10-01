#run once when trigger from detect
execute unless block ~ ~ ~ air run return run function bts:blocks/fail

setblock ~ ~ ~ anvil
summon interaction ~ ~.95 ~.2 {width:0.6f,height:0.1f,Tags:["anvil","custom_block"]}
summon armor_stand ~ ~.2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["custom_block","anvil"],Pose:{Head:[180f,0f,0f,],RightArm:[260f,300f,0f]},DisabledSlots:4079166}

kill @s



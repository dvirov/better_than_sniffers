#run once when trigger from detect
execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail

setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"color":"white","text":"\\uF808\\uD000"}'}
function bts:blocks/crucible/set_grid
summon block_display ~ ~ ~ {Motion:[-.0,0.0,0.0],Tags:["custom_block","crucible"],brightness:{sky:0,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:lava_cauldron",Properties:{lit:"true"}}}
execute as @e[type=block_display,distance=..30] at @s run function bts:blocks/light_update2

kill @s
#run once when trigger from detect
execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail

setblock ~ ~ ~ barrel[facing=down]{CustomName:'{"color":"white","text":"\\uF808\\uD001"}'}
function bts:blocks/fletching/set_grid
summon block_display ~ ~ ~ {Motion:[-.0,0.0,0.0],Tags:["custom_block","fletching"],brightness:{sky:4,block:4},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:fletching_table",Properties:{lit:"true"}}}

kill @s
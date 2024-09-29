#run once when trigger from detect

setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"color":"white","text":"\\uF808\\uD001"}'}
function bts:blocks/fletching/set_grid
summon block_display ~-0.5 ~-0.03 ~-0.5 {Motion:[-.0,0.0,0.0],Tags:["custom_block","fletching"],brightness:{sky:4,block:4},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:fletching_table",Properties:{lit:"true"}}}

kill @s
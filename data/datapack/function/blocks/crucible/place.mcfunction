#run once when trigger from detect

setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"color":"white","text":"\\uF807\\uF801\\uD000"}'}
function datapack:blocks/crucible/set_grid
summon block_display ~-0.51 ~-0.05 ~-0.51 {Motion:[-.0,0.0,0.0],Tags:["custom_block","crucible"],brightness:{sky:6,block:6},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.02f,1.02f,1.02f]},block_state:{Name:"minecraft:lava_cauldron",Properties:{lit:"true"}}}

kill @s
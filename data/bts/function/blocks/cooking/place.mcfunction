#run once when trigger from detect

setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"color":"white","text":"\\uF808 XXXXX"}'}
function bts:blocks/cooking/set_grid
#summon block_display ~-0.5 ~-0.05 ~-0.5 {Motion:[-.0,0.0,0.0],Tags:["custom_block","cooking"],brightness:{sky:6,block:6},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:water_cauldron",Properties:{level:"3"}}}
summon block_display ~-0.5 ~-0.03 ~-0.5 {Tags:["custom_block"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:green_stained_glass",Properties:{}},transformation:[0.8000f,0.0000f,0.0000f,0.1250f,0.0000f,0.0100f,0.0000f,0.9375f,0.0000f,0.0000f,0.8000f,0.1250f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["custom_block"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:water_cauldron",Properties:{level:"3"}},transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["custom_block","cooking"]}]}
kill @s



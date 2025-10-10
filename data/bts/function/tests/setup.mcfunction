#say setup
tag @s add slowcast
execute as @s at @s rotated as @p run rotate @s facing ^ ^ ^.1
data merge entity @s {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:stone_button",Properties:{face:"floor"}}}
#
scoreboard players operation @s slowcast.steps = maxSteps temp
scoreboard players operation @s slowcast.duration = duration temp
##scoreboard players set @s slowcast.steps 0
##scoreboard players set @s slowcast.duration 100
#
function bts:tests/temp_tick


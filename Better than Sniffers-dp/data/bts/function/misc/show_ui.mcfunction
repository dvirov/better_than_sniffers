


# control the screen effects like freeze
execute if score @s wetness matches 1.. run data modify storage screen main_effect append value "\uD101"
execute if score @s bar_temperature matches ..-70 run data modify storage screen main_effect append value "\uD100"




title @s title {interpret:true,storage:screen,nbt:main_effect}
title @p times 0 3s 1s
data remove storage screen main_effect

# shows all the custom bars on the player HUD like stamina,sanity,health,temperature

function bts:bars/bar_temp
function bts:bars/bar_sanity
execute unless predicate bts:is_not_breathing run function bts:bars/bar_stam
execute if predicate bts:is_not_breathing run function bts:bars/bar_stam_uw
function bts:bars/bar_health


title @s actionbar [{text:"\uF804      "},{"interpret":true,"nbt":"sanity","storage":"bts:bars"},{"interpret":true,"nbt":"temperature","storage":"bts:bars"},{"interpret":true,"nbt":"stamina","storage":"bts:bars"},\
{"shadow_color":1479816244,"interpret":true,"nbt":"head_hp","storage":"bts:bars"},\
{"shadow_color":1479816244,"interpret":true,"nbt":"l_arm_hp","storage":"bts:bars"},\
{"shadow_color":1479816244,"interpret":true,"nbt":"body_hp","storage":"bts:bars"},\
{"shadow_color":1479816244,"interpret":true,"nbt":"r_arm_hp","storage":"bts:bars"},\
{"shadow_color":1479816244,"interpret":true,"nbt":"l_leg_hp","storage":"bts:bars"},\
{"shadow_color":1479816244,"interpret":true,"nbt":"r_leg_hp","storage":"bts:bars"}]





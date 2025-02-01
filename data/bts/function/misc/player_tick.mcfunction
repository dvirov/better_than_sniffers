function bts:parkour/tick
function bts:misc/dynamic_lights/main
function bts:world_event/sound/tick

execute if predicate bts:sunrise run function bts:world_event/bars_calc/sanity_food_restore

execute unless items entity @s armor.feet *[custom_data={clear:1b}] run clear @s *[custom_data={clear:1b}]
execute unless items entity @s armor.feet * run item replace entity @s armor.feet with barrier[custom_data={clear:1b}, max_stack_size=1,item_model="bts:empty_armor_slot_boots",equippable={slot:"feet",dispensable:false,swappable:true,damage_on_hurt:false},hide_tooltip={}] 1
function bts:bars/effects/temperature_freeze





execute if entity @s[gamemode=!survival] run return 0
data modify storage bts:main temp set from entity @s UUID
data modify storage bts:main args.UUID0 set from storage bts:main temp[0]
data modify storage bts:main args.UUID1 set from storage bts:main temp[1]
data modify storage bts:main args.UUID2 set from storage bts:main temp[2]
data modify storage bts:main args.UUID3 set from storage bts:main temp[3]

function bts:bars/bar_sanity with storage bts:main args
function bts:bars/bar_temp with storage bts:main args
execute unless predicate bts:is_not_breathing run function bts:bars/bar_stam with storage bts:main args
execute if predicate bts:is_not_breathing run function bts:bars/bar_stam_uw with storage bts:main args


function bts:misc/newbars with storage bts:main args


function bts:parkour/tick
function bts:misc/dynamic_lights/main
function bts:world_event/sound/tick
function bts:world_event/tick



execute if score @s leave matches 1.. run function bts:misc/player_reloged
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_data":{place_air:1b}}}},distance=..6] at @s run function bts:blocks/place_air
execute store success score boolkill bool run kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}},distance=..6,limit=27]

# health managment functions
function bts:world_event/health/verify_health
execute if score @s health > @s previous.health run function bts:world_event/health/tick
execute if score @s heal.dialog matches 1.. run function bts:world_event/health/heal_item

execute if score @s anvil.cd matches 1.. run scoreboard players remove @s anvil.cd 1
execute if score @s storage_pot.cd matches 1.. run scoreboard players remove @s storage_pot.cd 1


function bts:blocks/crucible/clear
function bts:blocks/fletching/clear
function bts:blocks/cooking/clear
function bts:blocks/alchemy/clear
function bts:blocks/anvil/clear

execute if score @s sleeping matches ..0 unless score @s deathdetector matches 1 run function bts:world_event/sleeping
execute if score @s sleeping matches 1.. run scoreboard players set @s sleep.dialog 0
#execute if predicate bts:sunrise run function bts:world_event/bars_calc/sanity_food_restore

#execute unless items entity @s armor.feet *[custom_data={clear:1b}] run clear @s *[custom_data={clear:1b}]
#execute unless items entity @s armor.feet * run item replace entity @s armor.feet with barrier[custom_data={clear:1b},max_stack_size=1,item_model="bts:empty_armor_slot_boots",equippable={slot:"feet",equip_sound:"block.barrel.close",dispensable:false,swappable:true,damage_on_hurt:false},tooltip_display={hide_tooltip:true}] 1
execute if entity @s[scores={deathdetector=1..}] run function bts:misc/respawn

execute if score @s close.dialog matches 1.. run function bts:dialog/close_dialog

function bts:item_use/potions/effects/tick

execute if predicate bts:world_event/in_dark run function bts:world_event/in_dark
execute if predicate bts:world_event/in_light unless score @s time_in_dark matches ..0 run scoreboard players remove @s time_in_dark 1

execute if entity @s[gamemode=survival] run function bts:misc/show_ui


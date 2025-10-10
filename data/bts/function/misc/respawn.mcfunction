scoreboard players set @s deathdetector 0
data modify storage screen main_effect append value {bold:true,color:"red",italic:false,text:"You Have Died"}

function bts:item_use/potions/effects/clear_all_custom_effects
function bts:world_event/health/set_health_score
clear @s barrier

scoreboard players set @s time_in_dark 0


attribute @s minecraft:attack_damage base set 0.01
attribute @s minecraft:jump_strength base set 0.379
attribute @s minecraft:block_break_speed base set 0.5
attribute @s minecraft:waypoint_receive_range base set 0

scoreboard players set @s bar_temperature 1
scoreboard players remove @s bar_sanity_calc 100
scoreboard players set @s bar_stamina 21
scoreboard players add @s anvil.cd 0

scoreboard players enable @s close.dialog

advancement revoke @s only bts:challenges/hardcore



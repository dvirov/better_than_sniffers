scoreboard players set @s deathdetector 0
scoreboard players set @s time_in_dark 0


function bts:item_use/potions/effects/clear_all_custom_effects
clear @s barrier

attribute @s minecraft:attack_damage base set 0.01
attribute @s minecraft:jump_strength base set 0.379
attribute @s minecraft:block_break_speed base set 0.5
attribute @s minecraft:waypoint_receive_range base set 0

function bts:world_event/health/set_health_score
scoreboard players set @s bar_sanity_calc 2090
scoreboard players set @s bar_temperature 1
scoreboard players set @s bar_stamina 21
scoreboard players add @s anvil.cd 0


scoreboard players enable @s close.dialog
damage @s 0.0001
scoreboard players add @s custom.effect.restore_health 2
recipe give @s *

advancement grant @s only bts:challenges/hardcore
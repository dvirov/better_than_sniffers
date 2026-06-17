execute at @e[type=area_effect_cloud,tag=place_crafting] run fill ~ ~ ~ ~ ~ ~ crafting_table replace #bts:crafting_table_base
execute if entity @s[advancements={bts:trigger/sculpting_tool_used=false}] run return 0
scoreboard players remove @s scuklpting 1
execute if score @s scuklpting matches 1.. run return run advancement revoke @s only bts:trigger/subtrigger/sculpting_tool_used_cd
scoreboard players reset @s scuklpting
advancement revoke @s only bts:trigger/sculpting_tool_used

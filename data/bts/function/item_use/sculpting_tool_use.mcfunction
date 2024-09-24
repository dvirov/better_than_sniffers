advancement revoke @s only bts:trigger/subtrigger/sculpting_tool_used_cd

execute as @s anchored eyes run function bts:item_use/sculpting_tool

scoreboard players set @s scuklpting 2
advancement grant @s only bts:crafting_table
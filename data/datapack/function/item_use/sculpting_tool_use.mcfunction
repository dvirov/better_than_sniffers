advancement revoke @s only datapack:trigger/subtrigger/sculpting_tool_used_cd

execute as @s anchored eyes run function datapack:item_use/sculpting_tool

scoreboard players set @s scuklpting 2
advancement grant @s only datapack:crafting_table
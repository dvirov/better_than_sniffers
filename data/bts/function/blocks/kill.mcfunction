execute store success score boolkill bool run kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]
execute as @e[type=block_display,tag=custom_block,tag=crucible] at @s if block ~0.1 ~0.1 ~0.1 air run loot spawn ~ ~ ~ loot bts:crucible_drop
execute as @e[type=block_display,tag=custom_block] at @s if block ~0.1 ~0.1 ~0.1 air run kill @s

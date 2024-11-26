
execute store success score bool bool run clear @s barrier[custom_data={crucible:1b}]

execute if score bool bool matches 1 at @e[type=block_display,tag=custom_block,tag=crucible] positioned ~ ~-.3 ~ run function bts:blocks/crucible/set_grid
execute if score boolkill bool matches 1 at @e[type=block_display,tag=custom_block,tag=crucible] positioned ~ ~-.3 ~ run function bts:blocks/crucible/set_grid


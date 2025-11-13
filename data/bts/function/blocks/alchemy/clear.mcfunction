
execute store success score bool bool run clear @s barrier[custom_data={alchemy:1b}]
tag @s add this
execute if score bool bool matches 1 at @e[type=block_display,tag=custom_block,tag=alchemy] positioned ~ ~-.3 ~ run function bts:blocks/alchemy/set_grid
execute if score boolkill bool matches 1 at @e[type=block_display,tag=custom_block,tag=alchemy] positioned ~ ~-.3 ~ run function bts:blocks/alchemy/set_grid
tag @s remove this

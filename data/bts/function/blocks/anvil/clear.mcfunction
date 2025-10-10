
execute store success score bool bool run clear @s barrier[custom_data={anvil:1b}]

execute if score bool bool matches 1 at @e[type=block_display,tag=custom_block,tag=anvil] positioned ~ ~-.3 ~ run function bts:blocks/anvil/set_grid
execute if score boolkill bool matches 1 at @e[type=block_display,tag=custom_block,tag=anvil] positioned ~ ~-.3 ~ run function bts:blocks/anvil/set_grid


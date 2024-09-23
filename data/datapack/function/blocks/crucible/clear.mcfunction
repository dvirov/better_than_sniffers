
execute store success score bool bool run clear @s barrier[custom_data={"tag":"crucible"}]

execute if score bool bool matches 1 at @e[type=block_display,tag=custom_block,tag=crucible] positioned ~0.1 ~0.1 ~0.1 run function datapack:blocks/crucible/set_grid
execute if score boolkill bool matches 1 at @e[type=block_display,tag=custom_block,tag=crucible] positioned ~0.1 ~0.1 ~0.1 run function datapack:blocks/crucible/set_grid



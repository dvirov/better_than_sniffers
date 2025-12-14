# run from place (brick)

# set tags
tag @s add custom_block
tag @s add bricks


# set new placement if on campfire
execute at @s if block ~ ~-1 ~ #campfires as @e[type=#bts:visuals_no_displays,distance=...5,tag=bricks,limit=9] at @s run tp @s ~ ~-.5 ~

# place brick in random corner
execute store result score rng temp run random value 1..4
execute if score rng temp matches 1 as @n[tag=1] run function bts:blocks/bricks/add_brick
execute if score rng temp matches 2 as @n[tag=2] run function bts:blocks/bricks/add_brick
execute if score rng temp matches 3 as @n[tag=3] run function bts:blocks/bricks/add_brick
execute if score rng temp matches 4 as @n[tag=4] run function bts:blocks/bricks/add_brick
scoreboard players reset rng temp 
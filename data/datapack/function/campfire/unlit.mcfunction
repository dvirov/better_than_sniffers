#as armor stand
tag @s remove litme
execute at @s run fill ~ ~ ~ ~ ~ ~ campfire[lit=false] replace campfire[lit=true]
scoreboard players reset @s campfire_time_ticks

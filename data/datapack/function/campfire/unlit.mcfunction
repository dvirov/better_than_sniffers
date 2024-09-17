#as armor stand

clone ~ ~ ~ ~ ~ ~ 0 -64 0
execute at @s run fill ~ ~ ~ ~ ~ ~ campfire[lit=false] replace campfire[lit=true]

data modify block ~ ~ ~ Items set from block 0 -64 0 Items
data modify block ~ ~ ~ CookingTotalTimes set from block 0 -64 0 CookingTotalTimes
data modify block ~ ~ ~ CookingTimes set from block 0 -64 0 CookingTimes
setblock 0 -64 0 bedrock


tag @s remove litme
scoreboard players reset @s campfire_time_ticks

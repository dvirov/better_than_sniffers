#run once when trigger
execute unless block ~ ~ ~ air run return run function bts:blocks/fail

summon item_frame ~ ~ ~ {Facing:1b,Tags:["custom_block","fletching"]}
kill @s

execute as @e[type=item_frame,tag=custom_block,tag=fletching] at @s run function bts:blocks/fletching/place



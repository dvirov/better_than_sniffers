# as marker 


execute store result score num.tmp temp if entity @e[type=interaction,tag=custom_block,tag=!has_brick,distance=..0.5,limit=4]
execute if score num.tmp temp matches 4.. run function bts:blocks/bricks/empty

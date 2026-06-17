
execute if entity @s[type=item_display,tag=custom_block,tag=cotton_plant] at @s if block ~ ~ ~ #bts:block_breaker run function bts:blocks/crops/cotton/break
execute if entity @s[type=item_display,tag=custom_block,tag=rice_plant] at @s if block ~ ~ ~ #bts:block_breaker run function bts:blocks/crops/rice/break
execute if entity @s[type=interaction,tag=custom_block,tag=bricks] at @s if block ~ ~-.2 ~ #bts:block_breaker run function bts:blocks/bricks/break


execute if entity @s[type=#bts:visuals,tag=custom_block,tag=!campfire] at @s if block ~ ~-.2 ~ #bts:block_breaker run kill @s
execute if entity @s[type=#bts:visuals,tag=custom_block,tag=campfire] at @s if block ~ ~ ~ #bts:block_breaker run kill @s

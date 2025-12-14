#tellraw @p [{"text":"(1)"},{"text":"2"}]
#say §7(§3pass§7)
effect give @s minecraft:resistance 2 10 true
scoreboard players remove @s bar_stamina 1
execute unless entity @s[tag=roll] run rotate @s ~ 0
tag @s add roll
scoreboard players add @s raycast 1
execute if score @s raycast matches 25.. run tag @s remove roll
execute if score @s raycast matches 25.. run scoreboard players reset @s raycast 

execute if entity @s[x_rotation=80..90] run tag @s add reverse
#execute if entity @s[x_rotation=90] run tp @s ^ ^ ^ ~ ~
execute if entity @s[x_rotation=-10..80] unless entity @s[tag=reverse] run rotate @s ~ ~10

execute if entity @s[x_rotation=..90] if entity @s[tag=reverse] run rotate @s ~ ~-10

execute if entity @s[x_rotation=-90..0,tag=reverse] run scoreboard players reset @s raycast
execute if entity @s[x_rotation=-90..0,tag=reverse] run tag @s remove roll
execute if entity @s[x_rotation=-90..0,tag=reverse] run tag @s remove reverse




















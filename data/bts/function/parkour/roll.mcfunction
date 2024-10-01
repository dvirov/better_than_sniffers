#tellraw @p [{"text":"(1)"},{"text":"2"}]
#say §8(§7x§r2§8)


#tag @s add roll
scoreboard players add @s raycast 1
execute if score @s raycast matches 20.. run scoreboard players reset @s raycast 

execute if entity @s[x_rotation=90] run tag @s add reverse
execute if entity @s[x_rotation=90] run tp @s ^ ^ ^ ~ ~
execute if entity @s[x_rotation=-10..89] unless entity @s[tag=reverse] run tp @s ~ ~ ~ ~30 ~15
execute if entity @s[x_rotation=..90] if entity @s[tag=reverse] run tp @s ~ ~ ~ ~30 ~-15

execute if entity @s[x_rotation=-90..0,tag=reverse] run scoreboard players reset @s raycast
execute if entity @s[x_rotation=-90..0,tag=reverse] run tag @s remove reverse






















scoreboard players remove @s custom.effect.hunger 1
say hungertick
execute if score @s custom.effect.hunger matches 1.. run effect give @s hunger 1 200 true

execute if score @s custom.effect.hunger matches ..0 run effect clear @s hunger

#tellraw @a {color:red ,score:{name:"@s", objective:"custom.effect.hunger"}}
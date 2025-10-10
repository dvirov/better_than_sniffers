execute if block ~ ~ ~ #climbable run attribute @s gravity modifier add climb -0.085 add_value
execute unless block ~ ~ ~ #climbable run attribute @s gravity modifier remove climb
rotate @s facing entity @p[distance=..2]
execute if block ~ ~-1 ~ #minecraft:climbable unless block ~ ~2 ~ #climbable rotated ~ 0 unless block ^ ^-1 ^1 #bts:transparent run tp @s ^ ^ ^0.1


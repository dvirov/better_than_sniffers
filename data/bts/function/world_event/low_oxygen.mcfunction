scoreboard players remove @s oxygen_time 1
execute if score @s oxygen_time matches -200 run tellraw @s {"color":"gray","italic":false,"text":"It's hard to breath here"}
execute if score @s oxygen_time matches ..-600 run effect give @s nausea 10 0 true
execute if score @s oxygen_time matches ..-700 run effect give @s nausea 10 1 true
execute if score @s oxygen_time matches ..-800 run effect give @s nausea 10 2 true
execute if score @s oxygen_time matches ..-900 run effect give @s nausea 10 3 true
execute if score @s oxygen_time matches ..-1000 run effect give @s blindness 10 1 true
execute if score @s oxygen_time matches ..-1100 run damage @s 0.1 minecraft:in_wall



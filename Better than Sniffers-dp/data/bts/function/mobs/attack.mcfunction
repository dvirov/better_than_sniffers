execute on vehicle run effect give @s speed 20 3
#execute if entity @s[type=sniffer] on vehicle run attribute @s entity_interaction_range modifier add 1 2 add_value
execute store result score gtime.tmp temp run time query gametime
execute store result entity @s anger_end_time long 1 run scoreboard players operation gtime.tmp temp += .100 values
data modify entity @s angry_at set from entity @p UUID
attribute @s follow_range base set 15
tag @s add hurt_animal 
scoreboard players set @s timer 400
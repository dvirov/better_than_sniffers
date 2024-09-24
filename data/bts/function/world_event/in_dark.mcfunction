scoreboard players add @s time_in_dark 1
execute if score @s time_in_dark matches 1200.. run effect give @s darkness 10 0 true
execute if score @s time_in_dark matches 1700.. run effect give @s blindness 1 0 true
#execute if score @s time_in_dark matches 1700.. unless entity @e[type=vex,distance=..10] run summon vex ~ ~ ~ {Silent:1b,CustomNameVisible:1b,LifeTicks:100,CustomName:'"Nightmer"',active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:1b}]}

execute if score @s time_in_dark matches 600 run playsound minecraft:ambient.cave
execute if score @s time_in_dark matches 600 if predicate bts:word_event/rng0.2 run return run tellraw @s {"color":"red","text":"You feel an evil presence watching you"}
execute if score @s time_in_dark matches 600 if predicate bts:word_event/rng0.2 run return run tellraw @s {"color":"red","text":"Screams echo around you"}
execute if score @s time_in_dark matches 600 if predicate bts:word_event/rng0.2 run return run tellraw @s {"color":"red","text":"A horrible chill runs down your spine"}
execute if score @s time_in_dark matches 600 if predicate bts:word_event/rng0.2 run return run tellraw @s {"color":"red","text":"Your mind goes numb"}

execute if score @s time_in_dark matches 600 run tellraw @p {"color":"red","text":"\"It seems you spend too much time in the dark And your insanity begins to rise "} 

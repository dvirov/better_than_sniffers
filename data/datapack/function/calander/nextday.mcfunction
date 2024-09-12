scoreboard players add .day calander 1
scoreboard players add .dayinweek calander 1
scoreboard players add .dayinmonth calander 1
scoreboard players add .moonphase calander 1




execute if score .dayinweek calander matches 8 run scoreboard players set .dayinweek calander 1
execute if score .dayinmonth calander matches 16 run scoreboard players set .monthinyear calander 1
execute if score .monthinyear calander matches 5 run scoreboard players add .year calander 1
execute if score .monthinyear calander matches 5 run scoreboard players set .monthinyear calander 1
execute if score .moonphase calander matches 9 run scoreboard players set .moonphase calander 1


effect clear @a darkness
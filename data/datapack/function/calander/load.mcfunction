scoreboard objectives add calander dummy
scoreboard objectives add values dummy
scoreboard players add .moonphase calander 0
scoreboard players add .dayinweek calander 0
scoreboard players add .dayinmonth calander 0
scoreboard players add .monthinyear calander 0

scoreboard players set .1 values 1
execute unless score .year calander matches 1.. run scoreboard players set .year calander 1
execute unless score .moonphase calander matches 1.. run scoreboard players set .moonphase calander 1
execute unless score .monthinyear calander matches 1.. run scoreboard players set .monthinyear calander 1


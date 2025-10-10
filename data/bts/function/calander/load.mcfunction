scoreboard objectives add calander dummy
scoreboard objectives add values dummy
scoreboard players add .moonphase calander 0
scoreboard players add .dayinweek calander 0
scoreboard players add .dayinmonth calander 0
scoreboard players add .dayinyear calander 0
scoreboard players add .monthinyear calander 0

execute unless score .year calander matches 1.. run scoreboard players set .year calander 1
execute unless score .moonphase calander matches 1.. run scoreboard players set .moonphase calander 1
execute unless score .monthinyear calander matches 1.. run scoreboard players set .monthinyear calander 1

scoreboard players set .1 values 1
scoreboard players set .2 values 2
scoreboard players set .4 values 4
scoreboard players set .7 values 7
scoreboard players set .8 values 8
scoreboard players set .16 values 16
scoreboard players set .20 values 20
scoreboard players set .64 values 64
scoreboard players set .100 values 100

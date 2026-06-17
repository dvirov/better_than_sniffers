scoreboard objectives add calender dummy
scoreboard objectives add values dummy
#scoreboard players add .moonphase calender 0
#scoreboard players add .dayinweek calender 0
#scoreboard players add .dayinmonth calender 0
#scoreboard players add .dayinyear calender 0
#scoreboard players add .monthinyear calender 0

execute unless score .year calender matches 1.. run scoreboard players set .year calender 1
execute unless score .moonphase calender matches 1.. run scoreboard players set .moonphase calender 1
execute unless score .monthinyear calender matches 1.. run scoreboard players set .monthinyear calender 1

scoreboard players set .1 values 1
scoreboard players set .2 values 2
scoreboard players set .4 values 4
scoreboard players set .7 values 7
scoreboard players set .8 values 8
scoreboard players set .10 values 10
scoreboard players set .12 values 12
scoreboard players set .16 values 16
scoreboard players set .20 values 20
scoreboard players set .48 values 48
scoreboard players set .64 values 64
scoreboard players set .100 values 100
scoreboard players set .1000 values 1000

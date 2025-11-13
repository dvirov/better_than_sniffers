# run from tick function
scoreboard players add @a close.dialog 9999


## calculate calender
## prevent reset by mistake 
execute store result score .calender.clc temp run time query day
execute if score .calender.clc temp < .day calender run return fail

#### calculations
execute store result score .day calender run time query day

# calculate moonphase
# 8 days cycle
scoreboard players operation .moonphase calender = .day calender
scoreboard players operation .moonphase calender %= .8 values
scoreboard players operation .moonphase calender += .1 values

# calculate day in week 
# 7 days cycle 
scoreboard players operation .dayinweek calender = .day calender
scoreboard players operation .dayinweek calender %= .7 values
scoreboard players operation .dayinweek calender += .1 values

# calculate day in month 
# 16 days cycle 
scoreboard players operation .dayinmonth calender = .day calender
scoreboard players operation .dayinmonth calender %= .16 values
scoreboard players operation .dayinmonth calender += .1 values

# calculate day in year 
# 64 days cycle 
scoreboard players operation .dayinyear calender = .day calender
scoreboard players operation .dayinyear calender %= .64 values
scoreboard players operation .dayinyear calender += .1 values

# define seasons
execute if score .dayinyear calender matches 1..16 run scoreboard players set .season calender 1
execute if score .dayinyear calender matches 17..32 run scoreboard players set .season calender 2
execute if score .dayinyear calender matches 33..48 run scoreboard players set .season calender 3
execute if score .dayinyear calender matches 49..64 run scoreboard players set .season calender 4


# run from tick function
execute if predicate bts:sunrise run scoreboard players add @a close.dialog 9999


## calculate calender
## prevent reset by mistake 
execute store result score .calender.clc temp run time of overworld query day repetition
execute if score .calender.clc temp < .day calender run return fail

#### calculations
execute store result score .day calender run time of overworld query day repetition

# calculate moonphase
# 8 days cycle
#scoreboard players operation .moonphase calender = .day calender
#scoreboard players operation .moonphase calender %= .8 values
#scoreboard players operation .moonphase calender += .1 values

# calculate day in week 
# 7 days cycle 
#scoreboard players operation .dayinweek calender = .day calender
#scoreboard players operation .dayinweek calender %= .7 values
#scoreboard players operation .dayinweek calender += .1 values

# calculate day in month 
# 12 days cycle 
scoreboard players operation .dayinmonth calender = .day calender
scoreboard players operation .dayinmonth calender %= .12 values
scoreboard players operation .dayinmonth calender += .1 values

# calculate day in year 
# 48 days cycle 
scoreboard players operation .dayinyear calender = .day calender
scoreboard players operation .dayinyear calender %= .48 values
scoreboard players operation .dayinyear calender += .1 values

# define seasons
#spring
execute if score .dayinyear calender matches 1..12 run scoreboard players set .season calender 1
#summer
execute if score .dayinyear calender matches 13..24 run scoreboard players set .season calender 2
#fall
execute if score .dayinyear calender matches 25..36 run scoreboard players set .season calender 3
#winter
execute if score .dayinyear calender matches 37..48 run scoreboard players set .season calender 4


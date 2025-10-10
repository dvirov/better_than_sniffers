# run from tick function
scoreboard players add @a close.dialog 9999


## calculate calander
## prevent reset by mistake 
execute store result score .calander.clc temp run time query day
execute if score .calander.clc temp < .day calander run return fail

#### calculations
execute store result score .day calander run time query day

# calculate moonphase
# 8 days cycle
scoreboard players operation .moonphase calander = .day calander
scoreboard players operation .moonphase calander %= .8 values
scoreboard players operation .moonphase calander += .1 values

# calculate day in week 
# 7 days cycle 
scoreboard players operation .dayinweek calander = .day calander
scoreboard players operation .dayinweek calander %= .7 values
scoreboard players operation .dayinweek calander += .1 values

# calculate day in month 
# 16 days cycle 
scoreboard players operation .dayinmonth calander = .day calander
scoreboard players operation .dayinmonth calander %= .16 values
scoreboard players operation .dayinmonth calander += .1 values

# calculate day in year 
# 64 days cycle 
scoreboard players operation .dayinyear calander = .day calander
scoreboard players operation .dayinyear calander %= .64 values
scoreboard players operation .dayinyear calander += .1 values

# define seasons
execute if score .dayinyear calander matches 1..16 run scoreboard players set .season calander 1
execute if score .dayinyear calander matches 17..32 run scoreboard players set .season calander 2
execute if score .dayinyear calander matches 33..48 run scoreboard players set .season calander 3
execute if score .dayinyear calander matches 49..64 run scoreboard players set .season calander 4


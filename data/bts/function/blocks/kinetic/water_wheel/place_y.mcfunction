#run once when trigger from detect
#execute unless block ~ ~ ~ air run return run function bts:blocks/fail
setblock ~ ~1 ~ barrel[facing=down]{Lock:"§"} destroy
execute rotated ~ 0 run function animated_java:blueprinttest/summon/default


kill @s



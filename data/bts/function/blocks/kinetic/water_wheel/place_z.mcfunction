#run once when trigger from detect
#execute unless block ~ ~ ~ air run return run function bts:blocks/fail
setblock ~ ~ ~-.5 barrel[facing=down]{Lock:"§"} destroy
execute rotated 0 -90 run function animated_java:blueprinttest/summon/default

say placed

kill @s



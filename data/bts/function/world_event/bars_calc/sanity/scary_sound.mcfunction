execute store result score rng values run random value 1..100
execute if score rng values matches 1..5 run playsound ambient.cave master @s ^ ^ ^-2
execute if score rng values matches 6 run playsound entity.wither.spawn master @s ^ ^ ^-2
execute if score rng values matches 7 run playsound entity.wither.shoot master @s ^ ^ ^-2
execute if score rng values matches 8..14 run playsound entity.blaze.ambient master @s ^ ^ ^-2
execute if score rng values matches 15..20 run playsound entity.creaking.activate master @s ^ ^ ^-2
execute if score rng values matches 21..24 run playsound entity.creaking.twitch master @s ^ ^ ^-2
execute if score rng values matches 25..27 run playsound entity.creaking.spawn master @s ^ ^ ^-2
execute if score rng values matches 28..31 run playsound entity.creaking.step master @s ^ ^ ^-2
execute if score rng values matches 32..36 run playsound entity.creaking.death master @s ^ ^ ^-2
execute if score rng values matches 37..41 run playsound entity.vex.charge master @s ^ ^ ^-2
execute if score rng values matches 42..50 run playsound entity.creeper.primed master @s ^ ^ ^-2
execute if score rng values matches 51..56 run playsound ambient.soul_sand_valley.mood master @s ^ ^ ^-2
execute if score rng values matches 57..63 run playsound ambient.crimson_forest.mood master @s ^ ^ ^-2
execute if score rng values matches 64..65 run playsound entity.zombie.ambient master @s ^ ^ ^-2
execute if score rng values matches 66 run playsound music_disc.11 master @s ^ ^ ^-2
execute if score rng values matches 67..70 run playsound entity.bogged.ambient master @s ^ ^ ^-2
execute if score rng values matches 71..72 run playsound entity.elder_guardian.ambient master @s ^ ^ ^-2
execute if score rng values matches 73..75 run playsound entity.zoglin.ambient master @s ^ ^ ^-2
execute if score rng values matches 76..100 run playsound entity.zoglin.ambient master @s ^ ^ ^-2

scoreboard players set rng values 0
execute if block ~ ~ ~ air run summon slime ~ ~ ~ {Silent:1b,DeathLootTable:"bts:mobs/slime_rain",FallFlying:1b,Size:1,Rotation:[0F,90F],Tags:["slimerain"],CustomName:'"slime"',ArmorItems:[{},{},{id:"minecraft:elytra",count:1},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:generic.attack_damage",base:1},{id:"minecraft:generic.attack_speed",base:1},{id:"minecraft:generic.safe_fall_distance",base:100},{id:"minecraft:generic.scale",base:0.5}]}







#execute if block ~ ~ ~ air if predicate bts:word_event/rng0.01 run summon slime ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:blocks/carrots",Size:3,Tags:["slimerain"],active_effects:[{id:"minecraft:slow_falling",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.attack_damage",base:1},{id:"minecraft:generic.scale",base:0.5}]}

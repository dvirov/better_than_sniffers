gamerule randomTickSpeed 1
weather rain

execute positioned ~ ~ ~ if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
execute positioned ~32 ~ ~ if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
execute positioned ~32 ~ ~32 if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
execute positioned ~ ~ ~32 if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
execute positioned ~-32 ~ ~ if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
execute positioned ~-32 ~ ~-32 if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
execute positioned ~ ~ ~-32 if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
execute positioned ~-32 ~ ~32 if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
execute positioned ~32 ~ ~-32 if biome ~ ~ ~ #bts:biome run function bts:world_event/seasons/winter_fillbiome
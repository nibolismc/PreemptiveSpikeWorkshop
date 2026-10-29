setblock -405 34 1980 minecraft:air destroy

# overlapping spikes layout (same z as workshop, x + 512)
setblock -405 34 1971 minecraft:air destroy
setblock -405 34 1976 minecraft:air destroy
setblock -405 34 1981 minecraft:air destroy
fill -409 34 1969 -402 34 1969 minecraft:air
fill -409 34 1973 -402 34 1973 minecraft:air
fill -409 34 1979 -402 34 1979 minecraft:air

setblock -402 34 1968 minecraft:air destroy
setblock -403 34 1968 minecraft:air destroy
setblock -404 34 1968 minecraft:air destroy
setblock -405 34 1968 minecraft:air destroy
setblock -406 34 1968 minecraft:air destroy
setblock -407 34 1968 minecraft:air destroy
setblock -408 34 1968 minecraft:air destroy
setblock -409 34 1968 minecraft:air destroy

setblock -402 34 1983 minecraft:air destroy
setblock -403 34 1983 minecraft:air destroy
setblock -404 34 1983 minecraft:air destroy
setblock -405 34 1983 minecraft:air destroy
setblock -406 34 1983 minecraft:air destroy
setblock -407 34 1983 minecraft:air destroy
setblock -408 34 1983 minecraft:air destroy
setblock -409 34 1983 minecraft:air destroy

kill @e[type=minecraft:experience_orb]
kill @e[type=item,nbt={Item:{id:"minecraft:chest"}}]

scoreboard players set #qt_value_diff t_value 0 
execute positioned 402.5 39 1960.00 run execute as @e[type=minecraft:creeper,distance=..100] run scoreboard players add #qt_value_diff t_value 1
function practice:q_update_tvalue
execute positioned -402.5 49.00 1960.00 run tp @e[type=creeper, distance=..100] 9 9 9
execute positioned 9 9 9 run kill @e[type=creeper, distance=..1]
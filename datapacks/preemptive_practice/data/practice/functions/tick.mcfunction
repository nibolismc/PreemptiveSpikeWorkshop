execute as @a[tag=!joined] run function practice:join

kill @e[type=item,nbt={Item:{id:"minecraft:torch"}}]

# DEFAULT HOTBAR

# Chests in front
execute as @e[type=item,nbt={Item:{id:"minecraft:chest"}}] at @s if entity @p[distance=..2] run function practice:drop/chest_in_front
execute as @e[type=item,nbt={Item:{id:"minecraft:chest"}}] at @s if entity @p[distance=..2] run kill @s

# Mob spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] at @s if entity @p[distance=..2] run function practice:drop/spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] at @s if entity @p[distance=..2] run kill @s

# Chests behind
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_chest"}}] at @s if entity @p[distance=..2] run function practice:drop/chest_behind
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_chest"}}] at @s if entity @p[distance=..2] run kill @s

# Drop for info
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if entity @p[distance=..2] run function practice:drop/info
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if entity @p[distance=..2] run kill @s

# Exit
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_door"}}] at @s if entity @p[distance=..2] run function practice:drop/exit
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_door"}}] at @s if entity @p run kill @s


# SPAWNER HOTBAR

# Silverfish Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Silverfish Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/silverfish
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Silverfish Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# Cave Spider Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Cave Spider Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/cave_spider
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Cave Spider Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# Spider Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Spider Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/spider
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Spider Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# Skeleton Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull",tag:{display:{Name:'{"text":"Skeleton Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/skeleton
execute as @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull",tag:{display:{Name:'{"text":"Skeleton Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# Zombie Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:zombie_head",tag:{display:{Name:'{"text":"Zombie Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/zombie
execute as @e[type=item,nbt={Item:{id:"minecraft:zombie_head",tag:{display:{Name:'{"text":"Zombie Spawner","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# None
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"None","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/none
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"None","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s


# Back
execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/back
execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s


# CHEST HOTBAR

# -1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"-1","color":"red","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/minus_one
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"-1","color":"red","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# +1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"+1","color":"green","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/plus_one
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"+1","color":"green","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# Back
execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/back
execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

#HOTBAR INDEX

execute as @a[scores={hotbar_index=0}] run function practice:hotbar/empty
execute as @a[scores={hotbar_index=1}] run function practice:hotbar/default
execute as @a[scores={hotbar_index=2}] run function practice:hotbar/spawner
execute as @a[scores={hotbar_index=3}] run function practice:hotbar/chest

#during spikecheck
execute as @a[scores={hotbar_index=1..3}] run function practice:place_starterstaircase

#lobby on death
execute as @a[scores={deaths=1..}] run function practice:lobby


#ACTIONBAR

execute as @a[scores={actionbar=0}] run title @s actionbar {"text":""}
execute as @a[scores={actionbar=1}] run title @s actionbar {"text":"Chests in front","color":"gold"}
execute as @a[scores={actionbar=2}] run title @s actionbar {"text":"Mob spawner","color":"aqua"}
execute as @a[scores={actionbar=3}] run title @s actionbar {"text":"Chests behind","color":"gold"}

#DONT PLACE BLOCKS

execute as @a[scores={placed_chest=1..}] run function practice:place_starterstaircase
execute as @a[scores={placed_spawner=1..}] run function practice:place_starterstaircase
execute as @a[scores={placed_ender=1..}] run function practice:place_starterstaircase
execute as @a[scores={placed_door=1..}] run function practice:place_starterstaircase
execute as @a[scores={placed_banner=1..}] run function practice:place_starterstaircase
execute as @a[scores={placed_head=1..}] run function practice:place_starterstaircase
execute as @a[scores={placed_head=1..}] run tellraw @a [{"text":"[Warning]","color":"yellow","bold":true},{"text":" Placing some player heads makes the game lag and can cause it to crash!","color":"gray","bold":false}]
execute as @a[scores={placed_skeleton=1..}] run function practice:place_starterstaircase
execute as @a[scores={placed_zombie=1..}] run function practice:place_starterstaircase

scoreboard players set @a placed_chest 0
scoreboard players set @a placed_spawner 0
scoreboard players set @a placed_ender 0
scoreboard players set @a placed_door 0
scoreboard players set @a placed_banner 0
scoreboard players set @a placed_head 0
scoreboard players set @a placed_skeleton 0
scoreboard players set @a placed_zombie 0

#bossbar
bossbar set practice:chests_front players @a
bossbar set practice:mob_spawner players @a
bossbar set practice:chests_behind players @a
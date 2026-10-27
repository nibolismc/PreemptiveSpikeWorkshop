execute as @a[tag=!joined] run function practice:join

effect give @a minecraft:saturation 999999 255 true
effect give @a minecraft:resistance 999999 255 true

# DEFAULT HOTBAR

# Mob spawners
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/spawners
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] at @s if score @p[distance=..2] hotbar_index matches 10 run kill @s

# Chests layers
execute as @e[type=item,nbt={Item:{id:"minecraft:chest"}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/chest_layers
execute as @e[type=item,nbt={Item:{id:"minecraft:chest"}}] at @s if entity @p[distance=..2] run kill @s

# T Value
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"T value","color":"white","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 1 run function practice:drop/t_value
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"T value","color":"white","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 15 run kill @s

# Entities
execute as @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/armor_stand
execute as @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}}] at @s if entity @p[distance=..2] run kill @s

# Drop for info
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/info
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run kill @s

# Exit
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_door"}}] at @s if entity @p run function practice:drop/exit
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_door"}}] at @s if entity @p run kill @s

# MOB SPAWNERS
execute as @e[type=item,nbt={Item:{tag:{SpawnerID:1}}}] at @s if entity @p[distance=..2] run function practice:drop/spawner1
execute as @e[type=item,nbt={Item:{tag:{SpawnerID:1}}}] at @s if entity @p[distance=..2] run kill @s

execute as @e[type=item,nbt={Item:{tag:{SpawnerID:2}}}] at @s if entity @p[distance=..2] run function practice:drop/spawner2
execute as @e[type=item,nbt={Item:{tag:{SpawnerID:2}}}] at @s if entity @p[distance=..2] run kill @s

execute as @e[type=item,nbt={Item:{tag:{SpawnerID:3}}}] at @s if entity @p[distance=..2] run function practice:drop/spawner3
execute as @e[type=item,nbt={Item:{tag:{SpawnerID:3}}}] at @s if entity @p[distance=..2] run kill @s

# CHEST LAYERS
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=..0}] run function practice:drop/chest_in_front
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=..0}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=..0}] run function practice:drop/chest_between1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=..0}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=..0}] run function practice:drop/chest_between2
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=..0}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=..0}] run function practice:drop/chest_behind
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=..0}] run kill @s


execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run scoreboard players set @a chest_index 1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run scoreboard players set @a chest_index 2
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run scoreboard players set @a chest_index 3
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run scoreboard players set @a chest_index 4
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gold","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run kill @s



execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run scoreboard players set @a chest_index 1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/enable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run scoreboard players set @a chest_index 2
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/enable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run scoreboard players set @a chest_index 3
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/enable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run scoreboard players set @a chest_index 4
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/enable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s


execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run scoreboard players set @a chest_index 1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests in front","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run scoreboard players set @a chest_index 2
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #1","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run scoreboard players set @a chest_index 3
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests between #2","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run scoreboard players set @a chest_index 4
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Chests behind","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2,scores={sneak_check=1..}] run kill @s


# SPAWNER HOTBAR

execute as @e[type=item,nbt={Item:{tag:{spawneridx:0}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/silverfish
execute as @e[type=item,nbt={Item:{tag:{spawneridx:0}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run kill @s

execute as @e[type=item,nbt={Item:{tag:{spawneridx:1}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/cave_spider
execute as @e[type=item,nbt={Item:{tag:{spawneridx:1}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run kill @s

execute as @e[type=item,nbt={Item:{tag:{spawneridx:2}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/spider
execute as @e[type=item,nbt={Item:{tag:{spawneridx:2}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run kill @s

execute as @e[type=item,nbt={Item:{tag:{spawneridx:3}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/skeleton
execute as @e[type=item,nbt={Item:{tag:{spawneridx:3}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run kill @s

execute as @e[type=item,nbt={Item:{tag:{spawneridx:4}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/zombie
execute as @e[type=item,nbt={Item:{tag:{spawneridx:4}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run kill @s

execute as @e[type=item,nbt={Item:{tag:{spawneridx:5}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/none
execute as @e[type=item,nbt={Item:{tag:{spawneridx:5}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run kill @s

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

# Disable
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Disable layer (Crouch + Drop)","color":"red","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/disable_layer
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Disable layer (Crouch + Drop)","color":"red","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# Back
#execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 1..3 run function practice:drop/back
#execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s


# QUIZ DEFAULT HOTBAR

# Start
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Start","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 4 run function practice:drop/quiz_start
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Start","color":"green","italic":false}'}}}}] at @s run kill @s

# Settings
execute as @e[type=item,nbt={Item:{id:"minecraft:hopper_minecart",tag:{display:{Name:'{"text":"Settings","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 4 run function practice:drop/quiz_settings
execute as @e[type=item,nbt={Item:{id:"minecraft:hopper_minecart",tag:{display:{Name:'{"text":"Settings","italic":false}'}}}}] at @s run kill @s

# Drop for info
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if score @p[distance=..2] hotbar_index matches 4..5 run function practice:drop/info
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if score @p[distance=..2] hotbar_index matches 4..5 run kill @s

# Exit
#execute as @e[type=item,nbt={Item:{id:"minecraft:oak_door",tag:{display:{Name:'{"text":"Exit","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 0 run function practice:drop/exit
#execute as @e[type=item,nbt={Item:{id:"minecraft:oak_door",tag:{display:{Name:'{"text":"Exit","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 0 run kill @s


# QUIZ SETTINGS HOTBAR

# Number of rounds
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_sign",tag:{display:{Name:'{"text":"Number of rounds","color":"gold","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/number_of_rounds
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_sign",tag:{display:{Name:'{"text":"Number of rounds","color":"gold","italic":false}'}}}}] at @s run kill @s

# Overlapping spikes
execute as @e[type=item,nbt={Item:{tag:{QuizSetting:"overlap"}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_overlap
execute as @e[type=item,nbt={Item:{tag:{QuizSetting:"overlap"}}}] at @s run kill @s

# Summary
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Summary","color":"yellow","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_summary
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Summary","color":"yellow","italic":false}'}}}}] at @s run kill @s

# Spawners
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner",tag:{display:{Name:'{"text":"Spawners","color":"aqua","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_settings_spawners
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] at @s if score @p[distance=..2] hotbar_index matches 5..9 run kill @s

#Show round result
# Show correct answer
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Show round results","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_round_result
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Show round results","color":"green","italic":false}'}}}}] at @s run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:red_terracotta",tag:{display:{Name:'{"text":"Show round results","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_round_result
execute as @e[type=item,nbt={Item:{id:"minecraft:red_terracotta",tag:{display:{Name:'{"text":"Show round results","color":"red","italic":false}'}}}}] at @s run kill @s

# Show correct answer
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Show correct answers","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_correct_answer
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Show correct answers","color":"green","italic":false}'}}}}] at @s run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:red_terracotta",tag:{display:{Name:'{"text":"Show correct answers","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_correct_answer
execute as @e[type=item,nbt={Item:{id:"minecraft:red_terracotta",tag:{display:{Name:'{"text":"Show correct answers","color":"red","italic":false}'}}}}] at @s run kill @s

# Dungeon spawn with 2 chests
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Spawn dungeon chests","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_dungeon2ch
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Spawn dungeon chests","color":"green","italic":false}'}}}}] at @s run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:red_terracotta",tag:{display:{Name:'{"text":"Spawn dungeon chests","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_dungeon2ch
execute as @e[type=item,nbt={Item:{id:"minecraft:red_terracotta",tag:{display:{Name:'{"text":"Spawn dungeon chests","color":"red","italic":false}'}}}}] at @s run kill @s


# Back
#execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/back
#execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s run kill @s


# QUIZ ROUNDS HOTBAR

# -10
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"-10","color":"red","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/minus_ten
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"-10","color":"red","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s


# -1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"-1","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 6 run function practice:drop/minus_one
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"-1","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 6 run kill @s

# +1
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"+1","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 6 run function practice:drop/plus_one
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"+1","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 6 run kill @s

# +10
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"+10","color":"green","italic":false}'}}}}] at @s if entity @p[distance=..2] run function practice:drop/plus_ten
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"+10","color":"green","italic":false}'}}}}] at @s if entity @p[distance=..2] run kill @s

# Back
#execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 6 run function practice:drop/back
#execute as @e[type=item,nbt={Item:{id:"minecraft:black_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 6 run kill @s

# QUIZ SPAWNER SETTINGS

# Cave Spider Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Cave Spider Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_cave_spider
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Cave Spider Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s

# Spider Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Spider Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_spider
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Spider Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s

# Skeleton Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull",tag:{display:{Name:'{"text":"Skeleton Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_skeleton
execute as @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull",tag:{display:{Name:'{"text":"Skeleton Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s

# Zombie Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:zombie_head",tag:{display:{Name:'{"text":"Zombie Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_zombie
execute as @e[type=item,nbt={Item:{id:"minecraft:zombie_head",tag:{display:{Name:'{"text":"Zombie Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s

# None
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"No Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_none
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"No Spawner","italic":false,"color":"green"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s


# Cave Spider Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Cave Spider Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_cave_spider
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Cave Spider Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s

# Spider Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Spider Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_spider
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Spider Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s

# Skeleton Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Skeleton Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_skeleton
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Skeleton Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s

# Zombie Spawner
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Zombie Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_zombie
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"Zombie Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s

# None
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"No Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run function practice:drop/set_none
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"No Spawner","italic":false,"color":"red"}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 8 run kill @s


# QUIZ SUMMARY
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Show summary","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_summary_state
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Show summary","color":"green","italic":false}'}}}}] at @s run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:red_terracotta",tag:{display:{Name:'{"text":"Show summary","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 5 run function practice:drop/quiz_summary_state
execute as @e[type=item,nbt={Item:{id:"minecraft:red_terracotta",tag:{display:{Name:'{"text":"Show summary","color":"red","italic":false}'}}}}] at @s run kill @s


# QUIZ GAME HOTBAR

#Real
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Real","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 9 run function practice:drop/answer_real
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_concrete",tag:{display:{Name:'{"text":"Real","color":"green","italic":false}'}}}}] at @s run kill @s

#Fake
execute as @e[type=item,nbt={Item:{id:"minecraft:red_concrete",tag:{display:{Name:'{"text":"Fake","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 9 run function practice:drop/answer_fake
execute as @e[type=item,nbt={Item:{id:"minecraft:red_concrete",tag:{display:{Name:'{"text":"Fake","color":"red","italic":false}'}}}}] at @s run kill @s

# Quit
execute as @e[type=item,nbt={Item:{id:"minecraft:red_banner",tag:{display:{Name:'{"text":"Quit","color":"red","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 9 run function practice:drop/quiz_quit
execute as @e[type=item,nbt={Item:{id:"minecraft:red_banner",tag:{display:{Name:'{"text":"Quit","color":"red","italic":false}'}}}}] at @s run kill @s


scoreboard players set @a sneak_check 0

#HOTBAR INDEX

execute as @a[scores={hotbar_index=0}] run function practice:hotbar/empty
execute as @a[scores={hotbar_index=1}] run function practice:hotbar/default
execute as @a[scores={hotbar_index=2}] run function practice:hotbar/spawner
execute as @a[scores={hotbar_index=3}] run function practice:hotbar/numbers
execute as @a[scores={hotbar_index=4}] run function practice:hotbar/quiz_default
execute as @a[scores={hotbar_index=5}] run function practice:hotbar/quiz_settings
execute as @a[scores={hotbar_index=6}] run function practice:hotbar/numbers2
#execute as @a[scores={hotbar_index=7}] run function practice:hotbar/quiz_summary
execute as @a[scores={hotbar_index=8}] run function practice:hotbar/quiz_settings_spawners
execute as @a[scores={hotbar_index=9}] run function practice:hotbar/quiz_game
execute as @a[scores={hotbar_index=10}] run function practice:hotbar/spawners
execute as @a[scores={hotbar_index=11}] run function practice:hotbar/chest_layers
execute as @a[scores={hotbar_index=13}] run function practice:hotbar/quiz_overlap
execute as @a[scores={hotbar_index=14}] run function practice:hotbar/entities
execute as @a[scores={hotbar_index=15}] run function practice:hotbar/t_value
execute as @a[scores={hotbar_index=99}] run function practice:hotbar/loading

#during spikecheck
execute as @a[scores={hotbar_index=1..3}] run function practice:place_starterstaircase
execute as @a[scores={hotbar_index=10..12}] run function practice:place_starterstaircase
execute as @a[scores={hotbar_index=14..15}] run function practice:place_starterstaircase

#during spikequiz
execute as @a[scores={hotbar_index=4..9}] run function practice:place_starterstaircase_quiz
execute as @a[scores={hotbar_index=13}] run function practice:place_starterstaircase_quiz

#during lobby
execute as @a[scores={hotbar_index=0}] run function practice:place_lobby

#lobby on death
execute as @a[scores={deaths=1..}] run function practice:lobby

#ACTIONBAR

execute as @a[scores={actionbar=0}] run title @s actionbar {"text":""}
execute as @a[scores={actionbar=2}] run title @s actionbar {"text":"Mob spawners","color":"aqua"}
execute as @a[scores={actionbar=4}] run title @s actionbar {"text":"Spike Workshop","color":"green"}
execute as @a[scores={actionbar=5}] run title @s actionbar {"text":"Spike Quiz","color":"aqua"}
execute as @a[scores={actionbar=6}] run title @s actionbar {"text":"Settings","color":"white"}
execute as @a[scores={actionbar=7}] run title @s actionbar {"text":"Settings/Number of rounds","color":"gold"}
execute as @a[scores={actionbar=8}] run title @s actionbar {"text":"Settings/Summary","color":"yellow"}
execute as @a[scores={actionbar=9}] run title @s actionbar {"text":"Settings/Spawners","color":"aqua"}
execute as @a[scores={actionbar=10}] run title @s actionbar {"text":"Chest layers","color":"gold"}
execute as @a[scores={actionbar=11}] run title @s actionbar {"text":"Chest layers/in front","color":"gold"}
execute as @a[scores={actionbar=12}] run title @s actionbar {"text":"Chest layers/between #1","color":"gold"}
execute as @a[scores={actionbar=13}] run title @s actionbar {"text":"Chest layers/between #2","color":"gold"}
execute as @a[scores={actionbar=14}] run title @s actionbar {"text":"Chest layers/behind","color":"gold"}
execute as @a[scores={actionbar=15}] run title @s actionbar {"text":"Mob spawners/Spawner #1","color":"aqua"}
execute as @a[scores={actionbar=16}] run title @s actionbar {"text":"Mob spawners/Spawner #2","color":"aqua"}
execute as @a[scores={actionbar=17}] run title @s actionbar {"text":"Mob spawners/Spawner #3","color":"aqua"}
execute as @a[scores={actionbar=18}] run title @s actionbar {"text":"Settings/Overlapping spikes","color":"dark_aqua"}
execute as @a[scores={actionbar=19}] run title @s actionbar {"text":"Entities","color":"light_purple"}
execute as @a[scores={actionbar=20}] run title @s actionbar {"text":"T value","color":"white"}

#kill items

kill @e[type=item,nbt={Item:{id:"minecraft:oak_sign"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sign"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:birch_sign"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:target"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:torch"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_stained_glass_pane"}}]

#kill entities
kill @e[type=armor_stand]

tp @e[tag=ui_trash] ~ ~-10 ~
kill @e[tag=ui_trash]

tp @e[type=chicken] ~ ~-10 ~
kill @e[type=chicken]

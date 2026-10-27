# reset rows
fill -921 34 1969 -914 34 1969 minecraft:air
fill -921 34 1973 -914 34 1973 minecraft:air
fill -921 34 1979 -914 34 1979 minecraft:air
fill -921 34 1983 -914 34 1983 minecraft:air

# layer 1
scoreboard players set @a chest_index 1
scoreboard players operation @a chests_in_front = #vfront quiz_sum
function practice:drop/enable_layer

# layer 2
scoreboard players set @a chest_index 2
execute if score #vn quiz_sum matches 2.. run scoreboard players operation @a chests_between1 = #vb1 quiz_sum
execute if score #vn quiz_sum matches 2.. run function practice:drop/enable_layer
execute unless score #vn quiz_sum matches 2.. run scoreboard players set @a chests_between1 0
execute unless score #vn quiz_sum matches 2.. run function practice:drop/disable_layer

# layer 3
scoreboard players set @a chest_index 3
execute if score #vn quiz_sum matches 3 run scoreboard players operation @a chests_between2 = #vb2 quiz_sum
execute if score #vn quiz_sum matches 3 run function practice:drop/enable_layer
execute unless score #vn quiz_sum matches 3 run scoreboard players set @a chests_between2 0
execute unless score #vn quiz_sum matches 3 run function practice:drop/disable_layer

# layer 4
scoreboard players set @a chest_index 4
scoreboard players operation @a chests_behind = #vbeh quiz_sum
function practice:drop/enable_layer

# spawner slots (unused slot = no spawner)
scoreboard players set @a spawner_index 1
execute if score #vsp quiz_sum matches 0 run function practice:drop/silverfish
execute if score #vsp quiz_sum matches 1 run function practice:drop/cave_spider
execute if score #vsp quiz_sum matches 2 run function practice:drop/spider
execute if score #vsp quiz_sum matches 3 run function practice:drop/skeleton
execute if score #vsp quiz_sum matches 4 run function practice:drop/zombie
execute if score #vsp quiz_sum matches 5 run function practice:drop/none

scoreboard players set @a spawner_index 2
execute if score #vn quiz_sum matches 2.. if score #vsp2 quiz_sum matches 0 run function practice:drop/silverfish
execute if score #vn quiz_sum matches 2.. if score #vsp2 quiz_sum matches 1 run function practice:drop/cave_spider
execute if score #vn quiz_sum matches 2.. if score #vsp2 quiz_sum matches 2 run function practice:drop/spider
execute if score #vn quiz_sum matches 2.. if score #vsp2 quiz_sum matches 3 run function practice:drop/skeleton
execute if score #vn quiz_sum matches 2.. if score #vsp2 quiz_sum matches 4 run function practice:drop/zombie
execute if score #vn quiz_sum matches 2.. if score #vsp2 quiz_sum matches 5 run function practice:drop/none
execute unless score #vn quiz_sum matches 2.. run function practice:drop/none

scoreboard players set @a spawner_index 3
execute if score #vn quiz_sum matches 3 if score #vsp3 quiz_sum matches 0 run function practice:drop/silverfish
execute if score #vn quiz_sum matches 3 if score #vsp3 quiz_sum matches 1 run function practice:drop/cave_spider
execute if score #vn quiz_sum matches 3 if score #vsp3 quiz_sum matches 2 run function practice:drop/spider
execute if score #vn quiz_sum matches 3 if score #vsp3 quiz_sum matches 3 run function practice:drop/skeleton
execute if score #vn quiz_sum matches 3 if score #vsp3 quiz_sum matches 4 run function practice:drop/zombie
execute if score #vn quiz_sum matches 3 if score #vsp3 quiz_sum matches 5 run function practice:drop/none
execute unless score #vn quiz_sum matches 3 run function practice:drop/none

# cleanup
stopsound @a player minecraft:block.lever.click
stopsound @a player minecraft:entity.item.pickup
stopsound @a player minecraft:ui.cartography_table.take_result

scoreboard players set @a spawner_index 1
scoreboard players set @a chest_index 0
scoreboard players set @a hotbar_index 1
function practice:updatebossbar

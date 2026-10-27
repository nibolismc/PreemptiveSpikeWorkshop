# chests (workshop layout, x + 512)
execute if score @p quiz_front_idx matches 1.. run setblock -402 34 1969 minecraft:chest
execute if score @p quiz_front_idx matches 2.. run setblock -403 34 1969 minecraft:chest
execute if score @p quiz_front_idx matches 3.. run setblock -404 34 1969 minecraft:chest
execute if score @p quiz_front_idx matches 4.. run setblock -405 34 1969 minecraft:chest
execute if score @p quiz_front_idx matches 5.. run setblock -406 34 1969 minecraft:chest
execute if score @p quiz_front_idx matches 6.. run setblock -407 34 1969 minecraft:chest
execute if score @p quiz_front_idx matches 7.. run setblock -408 34 1969 minecraft:chest
execute if score @p quiz_front_idx matches 8.. run setblock -409 34 1969 minecraft:chest

execute if score @p quiz_b1_idx matches 1.. run setblock -402 34 1973 minecraft:chest
execute if score @p quiz_b1_idx matches 2.. run setblock -403 34 1973 minecraft:chest
execute if score @p quiz_b1_idx matches 3.. run setblock -404 34 1973 minecraft:chest
execute if score @p quiz_b1_idx matches 4.. run setblock -405 34 1973 minecraft:chest
execute if score @p quiz_b1_idx matches 5.. run setblock -406 34 1973 minecraft:chest
execute if score @p quiz_b1_idx matches 6.. run setblock -407 34 1973 minecraft:chest
execute if score @p quiz_b1_idx matches 7.. run setblock -408 34 1973 minecraft:chest
execute if score @p quiz_b1_idx matches 8.. run setblock -409 34 1973 minecraft:chest

execute if score @p quiz_b2_idx matches 1.. run setblock -402 34 1979 minecraft:chest
execute if score @p quiz_b2_idx matches 2.. run setblock -403 34 1979 minecraft:chest
execute if score @p quiz_b2_idx matches 3.. run setblock -404 34 1979 minecraft:chest
execute if score @p quiz_b2_idx matches 4.. run setblock -405 34 1979 minecraft:chest
execute if score @p quiz_b2_idx matches 5.. run setblock -406 34 1979 minecraft:chest
execute if score @p quiz_b2_idx matches 6.. run setblock -407 34 1979 minecraft:chest
execute if score @p quiz_b2_idx matches 7.. run setblock -408 34 1979 minecraft:chest
execute if score @p quiz_b2_idx matches 8.. run setblock -409 34 1979 minecraft:chest

execute if score @p quiz_beh_idx matches 1.. run setblock -402 34 1983 minecraft:chest
execute if score @p quiz_beh_idx matches 2.. run setblock -403 34 1983 minecraft:chest
execute if score @p quiz_beh_idx matches 3.. run setblock -404 34 1983 minecraft:chest
execute if score @p quiz_beh_idx matches 4.. run setblock -405 34 1983 minecraft:chest
execute if score @p quiz_beh_idx matches 5.. run setblock -406 34 1983 minecraft:chest
execute if score @p quiz_beh_idx matches 6.. run setblock -407 34 1983 minecraft:chest
execute if score @p quiz_beh_idx matches 7.. run setblock -408 34 1983 minecraft:chest
execute if score @p quiz_beh_idx matches 8.. run setblock -409 34 1983 minecraft:chest

# spawners
execute if score @p quiz_spawner_idx matches 0 run setblock -405 34 1971 minecraft:spawner{SpawnData:{id:"minecraft:silverfish"}} destroy
execute if score @p quiz_spawner_idx matches 1 run setblock -405 34 1971 minecraft:spawner{SpawnData:{id:"minecraft:cave_spider"}} destroy
execute if score @p quiz_spawner_idx matches 2 run setblock -405 34 1971 minecraft:spawner{SpawnData:{id:"minecraft:spider"}} destroy
execute if score @p quiz_spawner_idx matches 3 run setblock -405 34 1971 minecraft:spawner{SpawnData:{id:"minecraft:skeleton"}} destroy
execute if score @p quiz_spawner_idx matches 4 run setblock -405 34 1971 minecraft:spawner{SpawnData:{id:"minecraft:zombie"}} destroy

execute if score @p quiz_sp2_idx matches 0 run setblock -405 34 1976 minecraft:spawner{SpawnData:{id:"minecraft:silverfish"}} destroy
execute if score @p quiz_sp2_idx matches 1 run setblock -405 34 1976 minecraft:spawner{SpawnData:{id:"minecraft:cave_spider"}} destroy
execute if score @p quiz_sp2_idx matches 2 run setblock -405 34 1976 minecraft:spawner{SpawnData:{id:"minecraft:spider"}} destroy
execute if score @p quiz_sp2_idx matches 3 run setblock -405 34 1976 minecraft:spawner{SpawnData:{id:"minecraft:skeleton"}} destroy
execute if score @p quiz_sp2_idx matches 4 run setblock -405 34 1976 minecraft:spawner{SpawnData:{id:"minecraft:zombie"}} destroy

execute if score @p quiz_sp3_idx matches 0 run setblock -405 34 1981 minecraft:spawner{SpawnData:{id:"minecraft:silverfish"}} destroy
execute if score @p quiz_sp3_idx matches 1 run setblock -405 34 1981 minecraft:spawner{SpawnData:{id:"minecraft:cave_spider"}} destroy
execute if score @p quiz_sp3_idx matches 2 run setblock -405 34 1981 minecraft:spawner{SpawnData:{id:"minecraft:spider"}} destroy
execute if score @p quiz_sp3_idx matches 3 run setblock -405 34 1981 minecraft:spawner{SpawnData:{id:"minecraft:skeleton"}} destroy
execute if score @p quiz_sp3_idx matches 4 run setblock -405 34 1981 minecraft:spawner{SpawnData:{id:"minecraft:zombie"}} destroy

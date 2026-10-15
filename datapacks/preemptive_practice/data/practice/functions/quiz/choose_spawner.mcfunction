scoreboard players set #selected quiz_tmp -1
scoreboard players set #share quiz_tmp 0
scoreboard players set #silver quiz_tmp 500
scoreboard players set #cave quiz_tmp 0
scoreboard players set #spider_w quiz_tmp 0
scoreboard players set #skeleton_w quiz_tmp 0
scoreboard players set #zombie_w quiz_tmp 0
scoreboard players set #none_w quiz_tmp 0
scoreboard players set #count quiz_tmp 0

execute if score #cave_spider spawner_state matches 1 run scoreboard players set #cave quiz_tmp 300

execute if score #spider spawner_state matches 1 run scoreboard players add #count quiz_tmp 1
execute if score #skeleton spawner_state matches 1 run scoreboard players add #count quiz_tmp 1
execute if score #zombie spawner_state matches 1 run scoreboard players add #count quiz_tmp 1
execute if score #none spawner_state matches 1 run scoreboard players add #count quiz_tmp 1

execute if score #cave_spider spawner_state matches 1 if score #count quiz_tmp matches 0 run scoreboard players set #cave quiz_tmp 500

scoreboard players set #remaining quiz_tmp 1000
scoreboard players operation #remaining quiz_tmp -= #silver quiz_tmp
scoreboard players operation #remaining quiz_tmp -= #cave quiz_tmp

execute if score #count quiz_tmp matches 1.. run scoreboard players operation #share quiz_tmp = #remaining quiz_tmp
execute if score #count quiz_tmp matches 1.. run scoreboard players operation #share quiz_tmp /= #count quiz_tmp

execute if score #spider spawner_state matches 1 run scoreboard players operation #spider_w quiz_tmp = #share quiz_tmp
execute if score #skeleton spawner_state matches 1 run scoreboard players operation #skeleton_w quiz_tmp = #share quiz_tmp
execute if score #zombie spawner_state matches 1 run scoreboard players operation #zombie_w quiz_tmp = #share quiz_tmp
execute if score #none spawner_state matches 1 run scoreboard players operation #none_w quiz_tmp = #share quiz_tmp

scoreboard players operation #used quiz_tmp = #share quiz_tmp
scoreboard players operation #used quiz_tmp *= #count quiz_tmp
scoreboard players operation #leftover quiz_tmp = #remaining quiz_tmp
execute if score #count quiz_tmp matches 1.. run scoreboard players operation #leftover quiz_tmp -= #used quiz_tmp

execute if score #leftover quiz_tmp matches 1.. if score #spider spawner_state matches 1 run scoreboard players operation #spider_w quiz_tmp += #leftover quiz_tmp
execute if score #leftover quiz_tmp matches 1.. if score #spider spawner_state matches 0 if score #skeleton spawner_state matches 1 run scoreboard players operation #skeleton_w quiz_tmp += #leftover quiz_tmp
execute if score #leftover quiz_tmp matches 1.. if score #spider spawner_state matches 0 if score #skeleton spawner_state matches 0 if score #zombie spawner_state matches 1 run scoreboard players operation #zombie_w quiz_tmp += #leftover quiz_tmp
execute if score #leftover quiz_tmp matches 1.. if score #spider spawner_state matches 0 if score #skeleton spawner_state matches 0 if score #zombie spawner_state matches 0 if score #none spawner_state matches 1 run scoreboard players operation #none_w quiz_tmp += #leftover quiz_tmp

scoreboard players operation #end_silver quiz_tmp = #silver quiz_tmp

scoreboard players operation #end_cave quiz_tmp = #end_silver quiz_tmp
execute if score #cave_spider spawner_state matches 1 run scoreboard players operation #end_cave quiz_tmp += #cave quiz_tmp

scoreboard players operation #end_spider quiz_tmp = #end_cave quiz_tmp
execute if score #spider spawner_state matches 1 run scoreboard players operation #end_spider quiz_tmp += #spider_w quiz_tmp

scoreboard players operation #end_skeleton quiz_tmp = #end_spider quiz_tmp
execute if score #skeleton spawner_state matches 1 run scoreboard players operation #end_skeleton quiz_tmp += #skeleton_w quiz_tmp

scoreboard players operation #end_zombie quiz_tmp = #end_skeleton quiz_tmp
execute if score #zombie spawner_state matches 1 run scoreboard players operation #end_zombie quiz_tmp += #zombie_w quiz_tmp

scoreboard players operation #end_none quiz_tmp = #end_zombie quiz_tmp
execute if score #none spawner_state matches 1 run scoreboard players operation #end_none quiz_tmp += #none_w quiz_tmp

execute if score #cave_spider spawner_state matches 0 run scoreboard players operation #end_cave quiz_tmp = #end_silver quiz_tmp
execute if score #spider spawner_state matches 0 run scoreboard players operation #end_spider quiz_tmp = #end_cave quiz_tmp
execute if score #skeleton spawner_state matches 0 run scoreboard players operation #end_skeleton quiz_tmp = #end_spider quiz_tmp
execute if score #zombie spawner_state matches 0 run scoreboard players operation #end_zombie quiz_tmp = #end_skeleton quiz_tmp
execute if score #none spawner_state matches 0 run scoreboard players operation #end_none quiz_tmp = #end_zombie quiz_tmp

function practice:get_random

execute if score #selected quiz_tmp matches -1 if score #result random < #end_silver quiz_tmp run scoreboard players set #selected quiz_tmp 0

execute if score #selected quiz_tmp matches -1 if score #cave_spider spawner_state matches 1 if score #result random < #end_cave quiz_tmp run scoreboard players set #selected quiz_tmp 1

execute if score #selected quiz_tmp matches -1 if score #spider spawner_state matches 1 if score #result random < #end_spider quiz_tmp run scoreboard players set #selected quiz_tmp 2

execute if score #selected quiz_tmp matches -1 if score #skeleton spawner_state matches 1 if score #result random < #end_skeleton quiz_tmp run scoreboard players set #selected quiz_tmp 3

execute if score #selected quiz_tmp matches -1 if score #zombie spawner_state matches 1 if score #result random < #end_zombie quiz_tmp run scoreboard players set #selected quiz_tmp 4

execute if score #selected quiz_tmp matches -1 if score #none spawner_state matches 1 if score #result random < #end_none quiz_tmp run scoreboard players set #selected quiz_tmp 5

execute if score #selected quiz_tmp matches -1 if score #zombie spawner_state matches 1 run scoreboard players set #selected quiz_tmp 4
execute if score #selected quiz_tmp matches -1 if score #skeleton spawner_state matches 1 run scoreboard players set #selected quiz_tmp 3
execute if score #selected quiz_tmp matches -1 if score #spider spawner_state matches 1 run scoreboard players set #selected quiz_tmp 2
execute if score #selected quiz_tmp matches -1 if score #cave_spider spawner_state matches 1 run scoreboard players set #selected quiz_tmp 1
execute if score #selected quiz_tmp matches -1 run scoreboard players set #selected quiz_tmp 0

scoreboard players operation @a quiz_spawner_idx = #selected quiz_tmp

execute if score #selected quiz_tmp matches 0 run setblock -405 34 1980 minecraft:spawner{SpawnData:{id:"minecraft:silverfish"}} destroy
execute if score #selected quiz_tmp matches 1 run setblock -405 34 1980 minecraft:spawner{SpawnData:{id:"minecraft:cave_spider"}} destroy
execute if score #selected quiz_tmp matches 2 run setblock -405 34 1980 minecraft:spawner{SpawnData:{id:"minecraft:spider"}} destroy
execute if score #selected quiz_tmp matches 3 run setblock -405 34 1980 minecraft:spawner{SpawnData:{id:"minecraft:skeleton"}} destroy
execute if score #selected quiz_tmp matches 4 run setblock -405 34 1980 minecraft:spawner{SpawnData:{id:"minecraft:zombie"}} destroy
execute if score #selected quiz_tmp matches 5 run setblock -405 34 1980 minecraft:air destroy

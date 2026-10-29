playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 1.35

function practice:remove_chests

execute as @a[scores={hotbar_index=3,chest_index=1,chests_in_front=1..}] run scoreboard players remove @a chests_in_front 1
execute as @a[scores={hotbar_index=3,chest_index=2,chests_between1=1..}] run scoreboard players remove @a chests_between1 1
execute as @a[scores={hotbar_index=3,chest_index=3,chests_between2=1..}] run scoreboard players remove @a chests_between2 1
execute as @a[scores={hotbar_index=3,chest_index=4,chests_behind=1..}] run scoreboard players remove @a chests_behind 1

execute as @a[scores={hotbar_index=6,number_of_rounds=2..100}] run scoreboard players remove @a number_of_rounds 1
execute as @a[scores={hotbar_index=6,number_of_rounds=101}] run scoreboard players set @a number_of_rounds 100

execute if entity @a[scores={hotbar_index=13}] if score #spikes quiz_cfg matches 2.. run scoreboard players remove #spikes quiz_cfg 1

#Entities
execute as @a[scores={hotbar_index=16,spawnegg_index=0}] run execute positioned -916.5 39 1951.00 run kill @e[type=minecraft:zombie,distance=..1,limit=1]
execute as @a[scores={hotbar_index=16,spawnegg_index=1}] run execute positioned -916.5 39 1951.00 run kill @e[type=minecraft:skeleton,distance=..1,limit=1]
execute as @a[scores={hotbar_index=16,spawnegg_index=2}] run execute positioned -916.5 39 1951.00 run kill @e[type=minecraft:creeper,distance=..1,limit=1]
execute as @a[scores={hotbar_index=16,spawnegg_index=3}] run execute positioned -916.5 39 1951.00 run kill @e[type=minecraft:spider,distance=..1,limit=1]
execute as @a[scores={hotbar_index=16,spawnegg_index=4}] run execute positioned -916.5 39 1951.00 run kill @e[type=minecraft:bat,distance=..1,limit=1]
execute as @a[scores={hotbar_index=16,spawnegg_index=5}] run execute positioned -916.5 39 1951.00 run kill @e[type=minecraft:enderman,distance=..1,limit=1]
execute as @a[scores={hotbar_index=16,spawnegg_index=6}] run execute positioned -916.5 39 1951.00 run kill @e[type=minecraft:cave_spider,distance=..1,limit=1]
execute as @a[scores={hotbar_index=16,spawnegg_index=7}] run execute positioned -916.5 39 1951.00 run kill @e[type=minecraft:chest_minecart,distance=..1,limit=1]

execute as @a[scores={hotbar_index=16,spawnegg_index=0,zombie_count=1..}] run scoreboard players remove @s zombie_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=1,skeleton_count=1..}] run scoreboard players remove @s skeleton_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=2,creeper_count=1..}] run scoreboard players remove @s creeper_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=3,spider_count=1..}] run scoreboard players remove @s spider_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=4,bat_count=1..}] run scoreboard players remove @s bat_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=5,enderman_count=1..}] run scoreboard players remove @s enderman_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=6,cave_s_count=1..}] run scoreboard players remove @s cave_s_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=7,minecart_count=1..}] run scoreboard players remove @s minecart_count 1

scoreboard players set Zombies: workshop_sb 17
scoreboard players set Skeletons: workshop_sb 16
scoreboard players set Creepers: workshop_sb 15
scoreboard players set Spiders: workshop_sb 14
scoreboard players set Bats: workshop_sb 13
scoreboard players set Endermen: workshop_sb 12
scoreboard players set piders: workshop_sb 11
scoreboard players set Minecarts: workshop_sb 10

function practice:updatebossbar
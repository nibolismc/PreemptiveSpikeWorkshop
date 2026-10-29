playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0.75

execute as @a[scores={hotbar_index=3,chest_index=1,chests_in_front=..7}] run scoreboard players add @a chests_in_front 1
execute as @a[scores={hotbar_index=3,chest_index=2,chests_between1=..7}] run scoreboard players add @a chests_between1 1
execute as @a[scores={hotbar_index=3,chest_index=3,chests_between2=..7}] run scoreboard players add @a chests_between2 1
execute as @a[scores={hotbar_index=3,chest_index=4,chests_behind=..7}] run scoreboard players add @a chests_behind 1

function practice:add_chests

execute as @a[scores={hotbar_index=6,number_of_rounds=100}] run scoreboard players set @a number_of_rounds 101
execute as @a[scores={hotbar_index=6,number_of_rounds=..99}] run scoreboard players add @a number_of_rounds 1

execute as @a[scores={hotbar_index=6}] store result bossbar practice:round value run scoreboard players get @s number_of_rounds

execute if entity @a[scores={hotbar_index=13}] if score #spikes quiz_cfg matches ..2 run scoreboard players add #spikes quiz_cfg 1

#Entities
execute as @a[scores={hotbar_index=16,spawnegg_index=0,zombie_count=..2}] run summon minecraft:zombie -916.5 39 1951.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}
execute as @a[scores={hotbar_index=16,spawnegg_index=1,skeleton_count=..2}] run summon minecraft:skeleton -916.5 39 1951.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}
execute as @a[scores={hotbar_index=16,spawnegg_index=2,creeper_count=..2}] run summon minecraft:creeper -916.5 39 1951.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}
execute as @a[scores={hotbar_index=16,spawnegg_index=3,spider_count=..2}] run summon minecraft:spider -916.5 39 1951.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}
execute as @a[scores={hotbar_index=16,spawnegg_index=4,bat_count=..2}] run summon minecraft:bat -916.5 39 1951.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}
execute as @a[scores={hotbar_index=16,spawnegg_index=5,enderman_count=..2}] run summon minecraft:enderman -916.5 39 1951.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}
execute as @a[scores={hotbar_index=16,spawnegg_index=6,cave_s_count=..2}] run summon minecraft:cave_spider -916.5 39 1951.00 {NoGravity:1b, Invulnerable:1b, NoAI:1b, Silent:1b,}
execute as @a[scores={hotbar_index=16,spawnegg_index=7,minecart_count=..2}] run summon minecraft:chest_minecart -916.5 39 1951.00 {NoGravity:1b, Invulnerable:1b, Silent:1b,}

execute as @a[scores={hotbar_index=16,spawnegg_index=0,zombie_count=..2}] run scoreboard players add @s zombie_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=1,skeleton_count=..2}] run scoreboard players add @s skeleton_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=2,creeper_count=..2}] run scoreboard players add @s creeper_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=3,spider_count=..2}] run scoreboard players add @s spider_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=4,bat_count=..2}] run scoreboard players add @s bat_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=5,enderman_count=..2}] run scoreboard players add @s enderman_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=6,cave_s_count=..2}] run scoreboard players add @s cave_s_count 1
execute as @a[scores={hotbar_index=16,spawnegg_index=7,minecart_count=..2}] run scoreboard players add @s minecart_count 1

execute as @a[scores={hotbar_index=16,spawnegg_index=0}] run scoreboard players set Zombies: workshop_sb 17
execute as @a[scores={hotbar_index=16,spawnegg_index=1}] run scoreboard players set Skeletons: workshop_sb 16
execute as @a[scores={hotbar_index=16,spawnegg_index=2}] run scoreboard players set Creepers: workshop_sb 15
execute as @a[scores={hotbar_index=16,spawnegg_index=3}] run scoreboard players set Spiders: workshop_sb 14
execute as @a[scores={hotbar_index=16,spawnegg_index=4}] run scoreboard players set Bats: workshop_sb 13
execute as @a[scores={hotbar_index=16,spawnegg_index=5}] run scoreboard players set Endermen: workshop_sb 12
execute as @a[scores={hotbar_index=16,spawnegg_index=6}] run scoreboard players set piders: workshop_sb 11
execute as @a[scores={hotbar_index=16,spawnegg_index=7}] run scoreboard players set Minecarts: workshop_sb 10

function practice:updatebossbar
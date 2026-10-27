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

function practice:updatebossbar
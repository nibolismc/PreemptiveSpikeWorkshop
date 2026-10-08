playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 0.75

execute as @a[scores={chest_index=0,chests_in_front=..7}] run scoreboard players add @a chests_in_front 1
execute as @a[scores={chest_index=1,chests_behind=..7}] run scoreboard players add @a chests_behind 1

function practice:add_chests

function practice:updatebossbar
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 1 2

function practice:remove_chests

execute as @a[scores={chest_index=0,chests_in_front=1..}] run scoreboard players remove @a chests_in_front 1
execute as @a[scores={chest_index=1,chests_behind=1..}] run scoreboard players remove @a chests_behind 1

function practice:updatebossbar
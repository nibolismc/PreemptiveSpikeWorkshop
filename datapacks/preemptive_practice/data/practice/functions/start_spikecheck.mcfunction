tp @a -915.50 42.00 1936.50 360 0
playsound minecraft:ui.toast.in player @a -915.50 42.00 1936.50 10
scoreboard players set @a hotbar_index 1

gamemode survival @a

#bossbar

bossbar set practice:chests_front players @a
bossbar set practice:mob_spawner players @a
bossbar set practice:chests_behind players @a

bossbar set practice:chests_front visible true
bossbar set practice:mob_spawner visible true
bossbar set practice:chests_behind visible true
bossbar set practice:number_of_rounds visible false
bossbar set practice:round visible false

function practice:updatebossbar
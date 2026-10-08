tp @a -787.50 42.00 1936.50 360 0
playsound minecraft:ui.toast.in player @a -787.50 42.00 1936.50 10
scoreboard players set @a hotbar_index 1

#bossbar

bossbar set practice:chests_front visible true
bossbar set practice:mob_spawner visible true
bossbar set practice:chests_behind visible true

function practice:updatebossbar
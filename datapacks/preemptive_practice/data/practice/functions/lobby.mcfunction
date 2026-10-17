tp @a -594.51 39.00 1921.55 540.08 1.90
playsound minecraft:ui.toast.out player @a -594.51 39.00 1921.55 10
scoreboard players set @a hotbar_index 0
scoreboard players set @a actionbar 0

bossbar set practice:chests_front visible false
bossbar set practice:mob_spawner visible false
bossbar set practice:chests_behind visible false
bossbar set practice:number_of_rounds visible false
bossbar set practice:round visible false

gamemode survival @a

scoreboard players set @a deaths 0

bossbar set practice:chests_front players @a
bossbar set practice:mob_spawner players @a
bossbar set practice:chests_behind players @a
bossbar set practice:number_of_rounds players @a
bossbar set practice:round players @a
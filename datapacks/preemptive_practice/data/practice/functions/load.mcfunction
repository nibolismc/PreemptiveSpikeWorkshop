scoreboard objectives add hotbar_index dummy
scoreboard players set @a hotbar_index 1

scoreboard objectives add placed_head minecraft.used:minecraft.player_head

effect give @a minecraft:resistance 1000000 255 true
effect give @a minecraft:saturation 1000000 255 true

scoreboard objectives add actionbar dummy
scoreboard players set @a actionbar 0

scoreboard objectives add deaths deathCount

#chests amount
scoreboard objectives add chests_in_front dummy
scoreboard objectives add chests_behind dummy
scoreboard players set @a chests_in_front 0
scoreboard players set @a chests_behind 0

scoreboard objectives add chest_index dummy

#bossbar

bossbar add practice:chests_front {"text":"Chests in front","color":"gold"}
bossbar add practice:mob_spawner {"text":"Silverfish Spawner","color":"aqua"}
bossbar add practice:chests_behind {"text":"Chests behind","color":"gold"}
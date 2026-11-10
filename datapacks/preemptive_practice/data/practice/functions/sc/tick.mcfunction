# called every tick from tick.mcfunction (one line: function practice:sc/tick)

execute as @e[type=item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 21 run function practice:drop/sc_back
execute as @e[type=item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:'{"text":"Back","color":"gray","italic":false}'}}}}] at @s run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:'{"text":"Next","color":"green","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 21 run function practice:drop/sc_next
execute as @e[type=item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:'{"text":"Next","color":"green","italic":false}'}}}}] at @s run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:'{"text":"Finish","color":"gold","italic":false}'}}}}] at @s if score @p[distance=..2] hotbar_index matches 21 run function practice:drop/sc_finish
execute as @e[type=item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:'{"text":"Finish","color":"gold","italic":false}'}}}}] at @s run kill @s

execute as @a[scores={hotbar_index=21}] run function practice:hotbar/sc_run
execute as @a[scores={hotbar_index=21}] run function practice:place_starterstaircase_sc
execute as @a[scores={actionbar=32}] run title @s actionbar [{"score":{"name":"#step","objective":"sc_cfg"},"color":"green"},{"text":"/","color":"white"},{"score":{"name":"#total","objective":"sc_cfg"},"color":"gold"}]

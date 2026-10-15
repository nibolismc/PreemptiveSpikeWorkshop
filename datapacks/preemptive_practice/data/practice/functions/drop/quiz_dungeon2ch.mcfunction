playsound minecraft:block.lever.click player @a ~ ~ ~ 5 0.9

scoreboard players operation #temp quiz_tmp = #force_2_ch quiz_tmp
execute if score #temp quiz_tmp matches 1 run scoreboard players set #force_2_ch quiz_tmp 0
execute if score #temp quiz_tmp matches 0 run scoreboard players set #force_2_ch quiz_tmp 1
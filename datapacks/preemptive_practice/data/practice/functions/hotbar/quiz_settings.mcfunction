replaceitem entity @s hotbar.0 minecraft:oak_sign{display:{Name:'{"text":"Number of rounds","color":"gold","italic":false}'}} 1
replaceitem entity @a hotbar.1 minecraft:spawner{display:{Name:'{"text":"Spawners","color":"aqua","italic":false}'}} 1
#replaceitem entity @a hotbar.2 minecraft:paper{display:{Name:'{"text":"Summary","color":"yellow","italic":false}'}} 1

execute if score #enabled summary_state matches 1 run replaceitem entity @a hotbar.2 minecraft:lime_concrete{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:1,display:{Name:'{"text":"Show summary","color":"green","italic":false}'}} 1
execute if score #enabled summary_state matches 0 run replaceitem entity @a hotbar.2 minecraft:red_terracotta{display:{Name:'{"text":"Show summary","color":"red","italic":false}'}} 1

execute if score #state round_result matches 1 run replaceitem entity @a hotbar.3 minecraft:lime_concrete{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:1,display:{Name:'{"text":"Show round results","color":"green","italic":false}'}} 1
execute if score #state round_result matches 0 run replaceitem entity @a hotbar.3 minecraft:red_terracotta{display:{Name:'{"text":"Show round results","color":"red","italic":false}'}} 1

execute if score #state corr_answer matches 1 run replaceitem entity @a hotbar.4 minecraft:lime_concrete{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:1,display:{Name:'{"text":"Show correct answers","color":"green","italic":false}'}} 1
execute if score #state corr_answer matches 0 run replaceitem entity @a hotbar.4 minecraft:red_terracotta{display:{Name:'{"text":"Show correct answers","color":"red","italic":false}'}} 1

execute if score #force_2_ch quiz_tmp matches 1 run replaceitem entity @a hotbar.5 minecraft:lime_concrete{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:1,display:{Name:'{"text":"Spawn dungeon chests","color":"green","italic":false}'}} 1
execute if score #force_2_ch quiz_tmp matches 0 run replaceitem entity @a hotbar.5 minecraft:red_terracotta{display:{Name:'{"text":"Spawn dungeon chests","color":"red","italic":false}'}} 1

replaceitem entity @s hotbar.6 minecraft:air 1
replaceitem entity @s hotbar.7 minecraft:air 1
replaceitem entity @a hotbar.8 minecraft:black_banner{HideFlags:32,display:{Name:'{"text":"Back","color":"gray","italic":false}'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:0},{Pattern:vhr,Color:0},{Pattern:br,Color:15},{Pattern:tr,Color:15},{Pattern:tts,Color:15},{Pattern:bts,Color:15},{Pattern:bo,Color:15}]}} 1

scoreboard players set @a actionbar 6
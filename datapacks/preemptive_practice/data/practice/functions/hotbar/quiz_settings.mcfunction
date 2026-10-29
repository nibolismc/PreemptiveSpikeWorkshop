replaceitem entity @s hotbar.0 minecraft:oak_sign{display:{Name:'{"text":"Number of rounds","color":"gold","italic":false}',Lore:[ '{"text":""}', '{"text":"Change from 1 to 100","color":"white","italic":true}', '{"text":"Play infinite mode beyond that","color":"white","italic":true}']}} 1
replaceitem entity @a hotbar.1 minecraft:spawner{display:{Name:'{"text":"Spawners","color":"aqua","italic":false}',Lore:['{"text":""}',  '{"text":"Choose which fake spikes show up during the quiz","color":"white","italic":true}']}} 1
replaceitem entity @a hotbar.2 minecraft:comparator{QuizSetting:"overlap",display:{Name:'{"text":"Overlapping spikes","color":"dark_aqua","italic":false}',Lore:[ '{"text":""}', '{"text":"Change the maximum number of spawners from 1 to 3","color":"white","italic":true}']}} 1
replaceitem entity @a hotbar.3 minecraft:player_head{display:{Name:'{"text":"T value","color":"white","italic":false}',Lore:[ '{"text":""}', '{"text":"Edit the total number of entities","color":"white","italic":true}']},SkullOwner:{Id:[I;531,631,731,831],Name:"White_T",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTNmYjUwZmU3NTU5YmM5OWYxM2M0NzM1NmNjZTk3ZmRhM2FhOTIzNTU3ZmI1YmZiMTdjODI1YWJmNGIxZDE5In19fQ=="}]}}}

#replaceitem entity @a hotbar.2 minecraft:paper{display:{Name:'{"text":"Summary","color":"yellow","italic":false}'}} 1

replaceitem entity @a hotbar.4 minecraft:redstone_lamp{display:{Name:'{"text":"More settings","color":"yellow","italic":false}'}} 1

replaceitem entity @a hotbar.5 minecraft:air 1
replaceitem entity @a hotbar.6 minecraft:air 1
replaceitem entity @a hotbar.7 minecraft:air 1

replaceitem entity @a hotbar.8 minecraft:black_banner{HideFlags:32,display:{Name:'{"text":"Back","color":"gray","italic":false}'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:0},{Pattern:vhr,Color:0},{Pattern:br,Color:15},{Pattern:tr,Color:15},{Pattern:tts,Color:15},{Pattern:bts,Color:15},{Pattern:bo,Color:15}]}} 1

scoreboard players set @a actionbar 6
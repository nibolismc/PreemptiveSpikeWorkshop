# Back (not at the first configuration)
execute if score #step sc_cfg matches 2.. run replaceitem entity @s hotbar.0 minecraft:white_banner{HideFlags:32,display:{Name:'{"text":"Back","color":"gray","italic":false}'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:15},{Pattern:vhr,Color:15},{Pattern:br,Color:0},{Pattern:tr,Color:0},{Pattern:tts,Color:0},{Pattern:bts,Color:0},{Pattern:bo,Color:0}]}} 1
execute if score #step sc_cfg matches ..1 run replaceitem entity @s hotbar.0 minecraft:air 1

replaceitem entity @s hotbar.1 minecraft:air 1
replaceitem entity @s hotbar.2 minecraft:air 1
replaceitem entity @s hotbar.3 minecraft:air 1
replaceitem entity @s hotbar.4 minecraft:air 1
replaceitem entity @s hotbar.5 minecraft:air 1
replaceitem entity @s hotbar.6 minecraft:air 1
replaceitem entity @s hotbar.7 minecraft:air 1

# Next, at the last configuration Finish
execute unless score #step sc_cfg >= #total sc_cfg run replaceitem entity @s hotbar.8 minecraft:white_banner{HideFlags:32,display:{Name:'{"text":"Next","color":"green","italic":false}'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:15},{Pattern:vh,Color:15},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:tts,Color:0},{Pattern:bts,Color:0},{Pattern:bo,Color:0}]}} 1
execute if score #step sc_cfg >= #total sc_cfg run replaceitem entity @s hotbar.8 minecraft:white_banner{HideFlags:32,display:{Name:'{"text":"Finish","color":"gold","italic":false}'},BlockEntityTag:{Patterns:[{Pattern:mr,Color:15},{Pattern:vh,Color:15},{Pattern:bl,Color:0},{Pattern:tl,Color:0},{Pattern:tts,Color:0},{Pattern:bts,Color:0},{Pattern:bo,Color:0}]}} 1

scoreboard players set @s actionbar 32

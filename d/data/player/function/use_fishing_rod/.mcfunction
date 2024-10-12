scoreboard players add @s player.use_fishing_rod_toggle 1
execute if score @s player.use_fishing_rod_toggle matches 3.. run scoreboard players reset @s player.use_fishing_rod_toggle

execute anchored eyes positioned ^ ^ ^ run kill @n[type=fishing_bobber]

execute if score @s player.use_fishing_rod_toggle matches 1 run execute summon armor_stand run function player:use_fishing_rod/summon_fishing_bobber
execute if score @s player.use_fishing_rod_toggle matches 2 run kill @s

scoreboard players reset @s player.use_fishing_rod
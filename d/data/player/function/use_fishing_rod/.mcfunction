scoreboard players add @s player.use_fishing_rod_toggle 1

execute anchored eyes positioned ^ ^ ^ run kill @n[type=fishing_bobber]

execute if score @s player.use_fishing_rod_toggle matches 1 run execute summon armor_stand run function player:use_fishing_rod/summon_fishing_bobber
execute if score @s player.use_fishing_rod_toggle matches 2 as @e[tag=FishingBobber] if score @s entity.fishing_bobber.owner = @p uid run kill @s

scoreboard players reset @s player.use_fishing_rod

execute if score @s player.use_fishing_rod_toggle matches 2.. run scoreboard players reset @s player.use_fishing_rod_toggle
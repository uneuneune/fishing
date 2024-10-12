scoreboard players operation @s entity.fishing_bobber.owner = @p uid

execute as @p rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["MotionSource"]}

execute positioned 0.0 0.0 0.0 run data modify entity @s Motion set from entity @n[tag=MotionSource] Pos

execute positioned 0.0 0.0 0.0 run kill @n[tag=MotionSource]
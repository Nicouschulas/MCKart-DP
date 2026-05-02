scoreboard players set @s mck_buyconfirm -1

scoreboard players operation in mck_db_bit = @s mck_goods_id
function mck:database/good_find
execute if data storage databases.output.data run function mck:player/buy/check
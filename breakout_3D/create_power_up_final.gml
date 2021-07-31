#define create_powerup

if room=rm_level_editor exit;
if random(10)<1
{
    instance_create(x+32,y+16,choose(obj_powerup_scorebonus,obj_powerup_3ball));
}
else
//if random(50)<1
if random(20)<1
{
    instance_create(x+32,y+16,obj_powerup_fire);
}

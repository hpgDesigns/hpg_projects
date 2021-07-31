#define create_powerup


if random(5)<1
{
    instance_create(x+32,y+16,choose(obj_powerup_scorebonus,obj_powerup_fire,obj_powerup_3ball));
}

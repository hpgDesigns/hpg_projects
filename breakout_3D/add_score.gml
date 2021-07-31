#define add_score
if room !=rm_level_editor
{
    if object_index=obj_block_invisible
    {
        score+=25;
    }
    else
    if object_index=obj_block_spike
    {
        score+=100;
    }
    else
    if object_index=obj_powerup_scorebonus
    {
        score+=1000;
        var ii;
        ii=instance_create(320,100,obj_score_1000);
        ii.image_index=0;
    }
    else
    if object_index=obj_powerup_fire
    {
        score-=1000;
        var ii;
        ii=instance_create(320,100,obj_score_1000);
        ii.image_index=1;
    }
    else
    if object_index=obj_powerup_3ball
    {
        score+=75;
    }
    else
    {
        score+=50;
    }
}

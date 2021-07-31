#define block_break_effect
if object_index=obj_block
{
var ii;
ii=instance_create(x+32,y+8,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;

ii=instance_create(x+40,y+8,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;

ii=instance_create(x+24,y+24,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;

ii=instance_create(x+24,y+24,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;
}
else
if object_index=obj_block_invisible
{
var ii;
ii=instance_create(x+32,y+8,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;
ii.my_alpha=0.2;

ii=instance_create(x+40,y+8,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;
ii.my_alpha=0.2;

ii=instance_create(x+24,y+24,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;
ii.my_alpha=0.2;

ii=instance_create(x+24,y+24,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;
ii.my_alpha=0.2;
}
else
{
    var ii;
ii=instance_create(x+32,y+8,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;

ii=instance_create(x+40,y+8,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;

ii=instance_create(x+24,y+24,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;

ii=instance_create(x+24,y+24,obj_block_particle);
ii.tex=tex;
ii.zheight=8;
ii.my_color=my_color;
}

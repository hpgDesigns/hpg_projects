#define get_powerup_effect
var ii;
ii=instance_create(x+8,y+8,obj_block_particle);
ii.tex=tex;
ii.zheight=28;
ii.size=8;

ii=instance_create(x+24,y+8,obj_block_particle);
ii.tex=tex;
ii.zheight=28;
ii.size=8;

ii=instance_create(x+8,y+24,obj_block_particle);
ii.tex=tex;
ii.zheight=28;
ii.size=8;

ii=instance_create(x+24,y+24,obj_block_particle);
ii.tex=tex;
ii.zheight=28;
ii.size=8;

///#define table_create

global.model_table = d3d_model_create();

d3d_model_block(global.model_table,0.0000,0.0000,14.0000,32.0000,32.0000,16.0000,1.0000,1.0000);

d3d_model_block(global.model_table,2.0000,2.0000,0.0000,4.0000,4.0000,14.0000,1.0000,1.0000);

d3d_model_block(global.model_table,2.0000,2.0000,0.0000,4.0000,4.0000,14.0000,1.0000,1.0000);

d3d_model_block(global.model_table,2.0000,2.0000,0.0000,4.0000,4.0000,14.0000,1.0000,1.0000);

d3d_model_block(global.model_table,28.0000,28.0000,0.0000,30.0000,30.0000,14.0000,1.0000,1.0000);

d3d_model_block(global.model_table,29.0000,2.0000,0.0000,31.0000,4.0000,14.0000,1.0000,1.0000);

d3d_model_block(global.model_table,2.0000,28.0000,0.0000,4.0000,30.0000,14.0000,1.0000,1.0000);



//#define table_draw

draw_set_color(c_white);

d3d_model_draw(global.model_table,argument0,argument1,argument2,-1);



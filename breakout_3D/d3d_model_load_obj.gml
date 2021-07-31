#define d3d_model_load_obj
// function d3d_model_load_obj(filename)
// Description: Creates a GM model from a Wavefront OBJ file
// Author: Zoltan Percsich, 2010 - SilentWorks
// Copyright: All Rights Reserved
// Private and commercial usage: allowed
_tmd=d3d_model_create();_fp=file_text_open_read(argument0);_vtx1=ds_list_create();ds_list_clear(_vtx1);ds_list_add(_vtx1,0);
_vtx2=ds_list_create();ds_list_clear(_vtx2);ds_list_add(_vtx2,0);_vtx3=ds_list_create();ds_list_clear(_vtx3);ds_list_add(_vtx3,0);
_nm1=ds_list_create();ds_list_clear(_nm1);ds_list_add(_nm1,0);_nm2=ds_list_create();ds_list_clear(_nm2);ds_list_add(_nm2,0);
_nm3=ds_list_create();ds_list_clear(_nm3);ds_list_add(_nm3,0);_uvx=ds_list_create();ds_list_clear(_uvx);ds_list_add(_uvx,0);
_uvy=ds_list_create();ds_list_clear(_uvy);ds_list_add(_uvy,0);for(i=0;file_text_eof(_fp)==false;i+=1){_rw=file_text_read_string(_fp);
_rw=string_replace_all(_rw,"  "," ");if(string_char_at(_rw,1)=="v" && string_char_at(_rw,2)==" "){_rw=string_delete(_rw,1,string_pos(" ",_rw));
vx=real(string_copy(_rw,1,string_pos(" ",_rw)));_rw=string_delete(_rw,1,string_pos(" ",_rw));vy=real(string_copy(_rw,1,string_pos(" ",_rw)));
_rw=string_delete(_rw,1,string_pos(" ",_rw));vz=real(string_copy(_rw,1,string_length(_rw)));ds_list_add(_vtx1,vx);ds_list_add(_vtx2,vy);
ds_list_add(_vtx3,vz);}if(string_char_at(_rw,1)=="v" && string_char_at(_rw,2)=="n"){_rw=string_delete(_rw,1,string_pos(" ",_rw));
nx=real(string_copy(_rw,1,string_pos(" ",_rw)));_rw=string_delete(_rw,1,string_pos(" ",_rw));ny=real(string_copy(_rw,1,string_pos(" ",_rw)));
_rw=string_delete(_rw,1,string_pos(" ",_rw));nz=real(string_copy(_rw,1,string_length(_rw)));ds_list_add(_nm1,nx);ds_list_add(_nm2,ny);
ds_list_add(_nm3,nz);}if(string_char_at(_rw,1)=="v" && string_char_at(_rw,2)=="t"){_rw=string_delete(_rw,1,string_pos(" ",_rw));
tx=real(string_copy(_rw,1,string_pos(" ",_rw)));_rw=string_delete(_rw,1,string_pos(" ",_rw));ty=real(string_copy(_rw,1,string_length(_rw)));
ds_list_add(_uvx,tx);ds_list_add(_uvy,ty);}if(string_char_at(_rw,1)=="f" && string_char_at(_rw,2)==" "){_rw=string_replace_all(_rw,"  "," ");
_rw=string_delete(_rw,1,string_pos(" ",_rw));if(string_char_at(_rw,string_length(_rw))==" ")_rw=string_copy(_rw,0,string_length(_rw)-1);
_fcn=string_count(" ",_rw);fsn=0;_fcs[0]=0;for(fc=0;fc<_fcn;fc +=1){f=string_copy(_rw,1,string_pos(" ",_rw));
_rw=string_delete(_rw,1,string_pos(" ",_rw));_fcs[fsn]=f;fsn+=1;};f=string_copy(_rw,1,string_length(_rw));_fcs[fsn]=f;
d3d_model_primitive_begin(_tmd,pr_trianglefan);for(f=_fcn;f>0 - 1;f-=1){if(string_count("/",_fcs[f])==0){f_ix=_fcs[f];
t_ix=-1;n_ix=-1;};if(string_count("/",_fcs[f])==1){f_ix=string_copy(_fcs[f],1,string_pos("/",_fcs[f])-1);
_fcs[f]=string_delete(_fcs[f],1,string_pos("/",_fcs[f]));t_ix=string_copy(_fcs[f],1,string_length(_fcs[f]));n_ix=-1;}
if(string_count("/",_fcs[f])==2 && string_count("//",_fcs[f])==0){f_ix=string_copy(_fcs[f],1,string_pos("/",_fcs[f])-1);
_fcs[f]=string_delete(_fcs[f],1,string_pos("/",_fcs[f]));t_ix=string_copy(_fcs[f],1,string_pos("/",_fcs[f])-1);
_fcs[f]=string_delete(_fcs[f],1,string_pos("/",_fcs[f]));n_ix=string_copy(_fcs[f],1,string_length(_fcs[f]));}
if(string_count("/",_fcs[f])==2 && string_count("//",_fcs[f])==1){_fcs[f]=string_replace(_fcs[f],"//","/");
f_ix=string_copy(_fcs[f],1,string_pos("/",_fcs[f])-1);_fcs[f]=string_delete(_fcs[f],1,string_pos("/",_fcs[f]));t_ix=-1;
n_ix=string_copy(_fcs[f],1,string_length(_fcs[f]));};vx=ds_list_find_value(_vtx1,floor(real(f_ix)));vy=ds_list_find_value(_vtx2,floor(real(f_ix)));
vz=ds_list_find_value(_vtx3,floor(real(f_ix)));if(floor(real(n_ix))!=-1 && ds_list_size(_nm1)>=1){nx=ds_list_find_value(_nm1,floor(real(n_ix)));
ny=ds_list_find_value(_nm2,floor(real(n_ix)));nz=ds_list_find_value(_nm3,floor(real(n_ix)));}else{nx=0;ny=0;nz=0;}
if(floor(real(t_ix))!=-1 && ds_list_size(_uvx)>=1){tx=ds_list_find_value(_uvx,floor(real(t_ix)));ty=ds_list_find_value(_uvy,floor(real(t_ix)));
}else{tx=0;ty=0;};d3d_model_vertex_normal_texture(_tmd,vx,vz,vy,nx,nz,ny,tx,1-ty);};d3d_model_primitive_end(_tmd);};
file_text_readln(_fp);};ds_list_destroy(_vtx1);ds_list_destroy(_vtx2);ds_list_destroy(_vtx3);ds_list_destroy(_nm1);ds_list_destroy(_nm2);
ds_list_destroy(_nm3);ds_list_destroy(_uvx);ds_list_destroy(_uvy);file_text_close(_fp);return _tmd;


#define save_level
var name_given;
name_given=argument0;
save_name=get_save_filename("3d breakout level|*.lvl",working_directory+"\levels\"+name_given+".lvl"); // get the file name...
if save_name !="" //make sure it has the correct extension..
{
    if filename_ext(save_name)=".lvl" // it does?
    {
        file=file_text_open_write(save_name); // then open it!
    }
    else
    {
        file=file_text_open_write(save_name+".lvl"); // otherwise, pop the extention on the end, and open it anyway.
    }
    //save level
    var inst;
    for (i=0; i < instance_count; i+=1)
    {
        inst=instance_id[i]
        if instance_exists(inst)
        {
            if (object_get_parent(inst.object_index) == obj_block_parent)
            {
                file_text_write_real(file,inst.x);
                file_text_writeln(file);
                file_text_write_real(file,inst.y);
                file_text_writeln(file);
                file_text_write_real(file,inst.z);
                file_text_writeln(file);
                file_text_write_real(file,inst.object_index);
                file_text_writeln(file);
                file_text_write_string(file,string(inst.my_color));
                file_text_writeln(file);
            }
        }
    }
    //close file
    file_text_close(file);
    show_message("Your level has now been saved.");
}

